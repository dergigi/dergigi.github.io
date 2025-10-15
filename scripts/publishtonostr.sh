#!/usr/bin/env bash
set -euo pipefail

# publishtonostr.sh - Publish Jekyll posts to Nostr as NIP-23 long-form content (kind 30023)
#
# Usage:
#   scripts/publishtonostr.sh PATH_TO_POST.markdown
#
# Environment Variables:
#   NOSTR_SECRET_KEY  Secret key for nak (nsec1..., hex, or bunker://...)
#                     If unset, script will only generate JSON without publishing.
#   RELAYS            Space-separated relay URLs (optional; defaults to nak's configured relays)
#   OUT_DIR           Directory for JSON events (default: tmp/nostr-events)
#
# Examples:
#   # Generate JSON only (no publish)
#   scripts/publishtonostr.sh collections/_posts/2020-06-23-dare.markdown
#
#   # Publish with confirmation
#   export NOSTR_SECRET_KEY="nsec1..."
#   scripts/publishtonostr.sh collections/_posts/2020-06-23-dare.markdown
#
#   # Batch process all posts
#   export NOSTR_SECRET_KEY="nsec1..."
#   find collections/_posts -name '*.markdown' -print0 | xargs -0 -n1 scripts/publishtonostr.sh
#
# Requirements: nak, jq, ruby

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_YML="$REPO_DIR/_config.yml"
OUT_DIR="${OUT_DIR:-$REPO_DIR/tmp/nostr-events}"
POST_FILE="${1:-}"

# Source .env file if it exists in the scripts directory
if [[ -f "$SCRIPT_DIR/.env" ]]; then
  set -a
  source "$SCRIPT_DIR/.env"
  set +a
fi

# Validate arguments
if [[ -z "$POST_FILE" ]]; then
  echo "Usage: $0 PATH_TO_POST.markdown" >&2
  echo "  Set NOSTR_SECRET_KEY env var to publish; otherwise only generates JSON." >&2
  exit 1
fi

# Check dependencies
if ! command -v jq >/dev/null 2>&1; then
  echo "Error: jq not found. Install with: brew install jq" >&2
  exit 1
fi
if ! command -v ruby >/dev/null 2>&1; then
  echo "Error: ruby not found." >&2
  exit 1
fi
if [[ -n "${NOSTR_SECRET_KEY:-}" ]] && ! command -v nak >/dev/null 2>&1; then
  echo "Error: nak not found. Install from https://github.com/fiatjaf/nak" >&2
  echo "  On macOS: brew install nak" >&2
  exit 1
fi

# Validate files exist
if [[ ! -f "$CONFIG_YML" ]]; then
  echo "Error: Config not found: $CONFIG_YML" >&2
  exit 1
fi
if [[ ! -f "$POST_FILE" ]]; then
  echo "Error: Post not found: $POST_FILE" >&2
  exit 1
fi

# Extract site URL from _config.yml
SITE_URL="$(ruby -ryaml -e 'c=YAML.safe_load(File.read(ARGV[0])); puts(c["url"] || "")' "$CONFIG_YML")"
if [[ -z "$SITE_URL" ]]; then
  echo "Error: Could not read 'url' from _config.yml" >&2
  exit 1
fi

# Parse Jekyll front matter and body into JSON
POST_JSON="$("$SCRIPT_DIR/jekyll_frontmatter.rb" read "$POST_FILE")"

# Extract front matter fields
TITLE="$(jq -r '.front_matter.title // empty' <<<"$POST_JSON")"
DESC="$(jq -r '.front_matter.description // empty' <<<"$POST_JSON")"
IMAGE_RAW="$(jq -r '.front_matter.image // empty' <<<"$POST_JSON")"
DATE_RAW="$(jq -r '.front_matter.date // empty' <<<"$POST_JSON")"
CATEGORY="$(jq -r '.front_matter.category // empty' <<<"$POST_JSON")"
TAGS_JSON="$(jq -c '(.front_matter.tags // []) | map(tostring)' <<<"$POST_JSON")"
BODY_RAW="$(jq -r '.body' <<<"$POST_JSON")"

# Parse filename: YYYY-MM-DD-slug.markdown
BASENAME="$(basename "$POST_FILE")"
YEAR="${BASENAME:0:4}"
MONTH="${BASENAME:5:2}"
DAY="${BASENAME:8:2}"
SLUG_EXT="${BASENAME:11}"
SLUG="${SLUG_EXT%.*}"

# Build post identifier for image paths (YYYY-MM-DD-slug)
POST_ID="${YEAR}-${MONTH}-${DAY}-${SLUG}"

# Convert Jekyll image includes to Markdown
# {% include image.html name="image.jpg" [caption="..."] %} -> ![](absolute-url-to-image)
# The Jekyll include builds path as: /assets/images/{category}/{post-id}/{name}
if [[ -n "$CATEGORY" ]]; then
  BODY_RAW="$(echo "$BODY_RAW" | perl -pe "
    s|{% include image\.html name=\"([^\"]+)\"[^}]*%}|![](${SITE_URL}/assets/images/${CATEGORY}/${POST_ID}/\$1)|g
  ")"
fi

# Convert relative Markdown images to absolute URLs, stripping hash fragments
# ![alt](/path/to/image.jpg#full) -> ![alt](https://site.com/path/to/image.jpg)
BODY_RAW="$(echo "$BODY_RAW" | perl -pe "
  s|!\[([^\]]*)\]\((/[^)#]+)(#[^)]+)?\)|![\$1](${SITE_URL}\$2)|g
")"

# Convert three consecutive dashes to em-dash
BODY_RAW="$(echo "$BODY_RAW" | sed 's/---/—/g')"

# Strip HTML tags from body (NIP-23: MUST NOT support adding HTML to Markdown)
# Replace <cite> tags with em-dash, then strip remaining HTML tags
BODY="$(echo "$BODY_RAW" | sed -E 's/<cite[^>]*>/—/g' | sed -E 's/<\/cite>//g' | sed -E 's/<\/?[a-zA-Z][^>]*>//g')"

# Convert double backslashes (markdown line breaks) to two spaces + newline
BODY="$(echo "$BODY" | perl -pe 's/\\\\$/  /')"

# Use date from front matter or filename
DATE_STR="${DATE_RAW:-$YEAR-$MONTH-$DAY}"
PUBLISHED_AT="$(ruby -e 'require "time"; puts Time.parse(ARGV[0]).to_i' "$DATE_STR" 2>/dev/null || echo "")"

if [[ -z "$PUBLISHED_AT" ]]; then
  echo "Error: Could not parse date from '$DATE_STR'" >&2
  exit 1
fi

# Build canonical path and URL
CANON_PATH="/$YEAR/$MONTH/$DAY/$SLUG/"
CANON_URL="${SITE_URL%/}${CANON_PATH}"

# Append footer with link to original article
BODY="${BODY}

---

This article first appeared on [dergigi.com](${CANON_URL})."

# Resolve image to absolute URL
if [[ -n "$IMAGE_RAW" ]]; then
  if [[ "$IMAGE_RAW" =~ ^https?:// ]]; then
    IMAGE_ABS="$IMAGE_RAW"
  else
    IMAGE_ABS="${SITE_URL%/}/${IMAGE_RAW#'/'}"
  fi
else
  IMAGE_ABS=""
fi

# d-tag: stable identifier for this article (using kebab-case slug from filename)
D_TAG="$SLUG"

# Build NIP-23 event JSON
EVENT_JSON="$(jq -n \
  --arg content "$BODY" \
  --arg d "$D_TAG" \
  --arg title "$TITLE" \
  --arg image "$IMAGE_ABS" \
  --arg summary "$DESC" \
  --arg published_at "$PUBLISHED_AT" \
  --arg canonical "$CANON_URL" \
  --argjson topics "$TAGS_JSON" '
  {
    content: $content,
    tags: (
      [["d", $d]] +
      (if ($title | length) > 0 then [["title", $title]] else [] end) +
      (if ($image | length) > 0 then [["image", $image]] else [] end) +
      (if ($summary | length) > 0 then [["summary", $summary]] else [] end) +
      (if ($published_at | length) > 0 then [["published_at", $published_at]] else [] end) +
      (if ($canonical | length) > 0 then [["r", $canonical]] else [] end) +
      ($topics | map(["t", .]))
    )
  }
')"

# Save JSON event
mkdir -p "$OUT_DIR"
OUT_FILE="$OUT_DIR/${YEAR}-${MONTH}-${DAY}-${SLUG}.json"
printf '%s\n' "$EVENT_JSON" > "$OUT_FILE"

echo "✓ Event JSON saved: $OUT_FILE"
echo "  Title: $TITLE"
echo "  d-tag: $D_TAG"
echo "  Canonical: $CANON_URL"

# Publish to Nostr if NOSTR_SECRET_KEY is set
if [[ -z "${NOSTR_SECRET_KEY:-}" ]]; then
  echo ""
  echo "Note: NOSTR_SECRET_KEY not set. To publish, set NOSTR_SECRET_KEY and re-run:"
  echo "  export NOSTR_SECRET_KEY='nsec1...'"
  echo "  $0 $POST_FILE"
  exit 0
fi

echo ""
echo "Signing event..."

# First, sign the event to get the signed JSON with pubkey
SIGNED_EVENT_FILE=$(mktemp)
trap 'rm -f "$SIGNED_EVENT_FILE"' EXIT

nak event -k 30023 < "$OUT_FILE" > "$SIGNED_EVENT_FILE"

# Extract pubkey from the signed event JSON
PUBKEY=$(jq -r '.pubkey // empty' < "$SIGNED_EVENT_FILE")

if [[ -n "$PUBKEY" ]]; then
  # Construct the naddr identifier
  NADDR=$(nak encode naddr --kind 30023 --pubkey "$PUBKEY" --identifier "$D_TAG" 2>/dev/null || echo "")
  if [[ -n "$NADDR" ]]; then
    echo ""
    echo "Event signed successfully!"
    echo "  naddr: $NADDR"
    echo "  Read on Nostr: https://read.withboris.com/a/$NADDR"
    echo ""
  fi
fi

echo "Publishing to Nostr as kind:30023 (long-form content) with confirmation..."

# Build relay arguments
read -r -a RELAY_ARR <<< "${RELAYS:-}"

# Publish the signed event with confirmation
if (( ${#RELAY_ARR[@]} > 0 )); then
  nak event --confirm "${RELAY_ARR[@]}" < "$SIGNED_EVENT_FILE"
else
  nak event --confirm < "$SIGNED_EVENT_FILE"
fi

echo ""
echo "✓ Published to Nostr!"

# Update the post file with the naddr link in front matter
if [[ -n "$NADDR" ]]; then
  BORIS_URL="https://read.withboris.com/a/$NADDR"
  echo ""
  echo "Updating post front matter with Nostr link..."
  "$SCRIPT_DIR/jekyll_frontmatter.rb" update "$POST_FILE" "updated_version" "$BORIS_URL"
  
  # Commit the frontmatter change
  echo ""
  echo "Committing frontmatter update..."
  git add "$POST_FILE"
  git commit -m "chore: add Nostr reader link to $(basename "$POST_FILE")" \
    -m "Added updated_version: $BORIS_URL"
  echo "✓ Changes committed"
fi

