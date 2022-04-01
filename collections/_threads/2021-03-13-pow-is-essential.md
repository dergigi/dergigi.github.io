---
layout: post
title: "PoW is essential"
subtitle: "A failure to understand proof of work is a failure to understand Bitcoin."
date: 2021-03-13
blocktime: 683449
source: https://twitter.com/dergigi/status/1392826448017346561?s=20
redirect_from: /powthread
author: Gigi
category: bitcoin
tags:
 - Bitcoin
 - Writing
translations:
 - language: Italian
   url: https://medium.com/alessandro-omega/il-pow-%C3%A8-essenziale-di-gigi-c72eee31c83c
   archive: https://archive.ph/uhs2g
   author: Alessandro Omega
   author_url: https://twitter.com/AOmega_Crypto
---

**A failure to understand [proof of work][pow] is a failure to understand Bitcoin.**

[pow]: {{ '/pow' | absolute_url }}

Decentralized systems, by definition, do not have a single source of
truth.

Satoshi\'s breakthrough was to build a system that allows all
participants to zero in on the same truth independently. Proof of work
is what allows this to happen.

The point of proof of work is to create an irrefutable history. If two
histories compete, the one with the most work embedded in it wins.

The chain with the most work is the truth, by definition. This is what
we call Nakamoto consensus.

Why does this work?

In short: because work requires energy. You can\'t cheat it. You can\'t
argue with it. You can\'t lie about it. The proof that you did the work
is self-evident in the outcome of the work.

In Bitcoin, work is computation. Not any kind of computation, but
computation that has no shortcut: guessing. There is no shortcut because
there is no progress. Every guess stands on its own.

The beautiful thing is that the work itself is embedded in the solution.
The data speaks for itself. The map is the territory. There is no
external source of truth required. The work is implicit in the data due
to the probabilistic nature of guessing.

Other mechanisms, such as proof of stake, don\'t have this property. You
can never be sure that what you are looking at is actually the truth
since there is no external cost to create an alternative truth.

Computation is the only bridge between the realm of information to the
physical realm. When dealing with information, all we have is
information and the transformation of information: computation.

Computation requires energy. Energy is the bridge. Energy is real.

Remove this bridge to the physical world and you will stay in fantasy
land: you can\'t tell what actually happened. You will have to trust
others to tell you what happened. You can\'t verify it yourself. You
have to rely on trust.

Proof of stake has plenty of other problems, such as fair validator
selection (who decides?), naturally centralizing effects (more stake =
more reward = more stake), and having no natural resistance to timestamp
manipulation attacks, for example.

Proof of work solves these exact problems. It decentralizes the selection
process, creates physical proof of what happened, has real externalized costs,
and decentralizes [time].

The question of whether proof of work is wasteful or not can\'t be asked
without understanding the problem it solves. Understanding the problem
properly will lead you to the conclusion that there is no other way to
solve it in a trustless manner.

Thus, the question becomes: how useful is trustless digital sound money?
Is it worth the energy expenditure?

For fridges, cars, smartphones, and a myriad of other things, society
answers this question in the affirmative.

For Bitcoin, those who understand the societal benefits of sound and
censorship-resistant money answer in the affirmative.

To summarize: proof of work is not only useful but absolutely essential.
Trustless digital money can\'t work without it. You always need an
anchor to the physical realm. Without this anchor, a truthful history
that is self-evident is impossible. Energy is the only anchor we have.


Proof of work = trust physics to determine what happened.

Proof of stake = trust humans to determine what happened.

---

Addendum: I have a lot of sympathy for everyone who thinks that Bitcoin is
wasteful. I thought so too, and I had to [shift my perspective][energy]. Like
most people, I didn't know anything about (sound) money.

Addendum, part two: The problem of agreeing on a common time in an
adversarial decentralized system can\'t be solved precisely, not even in
theory. Proof of work is a practical, probabilistic solution to this
intractable problem.
See [this thread](https://twitter.com/dergigi/status/1392409660154646529?s=20).

Addendum, part three: I wrote \"trustless\" for brevity. There is no
such thing. It is always about the minimization of trust.
See [Lesson 16](https://21lessons.com/16/).

Addendum, part four: It should go without saying that energy expenditure
doesn\'t equal carbon footprint and that both are decoupled from
transaction throughput.
See [this thread](https://twitter.com/LynAldenContact/status/1374774367666761729?s=20) by Lyn Alden.

[time]: {% post_url /bitcoin/2021-01-14-bitcoin-is-time %}
[energy]: {% post_url /bitcoin/2018-06-10-bitcoin-s-energy-consumption %}
