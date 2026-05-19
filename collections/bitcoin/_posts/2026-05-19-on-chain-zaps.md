---
layout: post
title: On-Chain Zaps
description: TODO
date: 2026-05-19
blocktime: 950064
image: "/assets/images/on-chain-zaps.jpg"
redirect_from: "/on-chain-zaps"
author: Gigi
category: bitcoin
tags:
- nostr
- lightning
- Writing
# boris_link:
---

Yesterday I relapsed. Not alcohol, or drugs, or gambling, or anything of that sort. It was something worse: trying to have an argument online. 

Back when twitter was still called twitter I found myself getting into many an argument. Not because I wanted to, but because—at least back in those days—the algorithm encouraged it. A constant back-and-forth between two stubborn people is off-the-charts on all engagement metrics, so naturally it's what people want to see and do online, right? Anyway, I promised myself that I would never get into a twitter argument ever again, and resorted to shitposting instead. Bliss.

But yesterday I broke that promise, getting into an argument with Vitor on the topic of on-chain zaps. I consider Vitor a friend, and I appreciate that he is pushing the boundary, as he always does. However, I think that encouraging users to associate on-chain activity with their online identity is misguided at best, and actively harmful at worst.

Before I get into the "why it's bad" part of it all I'll try to steelman Vitor's arguments as I understand them. In short:
- Zaps are public anyway
- Lightning setup is complicated
- No setup required for on-chain, less friction for users
- We have already built it and it works, so why not give the option to users

As I've mentioned in the long back-and-forth thread with Vitor, I am not against the *spirit* of the idea. I think that every npub should be able to send and receive money with as little friction as possible, and have always been an advocate for things like npub.cash & nutzaps (NIP-60/61). 

What I want to speak out against is the proposed *implementation* of the idea, which encourages bad practices and has the potential to actively harm users in the long run, for the sake of short-term "convenience" and "we can do it so why the fuck not" I guess.

> Yeah, yeah, but your scientists were so preoccupied with whether or not they could that they didn't stop to think if they should.

## Careful, Icarus

My initial reaction to seeing on-chain zaps was "oh, that's a terrible idea" - and it's my reaction still. Just because we can do something doesn't mean we _should_ do something, as Jurassic Park was trying to teach us.

But why? Why did the alarm bells of my intuition go off so hard? Why can't I shut up about it and let Vitor and Alex have some fun to build this and play around with it? Because I'm pretty sure that people will end up using it and get terribly rekt, that's why.

> I was immediately like Ummm... wtf?!! but I couldn't clearly articulate why it was so disturbing.

Same for me. I was incredibly disturbed, and couldn't readily articulate why this supposed "feature" made me so uneasy. So I am sitting down now in an attempt to write about it, which usually helps to structure my thoughts. And who knows, maybe some of the younglings will read it, or maybe some of the nostr devs who don't know too much about bitcoin can learn a thing or two about UTXOs and stuff.

Let's get into it.

## "Zaps are public anyway"

Yes, they are. Zaps are public. The balance of my lightning wallet is not public, however. The history of the sats I received isn't public either, nor is the future of said sats. 

I tried to make this point by posing the following questions: "All the zaps that I have received so far, what did I spend them on? Can you tell? Did I even move those sats at all? Where did the sats go after I’ve received them?"

Further, I could claim that I've lost access to my wallet, and there wouldn't be a way to prove that this isn't true. This type of plausible deniability completely flies out the window in an on-chain world. 

## Revealing more than necessary

Tying bitcoin addresses to identities is what chainalysis companies do. And even though their assumptions are based in heuristical witchcraft and should be taken with a huge grain of salt, the unfortunate reality is that the legal system takes said witchcraft seriously. We should make the job of chainalysis (read: spying on users) harder, not 100x easier. 

"But zaps are public anyway!" Yes, they are, as I've admitted above. But you can choose to opt out, you can choose to zap privately, and your future financial activity is not forever tied to your identity. All that goes away with on-chain zaps.

I'll just go ahead and quote Lola, since she hit the nail on the head:

> Publicly tying your social media profile to one address forever is genuinely the biggest gift you could make to AML companies, ever. To get that money out without hurting the privacy of people you interact with you‘d need to jump through so many hoops that it defies the entire purpose of this legendary „ux upgrade“ in the first place.

She goes on to say, correctly, that right now, thanks to Lightning, "[zaps] don't dox you and everyone else you interact with for the rest of eternity." And as we've already established above, "when I cash out my zaps, nobody knows where that money went to." 

"Privacy is the power to selectively reveal oneself to the world," to quote the Cypherpunk Manifesto. Tying your identity to on-chain addresses not only nerfs that power, but takes it away from the individual permanently.

In short: using on-chain addresses for zaps is a terrible idea _precisely because_ it reveals more than necessary. And to add insult to injury, it automatically makes this oversharing permanent.

### Bad for the Sender

To understand why on-chain zaps are such a terrible idea you have to understand how bitcoin works. And I mean how it _actually_ works. Not just a superficial understanding like "my private key is my bank account" and related inaccuracies. 

There is no "bank account" in the first place, and there's no "balance" either. There's also no "bitcoins" and there's no identity associated with transactions. There's inputs and outputs, and some of the outputs are unspent. We call these unspent outputs—surprise, surprise—unspent transaction outputs, or [UTXOs]. Conceptually, if bitcoin would be a physical thing like gold is, you could think of them as lumps of material (or "coins") of various sizes.[^fn-bitcoinium] All we have is this unidirectional graph of transactions, and some neat cryptography (and [proof-of-work][pow]) to link them together. That's it. 

The lack of identity in bitcoin is a feature, not a bug. Bitcoin is a _pseudonymous_ system by design, which means that it can be used privately if you are careful about keeping your "on-chain identity" separate from your other identities (yes, plural[^fn-prismatic]).

The consequence of all that is the following: if I send on-chain bitcoin to you, you can very easily "spy" on me by following the trail of transactions. It's like a loose string that you can pull on, and depending on your time, resources, and motivation, you might be able to unravel the whole fabric of my past transactions. In other words: unless the sender is an educated bitcoin user who is well versed in bitcoin fundamentals and is adamant about UTXO hygiene and [privacy best practices], the person who is sending funds via an "on-chain zap" will reveal _way more_ than they intended via the deceivingly simple act of "zapping" someone on-chain.

And that's only half of the story. We only talked about unraveling the past, and we only talked about the sender side. Knowing the on-chain address(es) of someone allows anyone to spy on them in perpetuity. This is a well-known issue, and was discussed on the bitcointalk forums way over a decade ago:

> “Your inlaws can see that you're buying birth control that deprives them of grandchildren, your employer learns about the non-profits you support with money from your paycheck, and thieves see your latest purchases and how wealthy you are which helps them target and scam you. Poor privacy in Bitcoin can be a major practical disadvantage for both individuals and businesses.”

Yes, zaps are public, and that's the point. But what proceeded a zap and what follows it is _not_ public, and shouldn't be. It isn't public right now because zaps use the Lightning Network, which has certain privacy characteristics that on-chain transactions do not and will never have. So when I said that ["Lightning is a sane default for zaps"][sane-default] that's what I meant. Lightning does _not_ allow you to spy on the financial activity of the sender (or the receiver) in perpetuity. On-chain zaps not only allow this, but it makes it trivial.

### Bad for the Receiver

TODO

### Bad for everyone else

TODO

## Why not give users the option?

TODO

[^fn-prismatic]: [Identity is prismatic](/names), and always will be.
[^fn-bitcoinium]: I called this hypothetical material "[bitcoinium](https://www.youtube.com/watch?v=hq391_Vmq_E)" a very long time ago.

[UTXOs]: https://opensats.org/topics/utxo
[pow]: /pow
[privacy best practices]: https://jamdocs.org/privacy/02-best-practices/
[sane-default]: https://njump.to/nevent1qqsy77qjawrvj4u7kn9fqz2jpjx4us4yatfv5x94exzl2kjj30zshvqx0qg9k
