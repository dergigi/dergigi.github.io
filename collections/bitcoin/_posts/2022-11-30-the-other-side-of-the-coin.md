---
layout: post
title: "The Other Side of the Coin"
subtitle: "Computational proof of the chronological order of transactions"
description: "Without the luxury of private keys, we can't use cryptography to construct a shield in cyberspace. We have to use computation directly."
date: 2022-11-30
blocktime: 765335
image: /assets/images/coin-tree.jpg
redirect_from: /computation
author: Gigi
category: bitcoin
favorite: false
tags:
 - Bitcoin
 - Writing
---

Cryptography is only one side of the coin, and cryptography is not
enough. Why? 

[Cryptography is not enough][cryptography] because cryptography requires
secrecy. It requires key holders, and when it comes to a global monetary system,
we don\'t want anyone to hold the \"master key.\"

[cryptography]: {{ '/cryptography' | absolute_url }}

In Bitcoin, your private key is only one-half of the equation. You also need the
so-called public ledger, which records the information that is public to all.

To ensure that public information has integrity---without falling back to
cryptography, which requires private information and thus secrecy---we need to
use something else. 

That something else is proof-of-work: *computational* proof,
not cryptographic proof.

> ...we propose a solution to the double-spending problem using a
> peer-to-peer distributed timestamp server to generate computational
> proof of the chronological order of transactions.
>
> <cite>[Satoshi Nakamoto][wp]</cite>

[wp]: https://dergigi.com/bitcoin.pdf

Strong cryptography makes direct attacks virtually impossible, as [Bruce
Schneier](https://21lessons.com/15/) pointed out. The universe will die
of heat death before you will be able to brute-force strong
cryptography. 

Proof-of-work makes direct attacks merely impractical, as Satoshi
pointed out. Without the luxury of private keys, we can\'t use
cryptography to construct a shield in cyberspace. We have to use
computation directly.

> ...we proposed a peer-to-peer network using proof-of-work to record a
> public history of transactions that quickly becomes computationally
> impractical for an attacker to change if honest nodes control a majority
> of CPU power.
>
> <cite>[Satoshi Nakamoto][wp]</cite>

The proof is in the pudding, i.e. in the public data itself. There are
no private keys. There is no secrecy. Everything is out in the open for
anyone to look at. Openness allows for public verification, and it is
public verification that removes trusted third parties & [inspires awe][shift].

[shift]: {{ '/energy' | absolute_url }}

{% include image.html name="david-small.jpg" caption="Proof-of-work is not wasteful." %}

That\'s why Bitcoin is \"high art,\" why [Bitcoin Can\'t Be
Copied](https://bitcoin-resources.com/articles/bitcoin-cant-be-copied/),
and why [there is no Bitcoin
2.0](https://bitcoin-resources.com/articles/thereisno-bitcoin20/).
That\'s why Bitcoin doesn\'t require a quorum of key holders. Truth is
embedded in the data itself. You don\'t need a key to decipher it.

Bitcoin is the most secure network, _not_ because it has the best
cryptography, but because it has the most accumulated computational
proof. 

Cryptographic algorithms can be copied for free. Computational
proof can not. And because the computational proof is entangled with
Bitcoin\'s ruleset and age, and because you and you alone are
responsible for enforcing said ruleset, and because the threshold that
defines the validity of said computational proof had to grow
organically, and because you can neither copy history nor electricity,
one can only arrive at one conclusion: there is no second best.

{% capture saylor %}{{ 'assets/video/there-is-no-2nd-best.mp4' | absolute_url }}{% endcapture %}
{% include video.html file=saylor %}

Cryptography is only one side of the coin. The other side is the
creation and verification of computational proof, which is required to
have public data that is auditable, integral, and truthful---without
relying on trust. 

To adopt [responsibility] for one side of the coin---the cryptographic
side---you have to hold your own keys. **12 words**: in your head, or on a piece
of paper, or stamped into metal, or stored securely on a signing device.

[responsibility]: {{ '/responsibility' | absolute_url }}

To adopt responsibility for the other side of the coin---the computational
side---you have to run your own node. **21 million**: never more.

Bitcoin\'s heartbeat is what connects the two, and what makes the coin whole.
Tick-tock, next block. Every [**10 minutes**](https://21-ways.com/2/). Every 10
minutes. Every 10 minutes.[^fn-ross]

[^fn-ross]: "Amidst attention-grabbing headlines this week that will be talked about for decades, I want to bring your attention to one far more profound and awe-inspiring non-headline: every 10 minutes a new bitcoin block was produced. Every 10 minutes. Every 10 minutes." ---[Ross Stevens][ross]

[ross]: https://archive.ph/v0xwH

---

<div class="flex-vid">
  <iframe src="https://www.youtube-nocookie.com/embed/C7ynm0Zkwfk" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

---