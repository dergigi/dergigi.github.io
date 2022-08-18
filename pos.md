---
layout: page
title: Proof of Stake
subtitle: The failures of a centralized "consensus" mechanism
---

Proof-of-stake is no alternative to [proof-of-work][pow].
When deployed, proof-of-stake will run into failures in the long run, because it
has fundamentally flaws that can not be addressed without proof-of-work.

The fundamental flaws are:
- No trustless mechanism for [decentralized timestamping][time]
- No true randomness
- No truly fair validator selection
- No validator turnover
- No way to bootstrap & fairly distribute coins
- No real-world external cost
- No game-theoretic stability in an adversarial environment
- No way to reduce imbalance over time; rich get richer, always
- No aligned incentives

---

<div class="flex-vid">
  <iframe src="https://www.youtube-nocookie.com/embed/gyP0uxxB6V8" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

---

Read the following to understand why proof-of-stake has and will always fail:

- [What’s Wrong with Proof of Stake?](https://medium.com/@BobMcElrath/whats-wrong-with-proof-of-stake-77d4f370be15) by Bob McElrath
- [Proof-of-Stake Fallacy](https://github.com/libbitcoin/libbitcoin-system/wiki/Proof-of-Stake-Fallacy) by Eric Voskuil
- [Proof-of-Stake & the Wrong Engineering Mindset](https://hugonguyen.medium.com/proof-of-stake-the-wrong-engineering-mindset-15e641ab65a2) by Hugo Nguyen
- [Work is Timeless, Stake is Not](https://hugonguyen.medium.com/work-is-timeless-stake-is-not-554c4450ce18) by Hugo Nguyen
- [Nothing is Cheaper than Proof of Work](https://www.truthcoin.info/blog/pow-cheapest/) by Paul Sztorc
- [Proof of Stake is Still Pointless](https://www.truthcoin.info/blog/pos-still-pointless/) by Paul Sztorc

If you are more on the academic side of things, here are some papers:

- *[Proof-of-Stake Is a Defective Mechanism][Sus2022]*, V. Sus (2022)
- *[On Stake and Consensus][Poelstra2015]*, A. Poelstra (2015)
- *[Distributed Consensus from Proof of Stake is Impossible][Poelstra2014]*, A. Poelstra (2014)

[Poelstra2014]: {{ site.url }}/assets/files/Poelstra2014.pdf
[Poelstra2015]: {{ site.url }}/assets/files/Poelstra2015.pdf
[Sus2022]: {{ site.url }}/assets/files/Sus2022.pdf

---

Some recent failures include:

- **2022-05-27** [Solana's blockchain clock loses track of time][sol-clock], now running 30 minutes behind (see [Lesson 17][L17] and [Bitcoin is Time][time])
- **2022-06-19** - Solana: [1 vote][sol-vote-img], making up 90% of total votes, [decided the fate][sol-vote] of ~$270m in users assets

[L17]: https://21lessons.com/17/

[sol-clock]: https://archive.ph/jlVn4
[sol-vote]: https://archive.ph/f3boB
[sol-vote-img]: {{ site.url }}/assets/images/shitcoins/sol-vote.jpg

---

{% capture absoluteVideoURL %}{{ 'assets/video/curb-your-eth-enthusiasm.mp4' | absolute_url }}{% endcapture %}
{% include video.html file=absoluteVideoURL %}

---

Visit [endthefud.org/PoS](https://endthefud.org/PoS) for a collection of
articles that explain why proof-of-stake is a non-solution to the problems that
Bitcoin solves. Also make sure to browse the [rekt leaderboard](https://rekt.news/leaderboard/) to get an idea of the amount of value destroyed and stolen by those who peddle bad ideas.

[pow]: {{ '/pow' | absolute_url }}
[tw-meme-world]: {{ '/memeworld' | absolute_url }}
[time]: {% post_url /bitcoin/2021-01-14-bitcoin-is-time %}
[energy]: {% post_url /bitcoin/2018-06-10-bitcoin-s-energy-consumption %}
