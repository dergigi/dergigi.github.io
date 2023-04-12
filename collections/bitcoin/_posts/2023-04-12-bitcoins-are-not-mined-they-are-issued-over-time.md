---
layout: post
title: "Bitcoins Are Not Mined, They Are Issued over Time "
description: "TODO"
date: 2023-04-12
blocktime: TODO
image: /assets/images/coal-miners-btc.jpg
redirect_from: /mined
author: Gigi
category: bitcoin
favorite: false
tags:
 - Bitcoin
 - Writing
---

Out of all the misconceptions when it comes to Bitcoin, the misconception that
"miners" are creating "bitcoins" is probably the most asinine one.

No, miners are not creating bitcoins. Miners are trying to create valid blocks
and are rewarded by the Bitcoin network with newly issued sats (during the
network's bootstrapping phase).

Why is this differentiation important? It is important because Bitcoin's
issuance schedule is completely unrelated to its energy use. It is related to
[time] and time only.

It doesn't matter how many machines "mine" bitcoin; the same amount of bitcoin
will be issued over time.

{% include image.html name="supply-schedule.png" %}

Bitcoin's energy use is related to security and fair distribution of coins, not
creating more coins. The same amount of coins would be issued over the same
amount of time, even if Satoshi Nakamoto had remained the only person interested
in mining bitcoin:

**21 million** coins, issued in [10-minute intervals][cryptography], over
the course of ~131 years.

{% include image.html name="timeline-estimation.png" %}

If the interest for an open, borderless, transparent, limited, weightless,
divisible, digitally native, and easily verifiable electronic cash would've
stayed with Satoshi and Satoshi only, the energy use of the Bitcoin network
would be the energy use of a single CPU.

Bitcoin's energy use is a measure of interest; its reward mechanism is a
distribution mechanism. When it comes to issuance, the higher Bitcoin's energy
use, the fairer the initial distribution of coins.

Bitcoin's energy use is *not* a measure of how many of the supposedly useless
coins are being produced. The amount of new coins being issued as well as the
*pace* of issuance was fixed from the beginning. The block reward is a mechanism
to distribute the total supply of 21 million coins as fairly as possible,
without any reliance on a central authority.

Looking at Bitcoin's issuance schedule should make it immediatly obvious that
coins are issued over time, independent of energy use.

{% include image.html name="block-rewards.png" %}

If you are offended by Bitcoin's energy use because you hate the little orange
coins that are supposedly being mined, I have bad news for you: the same amount
of bitcoins would be issued over the same amount of time, even if Bitcoin's
kilowatt-hours would be close to zero. The same amount of sats would exist, and
surprisingly, the network could be used by the same amount of people as it is
today. It would just be centralized, insecure, easily influenced, easily
altered, prone to censorship, prone to corruption, and catering to special
interests.[^fn-si]

Saying that you want the Bitcoin network to use less energy exposes you as
either naively uninformed, dangerously authoritarian, or both. A decrease in
Bitcoin's energy use is a decrease in security, fair distribution, and
resistance to hostile alteration. If you are cheering for a reduction in
hashrate you are cheering for centralization and ease of corruption.

Saying that you hate Bitcoin because it uses energy is like saying that you hate
turtles because they grow shells.

"*Wouldn't it be great if all the turtles go naked, so that any predator could easily swoop down and swallow them whole?*"

That's you.

If you think that Bitcoin is useless, *any* energy that Bitcoin uses will seem
like a waste. If you think that Bitcoin is [useful][energy], the question as to how much
energy it should use is as unanswerable as how many Christmas lights or tumble
dryers are enough. You can't answer such a question; only the distributed
cognition of the market can answer that question.

With all that being said, allow me to present a three-step program that will
allow you, dear reader, to get less triggered regarding Bitcoin's energy use
going forward:

- **Step 1:** [Check your financial privilege][cyfp].
- **Step 2:** Understand the necessity of [proof-of-work][pow].
- **Step 3:**[^fn-step4] Understand the genius that is the difficulty adjustment, which ensures
that Bitcoin uses a certain amount of energy, always and forever, into the
future:

...exactly the right amount.

---

[^fn-step4]: Step four is to [start stacking sats][family] or to cry exponentially harder. The [choice is yours][memes].

[^fn-si]: But hey, maybe that's exactly what you want?

[pow]: {{ '/pow' | absolute_url }}
[memes]: {{ '/memes' | absolute_url }}
[energy]: {{ '/energy' | absolute_url }}
[family]: {{ '/family' | absolute_url }}
[time]: {{ '/time' | absolute_url }}
[cryptography]: {{ '/cryptography' | absolute_url }}
[cyfp]: https://bitcoin-resources.com/books/check-your-financial-privilege
