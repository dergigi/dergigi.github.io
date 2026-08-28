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



[nip21]: https://github.com/nostr-protocol/nips/blob/master/21.md
[nip19]: https://github.com/nostr-protocol/nips/blob/master/19.md
[pr1897]: https://github.com/nostr-protocol/nips/pull/1897
[xfn]: https://gmpg.org/xfn/11
