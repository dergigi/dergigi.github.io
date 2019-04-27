---
layout: page
title: 21 Lessons
subtitle: What I've learned from falling down the Bitcoin rabbit hole
category: bitcoin
---

## Lesson 17: Telling time takes work

It is often said that bitcoins are mined because thousands of computers
work on solving *very complex* mathematical problems. Certain problems
are to be solved, and if you compute the right answer, you "produce" a
bitcoin. While this simplified view of bitcoin mining might be easier to
convey, it does miss the point somewhat. Bitcoins aren't produced or
created, and the whole ordeal is not really about solving particular
math problems. Also, the math isn't particularly complex. What is
complex is *telling the time* in a decentralized system.

As outlined in the whitepaper, the proof-of-work system (aka mining) is
a way to implement a distributed timestamp server.

{% include image.html otherPost="2019-04-02-technological-teachings-of-bitcoin" name="bitcoin-whitepaper-timestamp-wide.png" caption="Excerpts from the whitepaper. Did someone say timechain?" %}

When I first learned how Bitcoin works I also thought that proof-of-work
is inefficient and wasteful. After a while, I started to [shift my
perspective on Bitcoin's energy consumption][energy]. It seems that
proof-of-work is still widely misunderstood today, in the year 10 AB
(after Bitcoin).

Since the problems to be solved in proof-of-work are made up, many
people seem to believe that it is *useless* work. If the focus is purely
on the computation, this is an understandable conclusion. But Bitcoin
isn't about computation. It is about *independently agreeing on the
order of things.*

Proof-of-work is a system in which everyone can validate what happened
and in what order it happened. This independent validation is what leads
to consensus, an individual agreement by multiple parties about who owns
what.

In a radically decentralized environment, we don't have the luxury of
absolute time. Any clock would introduce a trusted third party, a
central point in the system which had to be relied upon and could be
attacked. "Timing is the root problem," as Grisha Trubetskoy [points
out]. And Satoshi brilliantly solved this problem by implementing a
decentralized clock via a proof-of-work blockchain. Everyone agrees
beforehand that the chain with the most cumulative work is the source of
truth. It is per definition what actually happened. This agreement is
what is now known as Nakamoto consensus.

> "The network timestamps transactions by hashing them into an ongoing
> chain which serves as proof of the sequence of events witnessed"
> <cite>[Satoshi Nakamoto][Nakamoto]</cite>

Without a consistent way to tell the time, there is no consistent way to
tell before from after. Reliable ordering is impossible. As mentioned
above, Nakamoto consensus is Bitcoin's way to consistently tell the
time. The system's incentive structure produces a probabilistic,
decentralized clock, by utilizing both greed and self-interest of
competing participants. The fact that this clock is imprecise is
irrelevant because the order of events is eventually unambiguous and can
be verified by anyone.

Thanks to proof-of-work, both the work *and* the validation of the work
are radically decentralized. Everyone can join and leave at will, and
everyone can validate everything at all times. Not only that, but
everyone can validate the state of the system *individually*, without
having to rely on anyone else for validation.

Understanding proof-of-work takes time. It is often counter-intuitive,
and while the rules are simple, they lead to quite complex phenomena.
For me, shifting my perspective on mining helped. Useful, not useless.
Validation, not computation. Time, not blocks.

Bitcoin taught me that telling the time is tricky, especially if you are
decentralized.

## Lesson 18: Move slowly and don't break things

It might be a dead mantra, but "move fast and break things" is still how
much of the tech world operates. The idea that it doesn't matter if you
get things right the first time is a basic pillar of the *fail early,
fail often* mentality. Success is measured in growth, so as long as you
are growing everything is fine. If something doesn't work at first you
simply pivot and iterate. In other words: throw enough shit against the
wall and see what sticks.

Bitcoin is very different. It is different by design. It is different
out of necessity. As Satoshi [pointed out], e-currency has been tried
many times before, and all previous attempts have failed because there
was a head which could be cut off. The novelty of Bitcoin is that it is
a beast without heads.

> "A lot of people automatically dismiss e-currency as a lost cause
> because of all the companies that failed since the 1990's. I hope it's
> obvious it was only the centrally controlled nature of those systems
> that doomed them."
> <cite>[Satoshi Nakamoto][pointed out]</cite>

One consequence of this radical decentralization is an inherent
resistance to change. "Move fast and break things" does not and will
never work on the Bitcoin base layer. Even if it would be desirable, it
wouldn't be possible without convincing *everyone* to change their ways.
That's distributed consensus. That's the nature of Bitcoin.

> "The nature of Bitcoin is such that once version 0.1 was released, the
> core design was set in stone for the rest of its lifetime."
> <cite>[Satoshi Nakamoto][4]</cite>

This is one of the many paradoxical properties of Bitcoin. We all came
to believe that anything which is software can be changed easily. But
the nature of the beast makes changing it bloody hard.

As [Hasu] beautifully shows in [Unpacking Bitcoin's Social Contract],
changing the rules of Bitcoin is only possible by *proposing* a change,
and consequently *convincing* all users of Bitcoin to adopt this change.
This makes Bitcoin very resilient to change, even though it is software.

This resilience is one of the most important properties of Bitcoin.
Critical software systems have to be antifragile, which is what the
interplay of Bitcoin's social layer and its technical layer guarantees.
Monetary systems are adversarial by nature, and as we have known for
thousands of years solid foundations are essential in an adversarial
environment.

> "The rain came down, the floods came, and the winds blew, and beat on
> that house; and it didn't fall, for it was founded on the rock."
> <cite>[Matthew 7:24--27]</cite>

Arguably, in this parable of the wise and the foolish builders Bitcoin
isn't the house. It is the rock. Unchangeable, unmoving, providing the
foundation for a new financial system.

Just like geologists, who know that rock formations are always moving
and evolving, one can see that Bitcoin is always moving and evolving as
well. You just have to know where to look and how to look at it.

The introduction of [pay to script hash] and [segregated witness] are
proof that Bitcoin's rules can be changed if enough users are convinced
that adopting said change is to the benefit of the network. The latter
enabled the development of the [lightning network], which is one of the
houses being built on Bitcoin's solid foundation. Future upgrades like
[Schnorr signatures] will enhance efficiency and privacy, as well as
scripts (read: smart contracts) which will be indistinguishable from
regular transactions thanks to [Taproot]. Wise builders do indeed build
on solid foundations.

Satoshi wasn't only a wise builder technologically. He also understood
that it would be necessary to make wise decisions ideologically.

> "Being open source means anyone can independently review the code. If
> it was closed source, nobody could verify the security. I think it's
> essential for a program of this nature to be open source."
> <cite>[Satoshi Nakamoto][5]</cite>

Openness is paramount to security and inherent in open source and the
free software movement. As Satoshi pointed out, secure protocols and the
code which implements them have to be open --- there is no security
through obscurity. Another benefit is again related to decentralization:
code which can be run, studied, modified, copied, and distributed freely
ensures that it is spread far and wide.

The radically decentralized nature of Bitcoin is what makes it move
slowly and deliberately. A network of nodes, each run by a sovereign
individual, is inherently resistant to change --- malicious or not. With
no way to force updates upon users the only way to introduce changes is
by slowly convincing each and every one of those individuals to adopt a
change. This non-central process of introducing and deploying changes is
what makes the network incredibly resilient to malicious changes. It is
also what makes fixing broken things more difficult than in a
centralized environment, which is why everyone tries not to break things
in the first place.

Bitcoin taught me that moving slowly is one of its features, not a bug.

## Lesson 19: Privacy is not dead

If pundits are to believed, privacy has been dead [since the 80ies]. The
pseudonymous invention of Bitcoin and other events in recent history
show that this is not the case. Privacy is alive, even though it is by
no means easy to escape the surveillance state.

Satoshi went through great lengths to cover up his tracks and conceal
his identity. Ten years later, it is still unknown if Satoshi Nakamoto
was a single person, a group of people, male, female, or a
[time-traveling AI] which bootstrapped itself to take over the world.
Conspiracy theories aside, Satoshi chose to identify himself to be a
Japanese male, which is why I don't assume but respect his chosen gender
and refer to him as *he*.

{% include image.html otherPost="2019-04-02-technological-teachings-of-bitcoin" name="nope.png" caption="I am not Dorian Nakamoto." %}

Whatever his real identity might be, Satoshi was successful in hiding
it. He set an encouraging example for everyone who wishes to remain
anonymous: it is possible to have privacy online.

> "Encryption works. Properly implemented strong crypto systems are one
> of the few things that you can rely on."
> <cite>[Edward Snowden]</cite>

Satoshi wasn't the first pseudonymous or anonymous inventor, and he
won't be the last. Some have directly imitated this pseudonymous
publication style, like Tom Elvis Yedusor of [MimbleWimble] fame, while
others have published advanced mathematical proofs while remaining
completely [anonymous].

It is a strange new world we are living in. A world where identity is
optional, contributions are accepted based on merit, and people can
collaborate and transact freely. It will take some adjustment to get
comfortable with these new paradigms, but I strongly believe that all of
this has the potential to change the world for the better.

We should all remember that privacy is a [fundamental human right]. And
as long as people exercise and defend these rights the battle for
privacy is far from over. Bitcoin taught me that privacy is not dead.

## Lesson 20: Cypherpunks write code

Like many great ideas, Bitcoin didn't come out of nowhere. It was made
possible by utilizing and combining many innovations and discoveries in
mathematics, physics, computer science, and other fields. While
undoubtedly a genius, Satoshi wouldn't have been able to invent Bitcoin
without the giants on whose shoulders he was standing on.

> "He who only wishes and hopes does not interfere actively with the
> course of events and with the shaping of his own destiny."
> <cite>[Ludwig Von Mises]</cite>

One of these giants is Eric Hughes, one of the founders of the
cypherpunk movement and author of the [cypherpunk manifesto]. It's hard
to imagine that Satoshi wasn't influenced by this manifesto. It speaks
of many things which Bitcoin enables and utilizes, such as direct and
private transactions, electronic money and cash, anonymous systems, and
defending privacy with cryptography and digital signatures.

> "Privacy is necessary for an open society in the electronic age.
> [...] Since we desire privacy, we must ensure that each party to a
> transaction have knowledge only of that which is directly necessary
> for that transaction. [...]
>
> Therefore, privacy in an open society requires anonymous transaction
> systems. Until now, cash has been the primary such system. An
> anonymous transaction system is not a secret transaction system.
> [...]
>
> We the Cypherpunks are dedicated to building anonymous systems. We are
> defending our privacy with cryptography, with anonymous mail
> forwarding systems, with digital signatures, and with electronic
> money.
>
> Cypherpunks write code."
> <cite>[Eric Hughes][cypherpunk manifesto]</cite>

Cypherpunks do not find comfort in hopes and wishes. They actively
interfere with the course of events and shape their own destiny.
Cypherpunks write code.

Thus, in true cypherpunk fashion, Satoshi sat down and started to write
code. Code which took an abstract idea and proved to the world that it
actually worked. Code which planted the seed of a new economic reality.
Thanks to this code, everyone can verify that this novel system actually
works, and every 10 minutes or so Bitcoin proofs to the world that it is
still living.

{% include image.html otherPost="2019-04-02-technological-teachings-of-bitcoin" name="bitcoin-v0.1-code.png" caption="Code excerpts from Bitcoin version 0.1.0" %}

To make sure that his innovation transcends fantasy and becomes reality,
Satoshi wrote code to implement his idea before he wrote the whitepaper.
He also made sure [not to delay] any release forever. After all,
"there's always going to be one more thing to do."

> "I had to write all the code before I could convince myself that I
> could solve every problem, then I wrote the paper."
> <cite>[Satoshi Nakamoto][6]</cite>

In today's world of endless promises and doubtful execution, an exercise
in dedicated building was desperately needed. Be deliberate, convince
yourself that you can actually solve the problems, and implement the
solutions. We should all aim to be a bit more cypherpunk.

Bitcoin taught me that cypherpunks write code.

## Lesson 21: Metaphors for Bitcoin's future

In the last couple of decades, it became apparent that technological
innovation does not follow a linear trend. Whether you believe in the
technological singularity or not, it is undeniable that progress is
exponential in many fields. Not only that, but the rate at which
technologies are being adopted is accelerating, and before you know it
the bush in the local schoolyard is gone and your kids are using
Snapchat instead. Exponential curves have the tendency to slap you in
the face way before you see them coming.

Bitcoin is an exponential technology built upon exponential
technologies. [Our World in Data] beautifully shows [the rising speed of
technological adoption], starting in 1903 with the introduction of
landlines. Landlines, electricity, computers, the internet, smartphones;
all follow exponential trends in price-performance and adoption. Bitcoin
does too.

{% include image.html otherPost="2019-04-02-technological-teachings-of-bitcoin" name="tech-adoption.png" caption="Bitcoin is literally off the charts." %}

Bitcoin has not one but [multiple network effects], all of which
resulting in exponential growth patterns in their respective area:
price, users, security, developers, market share, and adoption as global
money.

Having survived its infancy, Bitcoin is continuing to grow every day in
more aspects than one. Granted, the technology has not reached maturity
yet. It might be in its adolescence. But if the technology is
exponential, the path from obscurity to ubiquity is short.

{% include image.html otherPost="2019-04-02-technological-teachings-of-bitcoin" name="mobile-phone.png" caption="Mobile phone, ca 1965 vs 2019." %}

In his 2003 [TED talk], Jeff Bezos chose to use electricity as a
metaphor for the web's future. All three phenomena --- electricity, the
internet, Bitcoin --- are *enabling* technologies, networks which enable
other things. They are infrastructure to be built upon, foundational in
nature.

Electricity has been around for a while now. We take it for granted. The
internet is quite a bit younger, but most people already take it for
granted as well. Bitcoin is ten years old and has entered public
consciousness during the last hype cycle. Only the earliest of adopters
take it for granted. As [more time] passes, more and more people will
recognize Bitcoin as something which simply is.

In 1994, the internet was still confusing and unintuitive. Watching this
old [recording of the Today Show] makes it obvious that what feels
natural and intuitive now actually wasn't back then. Bitcoin is still
confusing and alien to most, but just like the internet is second nature
for digital natives, spending and [stacking] sats will be second nature
to the bitcoin natives of the future.

> "The future is already here --- it's just not very evenly
> distributed."
> <cite>[William Gibson]</cite>

In 1995, about 15% of American adults used the internet. Historical
[data from the Pew Research Center] shows how the internet has woven
itself into all our lives. According to a [consumer survey] by Kaspersky
Lab, 13% of respondents have used Bitcoin and its clones to pay for
goods in 2018. While payments aren't the only use-case of bitcoin, it is
some indication of where we are in Internet time: in the early- to
mid-90s.

In 1997, Jeff Bezos stated in a [letter to shareholders] that "this is
Day 1 for the Internet," recognizing the great untapped potential for
the internet and, by extension, his company. Whatever day this is for
Bitcoin, the vast amounts of untapped potential are clear to all but the
most casual observer.

{% include image.html otherPost="2019-04-02-technological-teachings-of-bitcoin" name="internet-evolution-black-dates.png" caption="The internet, 1982 vs 2005. Source: cc-by Merit Network, Inc. and Barrett Lyon, Opte Project" %}


Bitcoin's first node went online in 2009 after Satoshi mined the
[genesis block] and released the software into the wild. His node wasn't
alone for long. Hal Finney was one of the first people to pick up on the
idea and join the network. Ten years later, as of this writing, more
than 10.000 nodes are [running bitcoin].

The protocol's base layer isn't the only thing growing exponentially.
The lightning network, a second layer technology, is growing at an even
faster rate.

In January 2018, the lightning network had [40 nodes] and 60 channels.
In April 2019, the network grew to more than 4000 nodes and around
40.000 channels. Keep in mind that this is still experimental technology
where loss of funds can and does occur. Yet the [trend is clear][Jameson Lopp]:
thousands of people are [reckless] and eager to use it.

{% include image.html otherPost="2019-04-02-technological-teachings-of-bitcoin" name="lnd-growth-lopp-black.png" caption="Lightning Network, January 2018 vs December 2018. Source: Jameson Lopp" %}

To me, having lived through the meteoric rise of the web, the parallels
between the internet and Bitcoin are obvious. Both are networks, both
are exponential technologies, and both enable new possibilities, new
industries, new ways of life. Just like electricity was the best
metaphor to understand where the internet is heading, the internet might
be the best metaphor to understand where bitcoin is heading. Or, in the
words of Andreas Antonopoulos, Bitcoin is [*The Internet of Money*].
These metaphors are a great reminder that while history doesn't repeat
itself, it often rhymes.

Exponential technologies are hard to grasp and often underestimated.
Even though I have a great interest in such technologies, I am
constantly surprised by the pace of progress and innovation. Watching
the Bitcoin ecosystem grow is like watching the rise of the internet in
fast-forward. It is exhilarating.

My quest of trying to make sense of Bitcoin has led me down the pathways
of history in more ways than one. Understanding ancient societal
structures, past monies, and how communication networks evolved were all
part of the journey. From the handaxe to the smartphone, technology has
undoubtedly changed our world many times over. Networked technologies
are especially transformational: writing, roads, electricity, the
internet. All of them changed the world. Bitcoin has changed mine and
will continue to change the minds and hearts of those who dare to use
it.

Bitcoin taught me that understanding the past is essential to
understanding its future. A future which is just beginning.

---

# Conclusion

<!-- Chapter I -->
Bitcoin is a child of the internet. Even though it requires computers to
function efficiently, computer science is not sufficient to understand
it. The implications of this new technology are far-reaching. Bitcoin is
not only borderless but also boundaryless in respect to academic
disciplines.

In this first part of the *Teachings of Bitcoin* I tried to outline some
of the philosophical implications of this fascinating machinery. In part
two I will try to discuss what Bitcoin taught me about economics. Part
three will conclude this series to show what I, a technologist, have
learned from the tech perspective by stumbling into Bitcoin.

As mentioned above, I think that any answer to the question *"What have
you learned from Bitcoin?"* will always be incomplete. The systems are
too dynamic, the space moving too fast, and the topics too numerous.
Politics, game theory, monetary history, network theory, finance,
cryptography, information theory, censorship, law and regulation, human
organization, psychology --- all these and more are areas of expertise
which might help to grasp what Bitcoin is.

<!-- Chapter II -->
As we leave the “blockchain not bitcoin” days behind us, most people start
to realize that there is not a single invention which encapsulates the
genius of Bitcoin. It is the combination of multiple, previously unrelated
pieces, glued together by game theoretical incentives, which make up the
revolution that is Bitcoin.

For me, the economic teachings of Bitcoin are as fascinating as the
philosophical ones examined in [part one][I]. Being a technophile, I can’t wait
to tell you what Bitcoin taught me about technology in the third and final
part of this series.

As mentioned before, I think that any answer to the question “What have you
learned from Bitcoin?” will always be incomplete. The symbiosis of the
two living systems examined here — Bitcoin and economics — is too intertwined
and evolving too fast to ever be fully understood by a single person.

> “I don’t believe we shall ever have a good money again before we take
the thing out of the hands of government, that is, we can’t take it violently
out of the hands of government, all we can do is by some sly roundabout way
introduce something that they can’t stop.”
> <cite>[Friedrich Hayek][sly roundabout way]</cite>

Learning these lessons enabled me to finally understand what Hayek meant by
the above. I believe that Bitcoin is the sly, roundabout way to re-introduce
sound money to the world. Thanks to the economic teachings of Bitcoin I
learned what good money is and that having it is possible.

<!-- Chapter III -->
Technology is all about the application of scientific knowledge to solve
problems in the real world. Every technology has to make tradeoffs in
terms of efficiency, cost, security, and many other properties. Just
like there is no perfect solution to deriving a square from a circle,
any solution to the problems which Bitcoin tries to solve will always be
imperfect as well.

Da Vinci tried to solve the intractable problem of squaring a circle
with the *Vitruvian Man*, which places a human right at the center of
it. Bitcoin tries to solve the double spending problem with sovereign
individuals, which places humans behind each node, effectively removing
any concept of a center.

Bitcoin's headless nature shows us that seemingly simple concepts like
creating accounts and agreeing on time require creative solutions in
decentralized systems. It also shows that such systems can be
astonishingly antifragile. How do you best kill something if the best
point of attack is everywhere?

Even with all its quirks and seeming shortcomings, Bitcoin undoubtedly
works. It keeps producing blocks roughly every ten minutes and does so
beautifully. The longer Bitcoin continues to work, the more people will
opt-in to use it.

> "It's true that things are beautiful when they work. Art is function."
> <cite>[Giannina Braschi]</cite>

Bitcoin is growing exponentially, blurring the line between disciplines.
It isn't clear where the realm of pure technology ends and where another
realm begins. I tried to differentiate the [economic teachings of Bitcoin][II]
from the [philosophical][I] and the technological ones, which turned out
more difficult than expected.

Just like in biological systems, removing one part seems to affect the
whole. Maybe the most important lesson is that Bitcoin should be
examined holistically, from multiple angles, if one would like to have a
complete picture. Just like removing one part from Bitcoin destroys the
whole (*\*cough\** blockchain *\*cough\**), examining parts of Bitcoin
in isolation seems to taint the understanding of the whole system.

My journey continues, and as mentioned in part one, I think that any
answer to the question *"What have you learned from Bitcoin?"* will
always be incomplete. In any case, I've learned that the philosophy,
economics, and technology of Bitcoin interact in a complex feedback
loop, and I hope that these 21 lessons are just the beginning of what
I've learned from Bitcoin.

---

## Acknowledgments

Thanks to the countless authors and content producers who
influenced my thinking on Bitcoin and the topics it touches. There
are too many to list them all, but I'll do my best to name a few.

<!-- Part I -->
-   Thanks to [Arjun Balaji] for [the tweet] which motivated me to
    write this.
-   Thanks to [Marty Bent] for providing endless food for thought
    and entertainment. If you are not subscribed to [Marty's Ƀent] and
    [Tales From The Crypt], you are missing out. Cheers [Matt] and Marty
    for guiding us through the rabbit hole.
-   Thanks to [Michael Goldstein] and [Pierre Rochard] for curating and
    providing the greatest Bitcoin literature via the [Nakamoto
    Institute]. And thank you for creating the [Noded Podcast]
    which influenced my philosophical views on Bitcoin substantially.
-   Thanks to [Peter McCormack] for his [honest tweets] and the [What
    Bitcoin Did] podcast, which keeps providing great insights from many
    areas of the space.
<!-- Part II -->
-   Thanks to [Andreas M. Antonopoulos] for all the [educational
    material] he has put out over the years.
-   Thanks to [Saifedean Ammous] for his convictions, savage tweets, and
    writing The Bitcoin Standard
-   Thanks to [Francis Pouliot] for sharing his excitement about
    finding out about the [timechain].
-   Thanks to [Jannik], [Brandon], [Matt], [Camilo], [Daniel], [Michael], and
    [Raphael] for providing feedback to early drafts of some lessons.
    Special thanks to [Jannik] who proofread multiple drafts multiple times.
<!-- Part III -->
-   Thanks to [Dhruv Bansal] and [Matt Odell] for taking the time to
    discuss some of these ideas with me.
-   Last but not least, thanks to all the bitcoin maximalists, shitcoin
    minimalists, shills, bots, and shitposters which reside in the
    beautiful garden that is crypto twitter. And finally, thank *you* for
    reading this. I hope you enjoyed it as much as I did enjoy writing it.
    Feel free to [reach out to me] on twitter. My DMs are open.

## Further Reading

There exists an almost endless list of books and essays on the topics
discussed above and economic thought in general. The books and articles
listed below are but a small selection which were particularly influential
in my thinking. I am grateful for all the people who shared their
insights, past and present.

<!-- Part I -->
-   [The Bitcoin Standard: The Decentralized Alternative to Central Banking][book1]
    by Saifedean Ammous
-   [Abundance: The Future Is Better Than You Think][book2] by Peter Diamandis
-   [The Mind’s I][book3] by Daniel Dennett and Douglas Hofstadter
-   [Money, blockchains, and social scalability][article1] by Nick Szabo
-   [Bitcoin’s Existential Crisis, originally published][article2] as What is it like to be a Bitcoin? by Nic Carter
-   [Unpacking Bitcoin’s Social Contract: A framework for skeptics][article3] by Hasu
-   [Why America Can’t Regulate Bitcoin][article4] by Beautyon
-   [Why Bitcoin is different][article5] by Jimmy Song
-   Peter Van Valkenburg on [Preserving the Freedom to Innovate with Public Blockchains][podcast1] hosted by Peter McCormack

<!-- Part II -->
-   [*Bitcoin: A Peer-to-Peer Electronic Cash System*] by Satoshi
    Nakamoto
-   [*Mastering Bitcoin*] by Andreas Antonopoulos
-   [*The Internet of Money*] by Andreas Antonopoulos
-   [*Inventing Bitcoin*] by Yan Pritzker
-   [*Applied Cryptography*] by Bruce Schneier
-   [*Reflections on Trusting Trust*] by Ken Thompson
-   [*Cypherpunks*] by Julian Assange with Jacob Appelbaum
-   [*The Anatomy of Proof-of-Work*] by [Hugo Nguyen]
-   [*Blockchain Proof-of-Work Is a Decentralized Clock*] by Gregory Trubetskoy
-   [*Unpacking Bitcoin's Social Contract*] by [Hasu]
-   [*Why Bitcoin Matters*] by [Aleksandar Svetski]
-   [*Guess My Bitcoin Private Key*] by [Michael Kerbleski]

<!-- Part III -->

-   [The Bitcoin Standard: The Decentralized Alternative to Central Banking][bitcoin-standard] by Saifedean Ammous
-   [Economics in One Lesson] by Henry Hazlitt
-   [Human Action] by Ludwig von Mises
-   [The Ethics of Money Production] by Jörg Guido Hülsmann
-   [The Denationalization of Money] by Friedrich Hayek
-   [The Machinery of Freedom] by David D. Friedman
-   [The Case Against The Fed] by Murray N. Rothbard
-   [End the Fed] by Ron Paul
-   [Shelling Out: The Origins of Money] by Nick Szabo
-   [The Bitcoin Halving and Monetary Competition] by [Saifedean Ammous]
-   [The Bullish Case For Bitcoin] by [Vijay Boyapati]
-   [Bitcoin’s distribution was fair] by [Dan Held]

### Translations

-   Chapter I is available in [Spanish][Spanish Translation] thanks to [@CamiloJdL][Camilo].
-   [Chapter I][tr-philosophy], [Chapter II][tr-economics], and [Chapter III][tr-technology] is available in Turkish thanks to [@deniz_zgur][deniz]. Note that the order of the chapters is different in the Turkish translation.

<!-- Internal -->
[I]: {% post_url /bitcoin/2018-12-21-philosophical-teachings-of-bitcoin %}
[II]: {% post_url /bitcoin/2019-01-11-economic-teachings-of-bitcoin %}
[III]: {% post_url /bitcoin/2019-04-02-technological-teachings-of-bitcoin %}
[energy]: {% post_url /bitcoin/2018-06-10-bitcoin-s-energy-consumption %}

<!-- Twitter -->
[Arjun Balaji]: https://twitter.com/arjunblj
[Saifedean Ammous]: https://twitter.com/saifedean
[Dhruv Bansal]: https://twitter.com/dhruvbansal
[Matt Odell]: https://twitter.com/matt_odell
[Matt]: https://twitter.com/matt_odell
[Michael Goldstein]: https://twitter.com/bitstein
[Pierre Rochard]: https://twitter.com/pierre_rochard
[Hugo Nguyen]: hhttps://twitter.com/hugohano
[Jannik]: https://twitter.com/jnnksbrt
[Camilo]: https://twitter.com/CamiloJdL
[Michael]: https://twitter.com/michael_rogger
[Daniel]: https://twitter.com/dnlggr
[Raphael]: https://twitter.com/dinemuatta
[Dan Held]: https://twitter.com/danheld
[Vijay Boyapati]: https://twitter.com/real_vijay
[Hasu]: https://twitter.com/hasufl
[Brandon]: https://twitter.com/bquittem
[Andreas M. Antonopoulos]: https://twitter.com/aantonop
[Francis Pouliot]: https://twitter.com/francispouliot_
[Aleksandar Svetski]:https://twitter.com/AleksSvetski
[Michael Kerbleski]: https://twitter.com/kerbleski
[deniz]: https://twitter.com/deniz_zgur
[3Blue1Brown]: https://twitter.com/3blue1brown
[Arjun Balaji]: https://twitter.com/arjunblj
[the tweet]: https://twitter.com/arjunblj/status/1050073234719293440
[Saifedean Ammous]: https://twitter.com/saifedean
[Dhruv Bansal]: https://twitter.com/dhruvbansal
[Matt Odell]: https://twitter.com/matt_odell
[Matt]: https://twitter.com/matt_odell
[Michael Goldstein]: https://twitter.com/bitstein
[Pierre Rochard]: https://twitter.com/pierre_rochard
[Nakamoto Institute]: http://nakamotoinstitute.org
[Jannik]: https://twitter.com/jnnksbrt
[Dan Held]: https://twitter.com/danheld
[Vijay Boyapati]: https://twitter.com/real_vijay
[stacking]: https://twitter.com/hashtag/stackingsats

<!-- Part I -->
[*Bitcoin: A Peer-to-Peer Electronic Cash System*]: https://bitcoin.org/bitcoin.pdf
[*Mastering Bitcoin*]: https://bitcoinbook.info/
[*The Internet of Money*]: https://theinternetofmoney.info/
[*Inventing Bitcoin*]: http://inventingbitcoin.com/
[*Applied Cryptography*]: https://www.schneier.com/books/applied_cryptography/
[*Reflections on Trusting Trust*]: https://www.archive.ece.cmu.edu/~ganger/712.fall02/papers/p761-thompson.pdf
[*Cypherpunks*]: https://www.orbooks.com/catalog/cypherpunks/
[*The Anatomy of Proof-of-Work*]: https://bitcointechtalk.com/the-anatomy-of-proof-of-work-98c85b6f6667
[*Blockchain Proof-of-Work Is a Decentralized Clock*]: https://grisha.org/blog/2018/01/23/explaining-proof-of-work/
[*Unpacking Bitcoin's Social Contract*]: https://medium.com/s/story/bitcoins-social-contract-1f8b05ee24a9
[*Why Bitcoin Matters*]: https://hackernoon.com/why-bitcoin-matters-c8bf733b9fad
[*Guess My Bitcoin Private Key*]: https://medium.com/@kerbleski/a-dance-with-infinity-980bd8e9a781


[Nakamoto Institute]: http://nakamotoinstitute.org

[trojan-paper]: http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.720.9288&rep=rep1&type=pdf

[thick layer of ice]: https://en.wikipedia.org/wiki/Last_Glacial_Maximum
[xkcd \#1125]: https://xkcd.com/1225/
[SHA-256]: https://en.wikipedia.org/wiki/SHA-2
[hash functions]: https://en.bitcoin.it/wiki/Block_hashing_algorithm
[Satoshi Nakamoto]: https://bitcointalk.org/index.php?topic=191.msg1585#msg1585
["How secure is 256 bit security?"]: https://www.youtube.com/watch?v=S9JGmA5_unY
[Bruce Schneier]: https://www.schneier.com/
[flip bits perfectly]: https://en.wikipedia.org/wiki/Landauer%27s_principle#Equation
[Dyson sphere]: https://en.wikipedia.org/wiki/Dyson_sphere
[2]: https://books.google.com/books?id=Ok0nDwAAQBAJ&pg=PT316&dq=%22These+numbers+have+nothing+to+do+with+the+technology+of+the+devices;%22&hl=en&sa=X&ved=0ahUKEwjXttWl8YLhAhUphOAKHZZOCcsQ6AEIKjAA#v=onepage&q&f=false
[wrench attack]: https://xkcd.com/538/
[call to cryptographic arms]: https://cryptome.org/2012/12/assange-crypto-arms.htm
[P actually equals NP]: https://en.wikipedia.org/wiki/P_versus_NP_problem#P_=_NP
[specific problems]: https://en.wikipedia.org/wiki/Discrete_logarithm#Cryptography
[epii]: https://bitcointalk.org/index.php?topic=4994.msg140770#msg140770
[Elliptic curve examples]: https://commons.wikimedia.org/wiki/File:ECClines-2.svg
[Emmanuel Boutet]: https://commons.wikimedia.org/wiki/User:Emmanuel.boutet
[Satoshi]: http://p2pfoundation.ning.com/forum/topics/bitcoin-open-source
[Nakamoto]: https://bitcoin.org/bitcoin.pdf
[majority]: https://bitcoin.org/en/developer-guide#term-51-attack
[*Reflections on Trusting Trust*]: https://www.archive.ece.cmu.edu/~ganger/712.fall02/papers/p761-thompson.pdf
[Carl Sagan]: https://en.wikipedia.org/wiki/Cosmos_%28Carl_Sagan_book%29
[found a way]: https://scholar.google.com/scholar?hl=en&as_sdt=0%2C5&q=Stealthy+Dopant-Level+Hardware+Trojans&btnG=
[secp256k1]: https://en.bitcoin.it/wiki/Secp256k1
[has already happened]: https://en.wikipedia.org/wiki/Dual_EC_DRBG
[backdoors]: https://en.wikipedia.org/wiki/Elliptic-curve_cryptography#Backdoors
[Gitian]: https://gitian.org/
[bootstrapping]: https://www.gnu.org/software/guix/manual/en/html_node/Bootstrapping.html
[Guix]: https://www.gnu.org/software/guix/
[pull-request]: https://github.com/bitcoin/bitcoin/pull/15277
[flip a coin]: https://github.com/bitcoinbook/bitcoinbook/blob/develop/ch04.asciidoc#private-keys
[Glacier]: https://glacierprotocol.org/
[points out]: https://grisha.org/blog/2018/01/23/explaining-proof-of-work/
[pointed out]: http://p2pfoundation.ning.com/forum/topics/bitcoin-open-source?commentId=2003008%3AComment%3A9493
[4]: https://bitcointalk.org/index.php?topic=195.msg1611#msg1611
[Unpacking Bitcoin's Social Contract]: https://uncommoncore.co/unpacking-bitcoins-social-contract/
[Matthew 7:24--27]: https://en.wikipedia.org/wiki/Parable_of_the_Wise_and_the_Foolish_Builders
[pay to script hash]: https://en.bitcoin.it/wiki/Pay_to_script_hash
[segregated witness]: https://en.bitcoin.it/wiki/Segregated_Witness
[lightning network]: https://lightning.network/
[Schnorr signatures]: https://github.com/sipa/bips/blob/bip-schnorr/bip-schnorr.mediawiki#cite_ref-6-0
[Taproot]: https://lists.linuxfoundation.org/pipermail/bitcoin-dev/2018-January/015614.html
[5]: https://bitcointalk.org/index.php?topic=13.msg46#msg46
[since the 80ies]: https://books.google.com/ngrams/graph?content=privacy+is+dead&year_start=1970&year_end=2019&corpus=15&smoothing=3&share=&direct_url=t1%3B%2Cprivacy%20is%20dead%3B%2Cc0
[time-traveling AI]: https://blockchain24-7.com/is-crypto-creator-a-time-travelling-ai/
["I am not Dorian Nakamoto."]: http://p2pfoundation.ning.com/forum/topics/bitcoin-open-source?commentId=2003008%3AComment%3A52186
[Edward Snowden]: https://www.theguardian.com/world/2013/jun/17/edward-snowden-nsa-files-whistleblower
[MimbleWimble]: https://github.com/mimblewimble/docs/wiki/MimbleWimble-Origin
[anonymous]: https://oeis.org/A180632/a180632.pdf
[fundamental human right]: http://www.un.org/en/universal-declaration-human-rights/
[Ludwig Von Mises]: https://mises.org/library/human-action-0/html/pp/613
[cypherpunk manifesto]: https://www.activism.net/cypherpunk/manifesto.html
[version 0.1.0]: https://bitcointalk.org/index.php?topic=68121.0
[not to delay]: https://bitcointalk.org/index.php?topic=199.msg1670#msg1670
[6]: http://www.metzdowd.com/pipermail/cryptography/2008-November/014832.html
[Our World in Data]: https://ourworldindata.org/
[the rising speed of technological adoption]: https://www.visualcapitalist.com/rising-speed-technological-adoption/
[multiple network effects]: https://www.thrivenotes.com/the-7-network-effects-of-bitcoin/
[TED talk]: https://www.ted.com/talks/jeff_bezos_on_the_next_web_innovation
[more time]: https://en.wikipedia.org/wiki/Lindy_effect
[recording of the Today Show]: https://www.youtube.com/watch?v=UlJku_CSyNg
[William Gibson]: https://www.npr.org/2018/10/22/1067220/the-science-in-science-fiction
[data from the Pew Research Center]: https://www.pewinternet.org/2014/02/27/part-1-how-the-internet-has-woven-itself-into-american-life/
[consumer survey]: https://www.kaspersky.com/blog/money-report-2018/
[letter to shareholders]: http://media.corporate-ir.net/media_files/irol/97/97664/reports/Shareholderletter97.pdf
[genesis block]: https://en.bitcoin.it/wiki/Genesis_block
[running bitcoin]: https://twitter.com/halfin/status/1110302988?lang=en
[40 nodes]: https://bitcoinist.com/bitcoin-lightning-network-mainnet-nodes/
[reckless]: https://twitter.com/hashtag/reckless
[Jameson Lopp]: https://twitter.com/lopp/status/1077200836072296449
[*The Internet of Money*]: https://theinternetofmoney.info/
[Giannina Braschi]: https://en.wikipedia.org/wiki/Braschi%27s_Empire_of_Dreams
[educational material]: https://antonopoulos.com/
[timechain]: https://twitter.com/francispouliot_/status/1106028072799744002
[reach out to me]: https://twitter.com/dergigi
[tr-technology]: https://medium.com/@denizozzgur/blockchainin-teknolojik-%C3%B6%C4%9Fretileri-34ae5a6949a7




[bitcoin-standard]: http://amzn.to/2L95bJW
[Economics in One Lesson]: https://mises.org/library/economics-one-lesson
[Human Action]: https://mises.org/library/human-action-0
[The Ethics of Money Production]: https://mises.org/library/ethics-money-production
[The Denationalization of Money]: https://nakamotoinstitute.org/literature/denationalisation/
[The Machinery of Freedom]: http://daviddfriedman.com/The_Machinery_of_Freedom_.pdf
[The Case Against The Fed]: https://mises.org/sites/default/files/The%20Case%20Against%20the%20Fed_2.pdf
[End the Fed]: https://en.wikipedia.org/wiki/End_the_Fed
[Shelling Out: The Origins of Money]: http://www.fon.hum.uva.nl/rob/Courses/InformationInSpeech/CDROM/Literature/LOTwinterschool2006/szabo.best.vwh.net/shell.html
[The Bitcoin Halving and Monetary Competition]: https://thesaifhouse.wordpress.com/2016/07/09/the-bitcoin-halving-and-monetary-competition/
[The Bullish Case For Bitcoin]: https://medium.com/@vijayboyapati/the-bullish-case-for-bitcoin-6ecc8bdecc1
[Bitcoin’s distribution was fair]: https://blog.picks.co/bitcoins-distribution-was-fair-e2ef7bbbc892

<!-- Part II -->
[Blind monks]: https://en.wikipedia.org/wiki/Blind_men_and_an_elephant
[the question]: https://twitter.com/arjunblj/status/1050073234719293440
[so much debt]: http://www.usdebtclock.org/
[aarontaycc]: https://twitter.com/aarontaycc/status/1072880815661436928?s=19
[bitcoindunny]: https://twitter.com/BitcoinDunny/status/935330541263519745
[many confessions]: https://twitter.com/search?q=bitcoin%20AND%20I%20AND%20%28learned%20OR%20taught%29&src=typd
[Ludwig von Mises]: https://mises.org/library/human-action-0/html/p/607
[Robert Kiyosaki]: https://www.youtube.com/watch?v=vkCXytxwH-M
[real wizardry]: https://external-preview.redd.it/8d03MWWOf2HIyKrT8ThBGO4WFv-u25JaYqhbEO9b1Sk.jpg?width=683&auto=webp&s=dc5922d84717c6a94527bafc0189fd4ca02a24bb
[visible to anyone]: https://github.com/bitcoin/bitcoin
[Henry Hazlitt]: https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=3&cad=rja&uact=8&ved=2ahUKEwi058KmgNrfAhWHneAKHbmCDFUQFjACegQIExAC&url=https%3A%2F%2Fmises.org%2Fsystem%2Ftdf%2FHenry%2520Hazlitt%2520Economics%2520in%2520One%2520Lesson.pdf%3Ffile%3D1%26type%3Ddocument&usg=AOvVaw0_kRtaNPMez0UdYGsrKThv
[hyperinflates]: https://en.wikipedia.org/wiki/Hyperinflation
[inflation can not help]: https://books.google.com/books?id=zZu3AAAAIAAJ&dq=%22only+while+it+accelerates%22&focus=searchwithinvolume&q=%22steady+inflation+cannot+help%22
[sly roundabout way]: https://youtu.be/EYhEDxFwFRU?t=1124
[history of inflation]: https://books.google.com/books?id=l_A1vVIaYBYC&pg=PA142&dq=%22history+is+largely+a+history+of+inflation%22&hl=en&sa=X&ved=0ahUKEwi90NDLrdnfAhUprVkKHUx1CmIQ6AEIKjAA#v=onepage&q=%22history%20is%20largely%20a%20history%20of%20inflation%22&f=false
[currently suffering]: https://en.wikipedia.org/wiki/Crisis_in_Venezuela#Economic_crisis
[list of historical currencies]: https://en.wikipedia.org/wiki/List_of_historical_currencies
[currently in use]: https://en.wikipedia.org/wiki/List_of_currencies
[by the laws of physics]: https://link.medium.com/9fzq2L0J3S
[*Gold-to-Decent-Suit Ratio*]: https://www.businesswire.com/news/home/20110819005774/en/History-Shows-Price-Ounce-Gold-Equals-Price
[multiple theories]: https://en.wikipedia.org/wiki/Theory_of_value_%28economics%29
[Plato]: http://www.perseus.tufts.edu/hopper/text?doc=plat.+euthyd.+304b
[paradox of value]: https://en.wikipedia.org/wiki/Paradox_of_value
[subjective]: https://en.wikipedia.org/wiki/Subjective_theory_of_value
[Satoshi Nakamoto]: http://p2pfoundation.ning.com/xn/detail/2003008:Comment:9562
[Nick Szabo]: http://unenumerated.blogspot.com/
[*Shelling Out: The Origins of Money*]: https://nakamotoinstitute.org/shelling-out/
[Ron Paul]: http://endthefed.org/books/
[oldest coin]: https://www.britishmuseum.org/explore/themes/money/the_origins_of_coinage.aspx
[coin debasement]: https://en.wikipedia.org/wiki/Methods_of_coin_debasement
[*Thaler*]: https://en.wikipedia.org/wiki/Thaler
[Berlin-George]: https://en.wikipedia.org/wiki/File:Bohemia,_Joachimsthaler_1525_Electrotype_Copy._VF._Obverse..jpg
[silver certificates]: https://en.wikipedia.org/wiki/Silver_certificate_%28United_States%29
[bimetallic standard]: https://en.wikipedia.org/wiki/Bimetallism
[joint debate]: https://www.youtube.com/watch?v=hYzX3YZoMrs
[money multiplier]: https://en.wikipedia.org/wiki/Money_multiplier
[auditability]: https://i.ytimg.com/vi/ThFGs347MW8/maxresdefault.jpg
[Keynesian]: https://en.wikipedia.org/wiki/Keynesian_economics
[Austrian]: https://en.wikipedia.org/wiki/Austrian_School
[Fr. Bernard W. Dempsey, S.J.]: https://www.jstor.org/stable/29769582
[algorithmically controlled]: https://en.bitcoin.it/wiki/Controlled_supply
[Jörg Guido Hülsmann]: https://mises.org/sites/default/files/The%20Ethics%20of%20Money%20Production_2.pdf
[how much money there is]: https://en.wikipedia.org/wiki/Money_supply
[stopped publishing]: https://www.federalreserve.gov/Releases/h6/discm3.htm
[last few years]: https://minerals.usgs.gov/minerals/pubs/mcs/2018/mcs2018.pdf
[my calculations]: https://www.wolframalpha.com/input/?i=volume+of+190000+metric+tons+gold+%2F+olympic+swimming+pool+volume
[much energy]: https://medium.com/@dergigi/bitcoins-energy-consumption-6dd7d7a2e463
[universal speed limit]: https://en.wikipedia.org/wiki/Speed_of_light#Upper_limit_on_speeds
[fair distribution]: https://blog.picks.co/bitcoins-distribution-was-fair-e2ef7bbbc892
[tr-economics]: https://medium.com/@denizozzgur/bitcoinin-ekonomi-%C3%B6%C4%9Fretileri-a3e87dcff525

<!-- Part I -->
[this question]: https://twitter.com/arjunblj/status/1050073234719293440
[automated social contract]: https://medium.com/@hasufly/bitcoins-social-contract-1f8b05ee24a9
[Morpheus]: https://en.wikipedia.org/wiki/Red_pill_and_blue_pill#The_Matrix_(1999)
[Marty Bent]: https://twitter.com/martybent
[Satoshi Nakamoto]: https://bitcointalk.org/index.php?topic=195.msg1611#msg1611
[Ralph Merkle]: http://merkle.com/papers/DAOdemocracyDraft.pdf
[changing people's diets]: https://motherboard.vice.com/en_us/article/ne74nw/inside-the-world-of-the-bitcoin-carnivores
[Abundance]: https://www.diamandis.com/abundance
[Saifedean Ammous]: https://www.bayernlb.de/internet/media/de/ir/downloads_1/bayernlb_research/sonderpublikationen_1/bitcoin_munich_may_28.pdf
[Jimmy Song]: https://medium.com/@jimmysong/why-bitcoin-is-different-e17b813fd947
[Gold: The Extraordinary Metal]: https://www.muenzeoesterreich.at/eng/discover/for-investors/gold-the-extraordinary-metal
[in regards to a bat]: https://en.wikipedia.org/wiki/What_Is_it_Like_to_Be_a_Bat%3F
[What is it like to be a bitcoin?]: https://medium.com/s/story/what-is-it-like-to-be-a-bitcoin-56109f3e6753
[Ship of Theseus]: https://en.wikipedia.org/wiki/Ship_of_Theseus
[trolley problem]: https://en.wikipedia.org/wiki/Trolley_problem
[Daniel Dennett]: https://www.lehigh.edu/~mhb0/Dennett-WhereAmI.pdf
[1st Amendment]: https://en.wikipedia.org/wiki/First_Amendment_to_the_United_States_Constitution
[Peter Van Valkenburgh]: https://www.whatbitcoindid.com/podcast/coin-centers-peter-van-valkenburg-on-preserving-the-freedom-to-innovate-with-public-blockchains
[a magic spell]: {% post_url /bitcoin/2018-08-17-the-magic-dust-of-cryptography %}  
[Crypto Wars]: https://en.wikipedia.org/wiki/Crypto_Wars
[illegal numbers]: https://en.wikipedia.org/wiki/Illegal_number
[illegal primes]: https://en.wikipedia.org/wiki/Illegal_prime
[Beautyon]: https://hackernoon.com/why-america-cant-regulate-bitcoin-8c77cee8d794
[Jameson Lopp]: https://twitter.com/lopp/status/1061415918616698881
[Marty's Ƀent]: http://eepurl.com/cROArD
[Tales From The Crypt]: https://talesfromthecrypt.libsyn.com/
[Michael Goldstein]: https://medium.com/@bitstein
[Pierre Rochard]: https://medium.com/@pierre_rochard
[Nakamoto Institute]: https://nakamotoinstitute.org/
[Noded Podcast]: https://noded.org/
[Peter McCormack]: https://medium.com/@whatbitcoindid
[honest tweets]: https://twitter.com/PeterMcCormack/status/1073196778705559553
[What Bitcoin Did]: https://www.whatbitcoindid.com/podcast
[book1]: http://amzn.to/2L95bJW
[book2]: https://www.diamandis.com/abundance
[book3]: https://en.wikipedia.org/wiki/The_Mind%27s_I
[article1]: http://unenumerated.blogspot.com/2017/02/money-blockchains-and-social-scalability.html
[article2]: https://medium.com/s/story/what-is-it-like-to-be-a-bitcoin-56109f3e6753
[article3]: https://medium.com/s/story/bitcoins-social-contract-1f8b05ee24a9
[article4]: https://hackernoon.com/why-america-cant-regulate-bitcoin-8c77cee8d794
[article5]: https://medium.com/@jimmysong/why-bitcoin-is-different-e17b813fd947
[podcast1]: https://www.whatbitcoindid.com/podcast/coin-centers-peter-van-valkenburg-on-preserving-the-freedom-to-innovate-with-public-blockchains
[Spanish translation]: https://medium.com/@dergigi/ense%C3%B1anzas-filos%C3%B3ficas-de-bitcoin-8ae1357357f9
[tr-philosophy]: https://medium.com/@denizozzgur/bitcoinin-felsefi-%C3%B6%C4%9Fretileri-e7df2338a2fc
