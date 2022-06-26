---
layout: thread
title: "Physical Limits"
subtitle: "On the physical limits of consensus."
date: 2022-03-25
blocktime: 728925
source: https://twitter.com/dergigi/status/1507294786268585995
redirect_from: sol
archive: https://archive.ph/WF8zj
author: Gigi
category: bitcoin
tags:
 - Bitcoin
 - Writing
video: /assets/video/earth-moon.mp4
---

While Bitcoin is just information, there are real physical limits that all
decentralized systems will run in to.

One limit is the **speed of light** and thus the time window in which
consensus can be reached.

{% include image.html name="hash-horizon.png" %}
 
It takes information about 42ms to travel from one end of the earth to
the other end (in the best case).

Relativistic effects make global consensus below this time window
impossible. Universal time does not exist.

<div class="flex-vid">
  <iframe src="https://www.youtube-nocookie.com/embed/SrNVsfkGW-0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

This short video explains it well in under 2 minutes. It's not only
about light, though, it is about *information* - no information can
propagate faster than the speed of light. This is even true when taking
quantum entanglement into account.

{% capture absoluteVideoURL %}{{ 'assets/video/simultaneity.mp4' | absolute_url }}{% endcapture %}
{% include video.html file=absoluteVideoURL %}

Bitcoin solves this problem by slowing down [time via proof-of-work][time]. One
tick of Bitcoin's internal clock corresponds to ~10min of earth time,
which is a large enough time window to find consensus, even if
communication is a bit slow or unreliable.

[time]: {{ '/time' | absolute_url }}

| Clock                     | Tick Frequency                          |
| --------------------------|-----------------------------------------|
| Grandfather's clock       | \~0.5 Hz                                |
| Metronome                 | \~0.67 Hz to \~4.67 Hz                  |
| Quartz watch              | 32768 Hz                                |
| Caesium-133 atomic clock  | 9,192,631,770 Hz                        |
| Bitcoin                   | 1 block (0.00000192901 Hz\* to ∞ Hz\*\*)|


<small>
\* first block (6 days) \\
\*\* timestamps between blocks can show a negative delta
</small>

The problem of telling time is also what creates real spacial limitations.
Unfortunately, we can't bring Bitcoin with us to the stars, we would have to
start a new center of hash on the multi-generational starship (unless we all
go). (h/t [Dhruv Bansal](https://unchained.com/blog/law-of-hash-horizons/))

If a project is truly decentralized it must not have a central keeper of
time.

Our relativistic universe makes solving this problem *extremely*
difficult, especially in a trustless, open, and adversarial environment.

[PoW][pow] is probably the only solution.

[pow]: {{ '/pow' | absolute_url }}

