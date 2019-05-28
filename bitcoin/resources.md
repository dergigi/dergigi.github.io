---
layout: page-with-toc
title: Resources
---

There exists an almost endless list of essays, articles, books, podcasts, and
other content on Bitcoin and the topics it touches on. The resources listed
below are but a small selection which were particularly influential in my
thinking. I am grateful for all the people who shared their insights, past and
present.

I tried to structure the resources in a meaningful way. The [essentials] come
first, since I consider them to be a good starting point and required reading
for everyone. After that, all resources are broken down by category:

- [Books] on bitcoin, economics, money, banking, and computer science
- [Podcasts] and [selected episodes]
- [Selected articles], broken down by topic

Note that there is a list of [other curated resources] at the end of this page.
Make sure to check them out, since everyone's selection is different and one of
those might better suite your taste.

[essentials]: #essentials
[Books]: #books
[Podcasts]: #podcasts
[selected episodes]: #podcast-episodes
[Selected articles]: #articles
[other curated resources]: #further-resources

If you think something is missing or the structure could be improved, please
[let me know][contact]. If you have any suggestions, open [issues] or
[PRs][pulls] on GitHub or [reach out to me][contact].

---

### Essentials

I encourage everyone to start at the beginning, and read -- or at least skim --
the 8 pages which gave birth to Bitcoin:

- [Bitcoin: A Peer-to-Peer Electronic Cash System][bitcoin-whitepaper] by Satoshi Nakamoto

To get a grasp on Bitcoin you will have to read a book or two. If you only want
to read one, you can't do wrong with Saifedean's ***The Bitcoin Standard***.
Bitcoin is money, so understanding *The Ethics of Money Production* is paramount
to understanding what Bitcoin is about. If you need a crash-course in economics
I recommend reading *Economics in one Lesson* by Henry Hazlitt. All three books
are also available as audiobooks.

<ul class="books">
{% include book.html name="economics-in-one-lesson" %}
{% include book.html name="bitcoin-standard" alt="The Bitcoin Standard: The Decentralized Alternative to Central Banking" %}
{% include book.html name="ethics-of-money-production" %}
</ul>

While you wait for these books to arrive, you might want to pass the time by
reading the following article:

- [The Bullish Case for Bitcoin][bullish-case] by Vijay Boyapati ([audio version][bullish-case-audio])

If you would rather lean back and watch something, I'd recommend listening to
Andreas Antonopoulos's *[The Stories We Tell About Money][aantonop-stories]*.

---

### Books

Thanks to Bitcoin, my list of books to read gets longer and longer, way quicker
than I could ever read them. The books listed below are books I can personally
recommend. If a particular book is not listed here, it is probably because I
didn't get around to read it yet. Although there is some overlap, the books are
roughly grouped by topics as follows:

* [Bitcoin (non-technical)][bitcoin-non-technical]
* [Bitcoin (technical)][bitcoin-technical]
* [Economics][economics]
* [Money][money]
* [Banking][banking]
* [Software and Programming][software-and-programming]
* [Computation and Complexity Theory][computation-and-complexity-theory]
* [Work][work]

[bitcoin-non-technical]: #bitcoin-non-technical
[bitcoin-technical]: #bitcoin-technical
[economics]: #economics
[money]: #money
[banking]: #banking
[software-and-programming]: #software-and-programming
[computation-and-complexity-theory]: #computation-and-complexity-theory
[work]: #work

I hope to update this list continually as my
reading progresses.

#### Bitcoin (non-technical)

Books about Bitcoin which can be read by anyone, no special background Knowledge
or education required. As mentioned above, I consider *The Bitcoin Standard*
required reading for anyone interested in Bitcoin.

<ul class="books">
{% include book.html name="bitcoin-standard" alt="The Bitcoin Standard: The
Decentralized Alternative to Central Banking" %}
{% include book.html name="internet-of-money-vol1" %}
{% include book.html name="internet-of-money-vol2" %}
{% include book.html name="inventing-bitcoin" %}
<!-- {% include book.html name="bitcoin-money" %} -->
</ul>

#### Bitcoin (technical)

If you would like to dig deeper or get your hands dirty with programming, these
books are for you. Technical knowledge and skills in computer science,
programming, and/or mathematics are beneficial.

<ul class="books">
{% include book.html name="mastering-bitcoin" %}
{% include book.html name="programming-bitcoin" %}
{% include book.html name="grokking-bitcoin" %}
</ul>

There are also great online resource available, see [Wikis and
Guides][wikis-and-guides].

[wikis-and-guides]: #wikis-and-guides

#### Economics

Bitcoin is capable of being the new base layer of our economy, which is why
understanding economics is essential in understanding Bitcoin. Bitcoin's
monetary policy is aligned with the Austrian School of economic thought, which
is why reading the works of Austrian's such as Hayek, Hazlitt, Hoppe, Menger,
Mises, Rothbard, and others is recommended by those who take Bitcoin's value
proposition seriously.

<ul class="books">
{% include book.html name="economics-in-one-lesson" %}
{% include book.html name="human-action" %}
{% include book.html name="the-machinery-of-freedom" %}
</ul>

*Human Action* is Mises' magnum opus, and is freely available online as both an
ebook and an audiobook.

#### Money

In stark contrast to our current economic system, Bitcoin does not offer the
possibility of inflating the monetary base. Understanding money, and especially
*sound* money, is paramount to understanding the value proposition and ultimate
impact of Bitcoin.

<ul class="books">
{% include book.html name="ethics-of-money-production" %}
{% include book.html name="what-has-government-done-to-our-money" %}
{% include book.html name="money-sound-unsound" %}
{% include book.html name="how-is-fiat-money-possible" %}
</ul>

Note that *How is Fiat Money Possible* is an essay, but it is too poignant to
not be included here.

#### Banking

Banking is a mystery to most, and central banking doubly so. Bitcoin isn't
necessarily an enemy of the former, but, if successful, it will abolish and
replace the latter.

<ul class="books">
{% include book.html name="mystery-of-banking" %}
{% include book.html name="creature-from-jekyll-island" %}
{% include book.html name="end-the-fed" %}
</ul>

#### Software and Programming

Bitcoin is free, libre open-source software. It is free as in freedom, free as
in free speech. What this means, why free software exists, and what the
implications of free (vs proprietary) software are, is important to understand
the unstoppability of Bitcoin.

<ul class="books">
{% include book.html name="free-software-free-society" %}
{% include book.html name="cathedral-and-bazaar" %}
{% include book.html name="art-of-unix-programming" %}
{% include book.html name="pragmatic-programmer" %}
</ul>

I would argue that the ethos of GNU and UNIX programming are important corner
stones for Bitcoin as well. Further, Bitcoin is a pragmatic piece of software,
which is why I consider *The Pragmatic Programmer* a great book for anyone who
wishes to hack away on Bitcoin.

#### Computation and Complexity Theory

While Bitcoin is in the business of verification and not computation, knowing
the limits of what computers can do and what future computers might be able to
do can be beneficial to better understand some parts of Bitcoin. I highly
recommend *Gödel, Escher, Bach* because it is a deeply fascinating and beautiful
book.

<ul class="books">
{% include book.html name="goedel-escher-bach" %}
{% include book.html name="quantum-computing-since-democritus" %}
{% include book.html name="new-kind-of-science" %}
</ul>

*Quantum Computing Since Democritus* is quite dense, but it is also quite
entertaining at times. The first couple of chapters stay in the non-quantum
world of computing and might help to understand why breaking Bitcoin's security
is so hard. *A new Kind of Science* is certainly not for everyone, but parts of
it are quite interesting.

#### Work

Decentralized networks like Bitcoin, and the internet before it, change the way
people interact and work with each other. People who work on or create content
for Bitcoin are located all over the world, thus regular approaches to work
might not produce the best results. I found the following books to hit a certain
nerve, speaking as someone who has stepped outside of the regular way of working
on things. If you think about working on Bitcoin or other open-source projects,
these books are for you.

<ul class="books">
{% include book.html name="crazy-at-work" %}
{% include book.html name="war-of-art" %}
{% include book.html name="remote" %}
</ul>

---

### Podcasts

One of the best ways to educate yourself on Bitcoin is by listening to the
smartest people in the space. Luckily, we are living in the golden age of
podcasts, and many great conversations are "open source" so to speak.
Disclosure: I was a guest on some of these podcasts. Links to those specific
episodes can be found [here][interviews].

I consider the following podcasts the best in the space:

- [Tales From The Crypt][tftc] by Marty Bent with RHR co-host Matt Odell
- [Noded][noded] by Pierre Rochard and Michael Goldstein
- [Stephan Livera Podcast][slp] by Stephan Livera
- [What Bitcoin Did][wbd] by Peter McCormack

Although I try to listen to every Bitcoin podcast under the sun, it is simply an
unsurmountable feat due to the sheer volume of content. The following podcasts
are excellent as well:

- [The Cryptoconomy][cryptoconomy] by Guy Swann
- [Bitcoin Echo Chamber][bec] by Heavily Armed Clown
- [Citizen Bitcoin][cb] by Brady
- [Crypto Voices][cv] by Matthew Mežinskis and Fernando Ulrich
- [The Bitcoin Knowledge Podcast][bkp] by Trace Mayer
- [Contrarian Island][ci] by MD
- [Crypto & Grill][cag] by CryptoDantes and StigofthePump

The line between the best and the rest is quite arbitrary, but I felt like one
very long list might not be as useful as separate lists, however arbitrary the
distinction. I enjoy or have enjoyed the these podcasts as well:

- [Let's Talk Bitcoin][ltb] with Adam B. Levine, Andreas Antonopoulos, Stephanie Murphy and Jonathan Mohan
- [Reckless Review][rr] by Udi Wertheimer and Lawrence Nahum
- [Bitcoin and...][ba] by @bennd77
- [Fun With Crypto][fwc] by @Coinicarus
- [Bottomshelf Bitcoin][bsb] by Josh Humphrey

### Podcast episodes

Some "evergreen" episodes were recorded in the last couple of years. Again, this
is a personal selection so it is biased towards certain guests and topics. If
there is an episode missing that you consider to be one of the best, feel free
to [reach out to me][contact] and shill me said episode.

- 🎧 [BitcoinTina on why he is bullish on Bitcoin][tftc55] TFTC #55 hosted by Marty Bent
- 🎧 [Misir Mahmudov on the Scarcity of Time & Bitcoin][tftc60] TFTC #60 hosted by Marty Bent
- 🎧 [PlanB – Modelling Bitcoin's digital scarcity through stock-to-flow techniques﻿][slp67] SLP #67 hosted by Stephan Livera
- 🎧 [Murad Mahmudov][tftc34] TFTC #34 hosted by Marty Bent

---

### Articles

Many amazing articles have been written about Bitcoin. I am aware that trying to
link to all of them is futile, but I want to make an effort and at least
highlight some of them. I highly recommend the [literature listed][sni] at the
Nakamoto Institute, the selection of [articles read][guy-episodes] by
Guy Swann, and the [writings collected][brh-writings] by Adam Taché.

One of the best articles to read if you are new to Bitcoin is *The Bullish Case
for Bitcoin*, which outlines why there are very good reasons to be optimistic
about Bitcoin's future.

- [The Bullish Case for Bitcoin][bullish-case] by Vijay Boyapati

#### Nick Szabo

Nick Szabo's blog is a treasure trove of excellent essays.

- [Shelling Out: The Origins of Money][shelling-out] by Nick Szabo
- [Money, blockchains, and social scalability][social-scalability] by Nick Szabo
- [The God Protocols][god-protocols] by Nick Szabo
- [Trusted Third Parties Are Security Holes][security-holes] by Nick Szabo

#### On the difficulty of understanding Bitcoin:

- [Why It’s Hard to “Get” Bitcoin][blockchain-spectrum] by Dhruv Bansal
- [Why Blockchain is Hard][blockchain-is-hard] by Jimmy Song

#### On the uniqueness of Bitcoin:

- [Why Bitcoin is Different][why-different] by Jimmy Song
- [Why Bitcoin Matters][why-matters] by Aleksandar Svetski
- [Bitcoin is Worse is Better][worse-better] by Gwern
- [Bitcoin’s distribution was fair][distribution-fair] by Dan Held

#### On proof-of-work:

- [The Anatomy of Proof-of-Work][pow-anatomy] by Hugo Nguyen
- [Work is Timeless, Stake is Not][pow-timeless] by Hugo Nguyen
- [Blockchain Proof-of-Work Is a Decentralized Clock][decentralized-clock] by Gregory Trubetskoy
- [Bitcoin Doesn't Waste Electricity][no-waste] by Beautyon
- [Nothing is Cheaper than Proof of Work][pow-cheapest] by Paul Sztorc

#### On Bitcoin's identity:

- [Bitcoin’s Existential Crisis][be-a-bitcoin] (original title: What is it like to be a Bitcoin?) by Nic Carter
- [The Many Faces of Bitcoin][many-faces] by Murad Mahmudov and Adam Taché
- [Bitcoin: Past and Future][past-and-future] by Murad Mahmudov and Adam Taché
- [Bitcoin is. And that is enough.][bitcoin-is] by Beautyon
- [That’s not Bitcoin, this is Bitcoin][that-this] by StopAndDecrypt
- [That’s not Bitcoin, that’s BCash][that-this] by StopAndDecrypt

#### On the question of Who Controls Bitcoin?

- [Unpacking Bitcoin's Social Contract][social-contract] by Hasu
- [Bitcoin Miners Beware: Invalid Blocks Need Not Apply][invalid-blocks] by StopAndDecrypt
- [Why America Can’t Regulate Bitcoin][cant-regulate] by Beautyon


#### Bitcoin as an organic system

- [Foreword to The Bitcoin Standard][taleb-foreword] by Nassim Nicholas Taleb
- [Bitcoin is a Decentralized Organism][fungi1] by Brandon Quittem
- [Bitcoin is a Social Creature][fungi2] by Brandon Quittem

#### Cypherpunks

- [A Cypherpunk's Manifesto][cypherpunks-manifesto] by Eric Hughes
- [The Crypto Anarchist Manifesto][crypto-anarchist-manifesto] by Timothy C. May
- [The Cyphernomicon][cyphernomicon] by Timothy C. May

#### Misc

- [An Open Letter to Banks about Bitcoin and Cryptocurrencies][open-letter] by Peter McCormack
- [The Bitcoin Halving and Monetary Competition][bitcoin-halving] by Saifedean Ammous

<!-- - [Guess My Bitcoin Private Key][guess-pk] by Michael Kerbleski -->

---

### Wikis and Guides

There are many great articles written by contributors of the *Bitcoin Wiki*. If you want to know more about a specific topic, the Bitcoin Wiki is a great resource. The *Libbitcoin Wiki* has an amazing list of fallacies, and some great explanations of Bitcoin's properties and principles. If you want to start hacking on Bitcoin you might want to check out the *Bitcoin Developer Guide*.

- [Bitcoin Wiki][wiki-bitcoin] maintained by the Bitcoin community
- [Libbitcoin Wiki][wiki-libbitcoin] by libbitcoin developers
- [Bitcoin Developer Guide][bitcoin-dev-guide] by bitcoin.org

### Further Resources

There are other, more complete curations of Bitcoin content and resources. If
you are looking for longer, more varied lists, the following got you covered:

- [Bitcoin Literature][sni] by the Satoshi Nakamoto Institute
- [Learning Resources][bitcoin-only] by Bitcoin Only
- [Bitcoin Information & Resources][lopp] by Jameson Lopp
- [Curated Bitcoin Articles][guy] by Guy Swann
- [Bitcoin Survivor's Book List][guy-books] by Guy Swann
- [Bitcoin Archive][bitcoin-archive] by Max Hillebrand
- [Bitcoin Rabbit Hole][brh] by Adam Taché
- [Mises Library][mises] by The Mises Institute

{% include bibliography.md %}
