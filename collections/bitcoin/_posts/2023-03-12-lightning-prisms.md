---
layout: post
title: "Lightning Prisms"
description: "Thoughts on the automatic splitting of sat flows."
date: 2023-03-12
blocktime: 780463
image: /assets/images/prism.jpg
redirect_from: /prism
author: Gigi
category: bitcoin
favorite: false
tags:
 - Bitcoin
 - Writing
 - nostr
---

One aspect that is still massively under-utilized is the programmability
of Bitcoin. While simple things like scheduled payments and automated
payment splits do exist, we are undoubtedly still trapped in
conventional thinking when it comes to the flow of sats.

I'd like to share a simple idea that was shared with me a couple of
months ago in the hopes that it will spread far and wide and, in the
best case, that someone will just go ahead and implement it. (Or a
better version of it.)

Here is the idea:

{% include image.html name="lightning-prism.png" %}

All credit to [Mr. Kukks](https://nostr.directory/p/MrKukks), who is now
officially out of time[^fn-time-up] to implement it himself.

[^fn-time-up]: I promised Kukks not to talk about it for a couple of weeks so he could go ahead and implement it, but he was preoccupied with [improving everyone's privacy](https://nitter.at/MrKukks/status/1630221270246719489), which is very important, too, of course! In any case, I'm sorry, Kukks, but your time is up!

### Lightning Prisms

A Lightning Prism is a construct that allows for "lightning address
value split workflows," to quote the originator.

Here's the gist of it:

- A prism is identified by a lightning address (or similar)
- A prism has one or multiple recipients
- Another prism can be one of the recipients
- Splits are defined programmatically

This simple construct allows for all kinds of use cases and can be
implemented on the application layer without any changes to Bitcoin or
Lightning.

One obvious use case is value-splits for blog posts and similar
long-form writing. Imagine if every blog post (or book chapter) had its
own Lightning address, splitting value to author, editor, illustrator,
and proof-readers automatically.

The concept of these value splits already exists in [Podcasting
2.0](https://github.com/Podcastindex-org/podcast-namespace/blob/main/value/value.md#payment-calculation),
where it is widely applied to podcasts and episodes. One could argue
that having a separate identifier for the split construct is the natural
evolution of these payment splits, as it is easier to reason about them
and chain them together.

Another obvious use case is the splitting of nostr zaps. Imagine that
every "quote-tweet" that gets zapped results in an automated payment
split, passing on 50% (or whatever the user has configured) to the
original note. Or imagine a prism that's created on-the-fly, splitting
zaps equally for everyone tagged in a note.

{% include image.html name="lightning-prism-nostr-sat-splits.png" caption="Sat splits for nostr! What's not to like?" %}

Because payments are forwarded, every prism acts as a proxy of sorts.
This can be useful for organizations and individuals alike, as your
payment identifier remains the same even if your underlying
infrastructure or wallet provider changes.

### Issues & Improvements

There are two main issues: fees and privacy. One has to account for fees
to pay for the splitting and forwarding, but there's also the issue
that lightning addresses are IP-based, which has certain privacy
implications. We could do [LNURL over
nostr](https://github.com/lnurl/luds/pull/203)---again, shout-out to
Kukks---which brings up the following question: Are Lightning Addresses
the right level of abstraction for Lightning Prisms?

In the end, we don't want to send sats to addresses, but to people. If
nostr continues to catch on, it might turn itself into the global
address book for these kinds of things, i.e., the go-to place to look up
payment information of people, organizations, and other entities. In the
future, a prism might have multiple `nprofile` or `npub` identifiers
as targets, behind which the actual payment information lies.

{% include image.html name="lightning-prism-nostr-npubs.png" caption="Identifiers don't necessarily have to be lightning addresses. Npubs or similar would work too!" %}

In any case, at this point in time, I'm not too terribly concerned
about implementation details. I'm concerned with a lack of imagination,
which is what this post is supposed to address.

Speaking of imagination: why don't we have any spending wallets that
automatically move sats to a different wallet above a certain threshold?
I'm more than happy to have some lunch money in a custodial wallet, but
once it's worth three months of rent, I'm not as comfortable anymore.
Why can't the wallet automatically send all excess sats to my fully
self-sovereign lightning address once it's more than a dinner's worth
of sats? Or do a loop-out once a month to move the sats to cold storage?

Anyway, I digress.

One improvement I'd love to see is to provide a way to make Lightning
Prisms transparent. In the best case, users should have a way to see how
payments are split that is both easy to understand and verify. One
possibility would be to broadcast a
[NIP-33](https://github.com/nostr-protocol/nips/blob/master/33.md)
parameterized replaceable event every time a prism is created or
updated. Of course, depending on the use case, it might make sense to
keep the final destination(s) hidden from public view.

I'm sure there are more issues and plenty of other improvements to be
had. But as always, perfect is the enemy of the good, so let's talk
about practical solutions that can be implemented and used right now.

### Implementation

Prisms based on lightning addresses can be built today without much
effort. You can even build this yourself without any programming
experience using two [LNbits](https://lnbits.com/) extensions:
[scrub](https://github.com/lnbits/scrub) &
[split](https://github.com/lnbits/splitpayments). Add
[satdress](https://github.com/nbd-wtf/satdress) on top of it all to give
every wallet its own lightning address, and voilà, you've got yourself
a Lightning Prism! You can even build a nice interface as a wrapper
around it, as all of the above can be created programmatically with
simple API calls.

I did all that (minus the "build a nice interface as a wrapper around
it") just to play around with the idea. Granted, it's a bit hacky and
probably not the most stable or elegant solution, but it kinda works,
and it can be used today.

The [blogpost@satprism.com][blogpost] address that is shown above is a working
example.[^fn-more] It will split any payments 50/50 to Kukks and myself,
forwarding the splits to our respective self-sovereign lightning addresses which
are provided by our [BTCPay Server](https://btcpayserver.org/) instances.

[blogpost]: lightning:blogpost@satprism.com

[^fn-more]: All prisms shown in this post are working examples: [nostr-devs-eat-handsomely@satprism.com][nostr-devs] does an equal split to all devs mentioned in the note by Quiet Warrior, and [dergigi-platobot@satprism.com][plato] is a split between the robot and myself. I also took the liberty to create [rhr@satprism.com][rhr], which does a split for Marty and Matt, and there's also [einundzwanzig@satprism.com][euzz] for the German-speaking crew.

[^fn-interface]: I created the example prisms manually, so I'm afraid until someone builds a nice interface that allows users to create these themselves, there won't be an explosion of prisms. I like creating a gazillion lnbits wallets as much as the next guy, but clicking all the buttons to create the actual splits and forwards gets tiresome after a while.

[rhr]: lightning:rhr@satprism.com
[euzz]: lightning:einundzwanzig@satprism.com
[plato]: lightning:dergigi-platobot@satprism.com
[nostr-devs]: lightning:nostr-devs-eat-handsomely@satprism.com

I imagine multiple services being created that implement this properly,
charging a small fee for providing said service. (As mentioned above,
some sort of fee will be required to pay for routing fees, as payments
are forwarded to external addresses.)

My hope is that these kinds of ideas and novel constructs become more
prevalent as [zaps](https://nostr-resources.com/#receiving-zaps) and
similar [V4V](https://value4value.info/) payments---as well as Lightning
in general---become more prevalent. Of course, in the best case, we will
have these things natively integrated at the protocol level, but I see
no reason why we shouldn't do a little experimentation with what we
have today, even if the solutions are imperfect. Until
[Bolt12](http://bolt12.org/) and similar are widespread, hacking
something together that just works is probably not the worst idea.[^fn-interface]

### Final Thoughts

I expect this idea to find widespread adoption among writers and other
content creators, just like the idea of "streaming sats"---and the
splits of these value streams---found wide adoption among podcasters.

Special-purpose nostr clients for various content types are already in
the works, with SubStack- and Medium-like interfaces like
[BlogStack](https://blogstack.io/) and [Habla](https://habla.news/)
popping up left and right.

What's still missing is attaching payment information to individual
events (as opposed to user profiles) in order for each long-form content
to have its own payment information. Maybe it's as easy as extending the
[NIP-23](https://github.com/nostr-protocol/nips/blob/master/23.md)
metadata, or maybe it would make sense to have this kind of metadata for
other event kinds too.

We'll figure it out, and by "we," I actually mean you guys: the
developers that sit down to spec out and build stuff.

I'll be cheering you on while I [shitpost on nostr][derggg].

{% include image.html name="free-the-bird.jpg" link="https://nostr-resources.com/" %}

---

[derggg]: nostr:npub1dergggklka99wwrs92yz8wdjs952h2ux2ha2ed598ngwu9w7a6fsh9xzpc
