---
layout: page
title: Lesson 5
subtitle: The problem of identity
categories: [bitcoin, lesson]
---

{% include lesson-toc.html %}

Quantum mechanics aside, locality is a non-issue in the physical world.
The question *"Where is X?"* can be answered in a meaningful way, no
matter if X is a person or an object. In the digital world, the question
of *where* is already a tricky one, but not impossible to answer. Where
are your emails, really? A bad answer would be "the cloud", which is
just someone else's computer. Still, if you wanted to track down every
storage device which has your emails on it you could, in theory, locate
them.

With bitcoin, the question of "where" is *really* tricky. Where,
exactly, are your bitcoins?

> "I opened my eyes, looked around, and asked the inevitable, the
> traditional, the lamentably hackneyed postoperative question: 'Where
> am l?'"
> <cite>[Daniel Dennett]</cite>

The problem is twofold: First, the distributed ledger is distributed by
full replication, meaning the ledger is everywhere. Second, there are no
bitcoins. Not only physically, but *technically*.

Bitcoin keeps track of a set of unspent transaction outputs, without
ever having to refer to an entity which represents a bitcoin. The
existence of a bitcoin is inferred by looking at the set of unspent
transaction outputs and calling every entry with a 100 million base
units a bitcoin.

> "Where is it, at this moment, in transit? [...] First, there are no
> bitcoins. There just aren't. They don't exist. There are ledger
> entries in a ledger that's shared [...] They don't exist in any
> physical location. The ledger exists in every physical location,
> essentially. Geography doesn't make sense here --- it is not going to
> help you figuring out your policy here."
> <cite>[Peter Van Valkenburgh]</cite>

So, what do you actually own when you say *"I have a bitcoin"* if there
are no bitcoins? Well, remember all these strange words which you were
forced to write down by the wallet you used? Turns out these magic words
are what you own: [a magic spell] which can be used to add some entries
to the public ledger --- the keys to "move" some bitcoins. This is why,
for all intents and purposes, your private keys *are* your bitcoins. If
you think I'm making all of this up feel free to send me your private
keys.

Bitcoin taught me that locality is a tricky business.
