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

I've been working on the Android version of Boris recently, mostly as a fun
experiment on the side (If I'm entirely honest I've been doing it as
therapy, but let's not get into that). As a consequence, my shower thoughts
have revolved around web content a lot (blog posts, articles, podcasts,
highlights, transcripts, links, quotes, and the like). One of said shower
thoughts was "How can we make everything zappable?"

To my delight, lots of prior work exists. The answer, of course, is meta
tags.

> This NIP standardizes the usage of a common URI scheme for maximum
> interoperability and openness in the network.
>
> The scheme is `nostr:`.
>
> The identifiers that come after are expected to be the same as those
> defined in [NIP-19][nip19] (except `nsec`).
>
> <cite>[NIP-21][nip21]</cite>



> `<link>` tags with `rel="alternate"` can be used to associate webpages
> to Nostr events, in cases where the same content is served via the two
> mediums (for example, a web server that exposes Markdown articles both
> as HTML pages and as `kind:30023` events served under itself as a relay
> or through some other relay).
>
> Likewise, `<link>` tags with `rel="me"` or `rel="author"` can be used
> to assign authorship of webpages to Nostr profiles.
>
> <cite>[NIP-21][nip21], Linking HTML pages to Nostr entities</cite>

```html
<head>
  <link rel="alternate" href="nostr:naddr1..." />
  <link rel="me" href="nostr:nprofile1..." />
</head>
```



> There are parsers out there that look for `rel="me"` already and I
> wouldn't mind if they got a URI starting with `nostr:` as a prefix.
>
> That prefix already serves to differentiate stuff anyway, you can
> easily query the DOM with
> `document.querySelector('[rel="me"][href^="nostr:"]')` or
> `document.querySelector('[rel="alternate"][href^="nostr:"]')`.
>
> <cite>fiatjaf, [NIP PR #1897][pr1897]</cite>



> I actually prefer "author" on article pages.
>
> Because the author might not be me (or the publisher or owner of the
> website or domain). `rel=me` is defined [here][xfn] for personal web
> pages. Also, for articles, "author" is more explicit IMO.
>
> <cite>raucao, [NIP PR #1897][pr1897]</cite>



> me: A link to yourself at a different URL. Exclusive of all other XFN
> values. Required symmetric.
>
> <cite>[XFN 1.1][xfn]</cite>

As of version 1.15.18, boris android supports all of the above. Which
means: if you post a regular blog post that has the above meta tags
somewhere, boris will be able to pick them up, determine your npub, and
include you in the zap splits.

Simple. Just the way I like it.

[nip21]: https://github.com/nostr-protocol/nips/blob/master/21.md
[nip19]: https://github.com/nostr-protocol/nips/blob/master/19.md
[pr1897]: https://github.com/nostr-protocol/nips/pull/1897
[xfn]: https://gmpg.org/xfn/11
