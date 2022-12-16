---
layout: page
title: Proof of Work
subtitle: Trustless consensus via difficulty-adjusted PoW is the innovation
redirect_from: /pow
---

Bitcoin's difficulty-adjusted proof-of-work is the innovation. Without it, trustless
digital scarcity and immutability is impossible.

Read the following, in order:

1. [A failure to understand proof of work is a failure to understand Bitcoin][tw-pow]
2. [Memes vs The World][tw-meme-world] - How information differs from physical objects
3. [Bitcoin is Time][time] - How Bitcoin decentralizes time itself
4. [Bitcoin is Digital Scarcity][digital]
5. [Bitcoin's Energy Consumption][energy] - A shift in perspective

---

{% capture absoluteVideoURL %}{{ 'assets/video/pow.mp4' | absolute_url }}{% endcapture %}
{% include video.html file=absoluteVideoURL %}

---

Visit [endthefud.org/PoW](https://endthefud.org/PoW) for a collection of
articles that explain why proof-of-stake is a non-solution to the problems that
Bitcoin solves.

---

### Data & Reports

- 2022: [How Bitcoin Mining Can Transform the Energy Industry][arcane2022-pdf]
- 2022: [Q2 Global Bitcoin Mining Data Review][bmc2022-q2-pdf]
- 2021: [Q3 Global Bitcoin Mining Data Review][bmc2021-q3-pdf]
- 2021: [Bitcoin is Key to an Abundant, Clean Energy Future][bcei2021-pdf]

Reports by [Arcane Research][arcane], the [Bitcoin Mining Council][bmc], and the
[Bitcoin Clean Energy Initiative][bcei].

[arcane2022-pdf]: {{ site.url }}/assets/files/2022-09-03-arcane-research-how-bitcoin-mining-can-transform-the-energy-industry.pdf
[bmc2021-q3-pdf]: {{ site.url }}/assets/files/2021-10-19-Q3-BMC-Presentation-Materials-Final.pdf
[bmc2022-q2-pdf]: {{ site.url }}/assets/files/2022-07-19-BMC-Presentation-Q2-22-Presentation.pdf
[bcei2021-pdf]: {{ site.url }}/assets/files/2021-04-01-bcei-paper-clean-abundant-energy.pdf

[arcane]: https://arcane.no/research/reports
[bmc]: https://bitcoinminingcouncil.com/
[bcei]: https://bitcoin.energy/

[tw-pow]: {{ '/powthread' | absolute_url }}
[tw-meme-world]: {{ '/memeworld' | absolute_url }}
[time]: {% post_url /bitcoin/2021-01-14-bitcoin-is-time %}
[digital]: {% post_url /bitcoin/2022-10-02-bitcoin-is-digital-scarcity %}
[energy]: {% post_url /bitcoin/2018-06-10-bitcoin-s-energy-consumption %}
