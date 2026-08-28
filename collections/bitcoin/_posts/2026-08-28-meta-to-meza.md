---
layout: post
title: META to MEZA
subtitle: Make Everything ZapAble
description: Make Everything ZapAble
date: 2026-08-28 14:44:00
blocktime: 964441
redirect_from: /meza
author: Gigi
category: nostr
tags:
- Writing
- nostr
---

If nostr is the new internet, one question that arises quite naturally is
how to bridge the old to the new, and vice-versa.

I've been working on [the Android version of Boris](/rebuilding) recently,
mostly as a fun experiment on the side (If I'm entirely honest I've been
doing it as therapy, but let's not get into that). As a consequence, my
shower thoughts have revolved around web content a lot (blog posts, articles, podcasts,
highlights, transcripts, links, quotes, and the like). One of said shower
thoughts was "How can we make everything zappable?"

To my delight, lots of prior work exists. The answer, of course, is meta
tags.

> `<link>` tags with `rel="me"` or `rel="author"` can be used to assign
> authorship of webpages to Nostr profiles.
>
> <cite>fiatjaf, [NIP-21][nip21]</cite>

```html
<link rel="me" href="nostr:npub1..." />
<link rel="author" href="nostr:npub1..." />
<link rel="alternate" href="nostr:naddr1..." />
```

As of [version 1.5.18][boris-release], [boris android][boris-android] supports all of the above. Which
means: if you post a regular [blog post](/writing) that has the above meta tags
somewhere, boris will be able to pick them up, determine your npub, and
include you in the zap splits.

Simple. Just the way I like it.

[nip21]: https://github.com/nostr-protocol/nips/blob/master/21.md
[boris-release]: https://github.com/dergigi/boris-android/releases/tag/v1.5.18
[boris-android]: https://zapstore.dev/apps/org.dergigi.boris
