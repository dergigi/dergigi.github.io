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

Yesterday I relapsed. Not alcohol, or drugs, or gambling, or anything of that
sort. It was something worse: trying to have an argument online.

Back when twitter was still called twitter I found myself getting into many an
argument. Not because I wanted to, but because—at least back in those days—the
algorithm encouraged it. A constant back-and-forth between two stubborn people
is off-the-charts on all engagement metrics, so naturally it's what people want
to see and do online, right? Anyway, I promised myself that I would never get
into a twitter argument ever again, and resorted to shitposting instead. Bliss.

But yesterday I broke that promise, getting into an argument with Vitor on the
topic of on-chain zaps. I consider Vitor a friend, and I appreciate that he is
pushing the boundary, as he always does. However, I think that encouraging users
to associate on-chain activity with their online identity is misguided at best,
and actively harmful at worst.

Before I get into the "why it's bad" part of it all I'll try to steelman Vitor's
arguments as I understand them. In short:
- Zaps are public anyway
- Lightning setup is complicated
- No setup required for on-chain, less friction for users
- We have already built it and it works, so why not give users the option

As I've mentioned in the long back-and-forth thread with Vitor, I am not against
the *spirit* of the idea. I think that every npub should be able to send and
receive money with as little friction as possible, and have always been an
advocate for things like npub.cash & nutzaps (NIP-60/61). 

What I want to speak out against is the proposed *implementation* of the idea,
which encourages bad practices and has the potential to actively harm users in
the long run, for the sake of short-term "convenience" and "we can do it so why
the fuck not" I guess.

> Yeah, yeah, but your scientists were so preoccupied with whether or not they
> could that they didn't stop to think if they should.

TODO: insert image https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjpncVBtzn_kf7STwajpqIZDhB0M36Q6-mmgmWOkkUSN0Ha8JK-2tM0CVUlUA4311iYrU9Q5tOvpgVDD4fALyedQoqIU3MdvYE_C_RQVRGo3EI-vsh1soUPIUzTTIxrxfuvoKEgsp1BP2XDAmkx2fuzE7KJtEWXMANj3P5InJsBAbuPwqDWcfdH9Gfi9Q/s740/JP%201%20Poop.jpeg

Caption: Looking at the big pile of poop that is the on-chain zap proposal.

## Careful, Icarus

My initial reaction to seeing on-chain zaps was "oh, that's a terrible idea" -
and it's my reaction still. Just because we can do something doesn't mean we
_should_ do something, as Jurassic Park was trying to teach us.

But why? Why did the alarm bells of my intuition go off so hard? Why can't I
shut up about it and let Vitor and Alex have some fun to build this and play
around with it? Because I'm pretty sure that people will end up using it and get
terribly rekt, that's why.

> I was immediately like Ummm... wtf?!! but I couldn't clearly articulate why it was so disturbing.
>
> <cite>[Silberengel]</cite>

Same for me. I was incredibly disturbed, and couldn't readily articulate why
this supposed "feature" made me so uneasy. So I am sitting down now in an
attempt to write about it, which usually helps to structure my thoughts. And who
knows, maybe some of the younglings will read it, or maybe some of the nostr
devs who don't know too much about bitcoin can learn a thing or two about UTXOs
and stuff.

Let's get into it.

## "Zaps are public anyway"

Yes, they are. Zaps are public. The balance of my lightning wallet is not
public, however. The history of the sats I received isn't public either, nor is
the future of said sats. 

I tried to make this point by posing the following questions: "All the zaps that
I have received so far, what did I spend them on? Can you tell? Did I even move
those sats at all? Where did the sats go after I’ve received them?"

Further, I could claim that I've lost access to my wallet, and there wouldn't be
a way to prove that this isn't true. This type of plausible deniability
completely flies out the window in an on-chain world. 

## Revealing more than necessary

Tying bitcoin addresses to identities is what chainalysis companies do. And even
though their assumptions are based in heuristical witchcraft and should be taken
with a huge grain of salt, the unfortunate reality is that the legal system
takes said witchcraft seriously. We should make the job of chainalysis (read:
spying on users) harder, not 100x easier. 

"But zaps are public anyway!" Yes, they are, as I've admitted above. But you can
choose to opt out, you can choose to zap privately, and your future financial
activity is not forever tied to your identity. All that goes away with on-chain
zaps.

I'll just go ahead and quote Lola, since she hit the nail on the head:

> Publicly tying your social media profile to one address forever is genuinely
> the biggest gift you could make to AML companies, ever. To get that money out
> without hurting the privacy of people you interact with you‘d need to jump
> through so many hoops that it defies the entire purpose of this legendary „ux
> upgrade“ in the first place.

She goes on to say, correctly, that right now, thanks to Lightning, "[zaps]
don't dox you and everyone else you interact with for the rest of eternity." And
as we've already established above, "when I cash out my zaps, nobody knows where
that money went to." 

"Privacy is the power to selectively reveal oneself to the world," to quote the
Cypherpunk Manifesto. Tying your identity to on-chain addresses not only nerfs
that power, but takes it away from the individual permanently.

In short: using on-chain addresses for zaps is a terrible idea _precisely
because_ it reveals more than necessary. And to add insult to injury, it
automatically makes this oversharing permanent.

### Bad for the Sender

To understand why on-chain zaps are such a terrible idea you have to understand
how bitcoin works. And I mean how it _actually_ works. Not just a superficial
understanding like "my private key is my bank account" and related inaccuracies.

There is no "bank account" in the first place, and there's no "balance" either.
There's also no "bitcoins" and there's no identity associated with transactions.
There's inputs and outputs, and some of the outputs are unspent. We call these
unspent outputs—surprise, surprise—unspent transaction outputs, or [UTXOs].
Conceptually, if bitcoin would be a physical thing like gold is, you could think
of them as lumps of material (or "coins") of various sizes.[^fn-bitcoinium] All
we have is this unidirectional graph of transactions, and some neat cryptography
(and [proof-of-work][pow]) to link them together. That's it. 

The lack of identity in bitcoin is a feature, not a bug. Bitcoin is a
_pseudonymous_ system by design, which means that it can be used privately if
you are careful about keeping your "on-chain identity" separate from your other
identities (yes, plural[^fn-prismatic]).

The consequence of all that is the following: if I send on-chain bitcoin to you,
you can very easily "spy" on me by following the trail of transactions. It's
like a loose string that you can pull on, and depending on your time, resources,
and motivation, you might be able to unravel the whole fabric of my past
transactions. In other words: unless the sender is an educated bitcoin user who
is well versed in bitcoin fundamentals and is adamant about UTXO hygiene and
[privacy best practices], the person who is sending funds via an "on-chain zap"
will reveal _way more_ than they intended via the deceivingly simple act of
"zapping" someone on-chain.

And that's only half of the story. We only talked about unraveling the past, and
we only talked about the sender side. Knowing the on-chain address(es) of
someone allows anyone to spy on them in perpetuity. This is a well-known issue,
and was discussed on the [bitcointalk] forums way over a decade ago:

> Your inlaws can see that you're buying birth control that deprives them of
> grandchildren, your employer learns about the non-profits you support with money
> from your paycheck, and thieves see your latest purchases and how wealthy you
> are which helps them target and scam you. Poor privacy in Bitcoin can be a major
> practical disadvantage for both individuals and businesses.

Yes, zaps are public, and that's the point. But what proceeded a zap and what
follows it is _not_ public, and shouldn't be. It isn't public right now because
zaps use the Lightning Network, which has certain privacy characteristics that
on-chain transactions do not and will never have.

So when I said that ["Lightning is a sane default for zaps"][sane-default]
that's what I meant. Lightning does _not_ allow you to spy on the financial
activity of the sender (or the receiver) in perpetuity.

On-chain zaps not only allow this, but it makes it trivial.

### Bad for the Receiver

You just got zapped. Great. It was an on-chain zap. Not so great. 

What now? Well, the two basic options are "do nothing" and "do something." Both
are problematic, and here's why.

**Do nothing:** If you don't move the money, everyone will see how much money
you have to your name, as was promptly demonstrated by "[wrenchstr]" and other
vibe-coded projects. You might not even know about the money, but you using
your nsec to sign messages (read: you simply using nostr, logging in to
something, or pressing a like button here and there) proofs without a shadow of
a doubt that you are still in control of your keys, i.e. the keys that can move
the money. Bad for users. Fantastic for criminals. A wet dream for prying eyes.

**Do something:** You decide to move the money, which is to say: move the UTXOs
that are now associated with your nostr identity. Maybe you want to move them
to your cold storage, or maybe you want to buy something online, or spend it at
a [merchant] directly, or maybe you want to send the money to a friend who
isn't on nostr yet. Whatever you decide to do, absolutely everyone in the world
can follow the trail that these UTXOs leave behind. And some of the onlookers
might have the means _and_ the motivation to figure out what you did with your
money, and use it against you. 

None of the above is theoretical. For over a decade people have been robbed,
extorted, kidnapped, or worse, just because other people thought (or knew) they
had bitcoin. I encourage you to read through the list of [known physical bitcoin
attacks][lopp]. But I also know that people don't read, much less click links,
so here's some highlights from the last ~18 months: 

- Three attackers invaded a home, tied up family, and made several [bitcoin] transfers.
- A 38-year-old Chinese businessman was killed and found buried in the ground with his hands and feet bound with packing tape.
- A couple and their 20-year-old daughter were violently held captive by a group of criminals searching for bitcoins.
- Several individuals posing as police officers attempted to break into a home, hoping to get cryptocurrency.
- 3 men posing as police rob €900,000 in bitcoin from a couple during violent homejacking.
- Violent kidnapping resulting in the transfer of €68,000
- A 25-year-old woman was kidnapped and held hostage by two men for cryptocurrency

There's actually a third category, namely _wanting to do something but not being
able to_. Depending on output size and the current fee environment you might
find yourself in a situation in which it's literally impossible to get rid of
the money. 

It's not hard to imagine a scenario that makes this problematic. Imagine a mafia
boss coming to your house, giving you money that was made via illicit means. He
vanishes instantly after, but not before leaving a trail that leads directly to
you. A trail that's very easy to pick up by the police as well as other mafia
people. To make things worse, you had no option to refuse the money because the
mafia boss is also a witch, and a spell was cast that deposited the money
directly into your soul. The spell is called _[Pulvis Assaultus]_ and the only
way to rid your soul from the mafia witch dust is to throw more money at it.

### Bad for everyone else

This is probably the worst thing about this whole "on-chain zap" idea. Not only
is it bad for the sender and the receiver, but also for everyone else. Every
single entity that uses the bitcoin network is negatively affected by address
re-use. Everyone.

Remember the UTXO model that we discussed above? The fact that there's actually
no "coins" in bitcoin, but only input and outputs? One of the consequences of
this model is that, given that the ledger is public, the only way to have _any_
privacy is to hide in the crowd.

Address-reuse shrinks the crowd you can reasonably hide in.

This is bad. Really, really, really, bad. Or, to say it in a more fanciful way:
"The relationship graph in a re-used address is powerfully-linked in that
**all** of the inputs to that address are necessarily joined (via the spending
authority of your private key) to all of its outputs." That sentence has been in
the [bitcoin wiki] for over a decade. It goes on to say that, consequently,
"address reuse harms the privacy of not only yourself, but also others -
including many not related to the transaction."

Bad.

## Removing Choice and Agency

So now let's get to the final point. "We have already built it and it works, so
why not give users the option?" 

It used to be that _curiosity killed the cat_, but in the internet age it might
be more accurate to say that _convenience_ killed the cat. And in today's day
and age of vibe-coded slop (well, [slopified everything][slop], to be frank) it
might be more accurate to say that _velocity_ killed the cat.

Don't get me wrong, I'm a fan of high-agency activity and the "you can just do
things" mentality. Always have been. But there's a fine line between just doing
things and just doing damage to things. I hate to see unsuspecting users get
rekt, and if something insane like
static-address-reuse-onchain-zaps-derived-from-npub ever gets widespread
adoption[^fn-adoption], we'd be in a bad place. 

As things are now, users are actively advertising how they can get zapped by
putting a lightning address in their profile. What address to use is a
deliberate choice, and you can also choose to not have a lightning address set
at all, effectively opting out of zaps. Users are free to put a lightning
address that is not under their control, and some users do, to either support
someone else, or someone else's project, or a charity, etc.

This type of choice is removed entirely if clients make a deterministically
derived address the default. 

I feel like a broken record when I keep saying that [money and identity aren't
the same thing][money-identity]. "The whole point of money is to not know your
customer," to quote the Italian comedian once more. 

That said, I think it's fine to publicly state "this is how you can send me
money" - which is, in part, what the current spec does. With the proposed
on-chain zap spec this transforms into something like "this is my identity-bound
payment info and _on top of that_ here all my bank statements—past, present, and
future—feel free to spy on all my financial activity forever."

In some sense this move is similar to relying _purely_ on biometrics as
identification, as opposed to passwords (or other secrets). Convenient, yes, but
biometrics are _public_, not private. They are usernames, not passwords. You
can't change them. Imagine someone scans your face and has deep insight into all
your financial. That's a problem, since changing your face is ... difficult.

## TL;DR

TODO

[^fn-prismatic]: [Identity is prismatic](/names), and always will be.
[^fn-bitcoinium]: I called this hypothetical material "[bitcoinium](https://www.youtube.com/watch?v=hq391_Vmq_E)" a very long time ago.
[^fn-adoption]: I'm not saying that it will. Nostr doesn't have widespread adoption in the first place, and I doubt that educated users would ever use this. But then again: how many users are educated on these esoteric topics? And to make the point once more: the educated users can't even opt out of the receiving end of things.

[UTXOs]: https://opensats.org/topics/utxo
[pow]: /pow
[privacy best practices]: https://jamdocs.org/privacy/02-best-practices/
[bitcointalk]: https://bitcointalk.org/?topic=279249
[Pulvis Assaultus]: http://opensats.org/topics/dust-attack
[merchant]: https://btcmap.org/
[lopp]: https://github.com/jlopp/physical-bitcoin-attacks
[money-identity]: /2022/12/02/bitcoin-is-the-rediscovery-of-money/#:~:text=Money%20doesn%27t%20require%20identity
[bitcoin wiki]: https://en.bitcoin.it/wiki/Address_reuse#:~:text=The%20relationship%20graph%20in%20a%20re%2Dused%20address%20is%20powerfully%2Dlinked%20in%20that%20all%20of%20the%20inputs%20to%20that%20address%20are%20necessarily%20joined%20(via%20the%20spending%20authority%20of%20your%20private%20key)%20to%20all%20of%20its%20outputs.

[sane-default]: https://njump.to/nevent1qqsy77qjawrvj4u7kn9fqz2jpjx4us4yatfv5x94exzl2kjj30zshvqx0qg9k
[Silberengel]: https://njump.to/nevent1qqspewuufmdq0qurwdmn6d2egz2jrspvzzg0lekke44wrmsx505ls2c0a3pwy
[wrenchstr]: https://njump.to/nevent1qqsg3g529nmvwd82s0a2gn08t4j7t8cj0mcrk3u0encrf28u3fv2k3gqpl0uq
