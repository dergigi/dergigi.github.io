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

**Generate JSON draft (no publish):**
```bash
scripts/nostrdraft.sh collections/_posts/2020-06-23-dare.markdown
# Output: tmp/nostr-drafts/2020-06-23-dare.json
```

**Publish to Nostr with confirmation:**
```bash
export NOSTR_SECRET_KEY="nsec1..."  # your nostr secret key
scripts/nostrdraft.sh collections/_posts/2020-06-23-dare.markdown
```

**Batch process all posts:**
```bash
export NOSTR_SECRET_KEY="nsec1..."
find collections/_posts -name '*.markdown' -print0 | xargs -0 -n1 scripts/nostrdraft.sh
```

**Custom relays:**
```bash
export RELAYS="wss://relay.dergigi.com wss://relay.damus.io wss://nos.lol"
scripts/nostrdraft.sh collections/_posts/2020-06-23-dare.markdown
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

