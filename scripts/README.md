# Scripts

Utility scripts for managing the site.

## Publishing to Nostr

The `nostrdraft.sh` script converts Jekyll blog posts to [NIP-23](https://nips.nostr.com/23) long-form drafts (kind 30024) and publishes them to Nostr.

### Prerequisites

```bash
# macOS
brew install nak jq

# Verify ruby is available (pre-installed on macOS)
ruby --version
```

### Usage

**Option 1: Use a .env file (recommended)**

Create a `scripts/.env` file with your secret key:
```bash
NOSTR_SECRET_KEY=nsec1...
RELAYS="wss://relay.dergigi.com wss://relay.damus.io wss://nos.lol"
```

Then run the script:
```bash
scripts/nostrdraft.sh collections/_posts/2020-06-23-dare.markdown
```

**Option 2: Set environment variables directly**

```bash
export NOSTR_SECRET_KEY="nsec1..."
scripts/nostrdraft.sh collections/_posts/2020-06-23-dare.markdown
```

**Generate JSON draft only (no publish):**
```bash
# Without NOSTR_SECRET_KEY set, script only generates JSON
scripts/nostrdraft.sh collections/_posts/2020-06-23-dare.markdown
# Output: tmp/nostr-drafts/2020-06-23-dare.json
```

**Batch process all posts:**
```bash
# With .env file configured, simply:
find collections/_posts -name '*.markdown' -print0 | xargs -0 -n1 scripts/nostrdraft.sh
```

### How it works

The script:
1. Parses Jekyll front matter (`title`, `description`, `image`, `tags`, `date`)
2. Constructs a NIP-23 event with proper metadata tags
3. Uses the canonical URL path as the `d` tag for edit tracking
4. Saves JSON to `tmp/nostr-drafts/` for review
5. Publishes to Nostr with `--confirm` (requires manual approval)

See [NIP-23](https://nips.nostr.com/23) for the long-form content specification.

### Environment Variables

- `NOSTR_SECRET_KEY` - Your nostr secret key (nsec1..., hex, or bunker://...). If unset, script only generates JSON without publishing.
- `RELAYS` - Space-separated relay URLs (optional; defaults to nak's configured relays)
- `OUT_DIR` - Directory for JSON drafts (default: tmp/nostr-drafts)

