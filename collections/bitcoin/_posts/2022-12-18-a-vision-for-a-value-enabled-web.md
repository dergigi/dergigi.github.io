---
layout: post
title: "A Vision for a Value-Enabled Web"
description: "Gentlemen, we can rebuild it. We have the technology."
date: 2022-12-18
blocktime: 767992
image: /assets/images/vew.jpg
redirect_from: /vew
author: Gigi
category: bitcoin
favorite: true
tags:
 - Bitcoin
 - Writing
---

We all know that the Web is broken in more ways than one. Clickbait,
misinformation, bot farms, anonymous \"troll-demons\"---the list is as
endless as it is depressing. How did we end up here? 

I believe there is a single-phrase answer to all these ills. But
single-phrase answers are often too simplistic and thus too easily
dismissed. So instead, let us first break down the problem into more
manageable chunks. 

Most of the problems we see online are a combination of:

-   Incentives (which are broken),
-   Limitations (which are technical),
-   Credit (which is a poor substitute for cash),
-   Attention (which is a poor substitute for value),
-   Consequences (which are non-existent), and
-   Identity (which should be optional).

After going through these points one by one, I will sketch out
a *Thesis* that will lay the foundation for the *Vision* of the
value-enabled Web. But first, we have to start by wrapping our heads
around the various sub-problems that plague the web. Let\'s start with
the most important one: incentives.

### Incentives

> Show me the incentives, and I\'ll show you the outcome.
>
> <cite>Charlie Munger</cite>

Human action is shaped by the subtle and not-so-subtle structures of the
systems we are embedded in. While actions, values, and motivations are
individual, the carrots and sticks that are a part of the environments
we inhabit---man-made or not---drive collective behavior. If the
incentives are broken, everything is. 

We shouldn\'t be surprised by the polarization and outrage maximization
that we observe online; it\'s a natural outcome of the incentive to
maximize engagement. We shouldn\'t be surprised by \"you are the
product\" business models and the walled gardens of subscription hell;
it\'s a natural outcome of the incentive to capture users and user data.
We shouldn\'t be surprised by clickbait headlines and sensationalism;
it\'s a natural outcome of the evolutionary pressure to farm as many
eyeballs and brain cycles as possible.

So-called \"free\" platforms have to sell ads (or worse: user data) to
make money. And to sell this data, they have to accumulate as much data
as they can and convince their buyers that the data is useful. When
selling to advertisers, for example, they have to convince them that
people are looking. How do they get more people to look? Outrage,
conflict & arguments. Better yet: make people addicted to outrage,
conflict, and arguing, and they will maximize \"time on site\" and other
engagement metrics. Advertisers love these! Who cares about truth,
wisdom, beauty, nuance, or value? Who cares about honest dialogue if you
can maximize clicks instead?

The nature of this conundrum is neither political nor social, at least
not exclusively. It might sound outrageous (oh, the irony!), but I
believe that a big part of it is due to the technical limitations of our
current monetary system and the payment infrastructure built on top of
it.

### Limitations

> Imagine a Being who is omniscient, omnipresent, and omnipotent. What
> does such a Being lack? The answer? Limitation.
> 
> <cite>Jordan Peterson</cite>

Money has limitations, always. While it used to be possible to buy small
items or services for a nickel or even a penny---a pack of chewing gum,
a cup of coffee, a shoe shine, a bottle of coke---the smallest payment
that was possible was limited by the smallest unit of money, i.e., a
penny. For anything smaller than this unit, we had to do batch
transactions, selling multiple items for a single penny; or we had to
give the item away for free.

{% include image.html name="nickel-100yrs-ago.png" caption="Source: What Could You Buy With a Nickel? A century of chump change, by Ignite Spot." %}

Counter-intuitively, the limitations in cyberspace are even larger. Ask
yourself: why can\'t we buy things online for pennies or fractions of a
penny? The answer is quite simple: pennies do not exist online. Never
have, never will. Pennies are physical things: coins that you can hold
in your hand. You can\'t attach them to an email. When it comes to
pennies, all that we ever had online---all that we can ever have---is
information about pennies. We call this information IOUs. An IOU is not
something that you own outright, but it\'s something that you owe to
someone else: \"I owe you.\" It is credit, and credit is different from
base money. Credit requires trust.

### Credit

> All the perplexities, confusions, and distresses in America arise, not
> from defects in their constitution or confederation, not from a want of
> honor or virtue, so much as from downright ignorance of the nature of
> coin, credit, and circulation.
>
> <cite>John Adams</cite>

The problem with credit is that it has various risks. That\'s why we
have to keep track of credit, as well as the creditors and debtors
involved. We have to keep track because we have to do accounting and
risk management. Once the credit is paid---and the outstanding debt is
settled---we don\'t need this information anymore. The deal is done. The
counterparty risk is resolved. There is a reason why \"cash is king.\" 

While not all credits are equal, and credit risks are manifold, I want
to focus on one in particular: counterparty risk.

Counterparty risk is why institutions that are in the business of
dealing with and resolving credit issues, such as VISA & MasterCard, or
its newer incarnations à la PayPal and Venmo, have delayed settlement
and---due to the necessity of having to keep track of everything---high
fees. It is all rooted in counterparty risk, which is a natural
byproduct of trying to use conventional currencies for electronic
payments. Conventional currencies---no matter if they are [sea
shells](https://bitcoin-resources.com/articles/shelling-out-the-originsof-money/),
metal coins, or paper notes---can only be transferred as IOUs when
transferred electronically.

> The root problem with conventional currency is all the trust that\'s
> required to make it work. \[\...\] Banks must be trusted to hold our
> money and transfer it electronically \[\...\]. We have to trust them
> with our privacy, trust them not to let identity thieves drain our
> accounts. Their massive overhead costs make micropayments impossible.
>
> <cite>Satoshi Nakamoto</cite>

We could sum it up as follows:

-   IOUs are credit
-   Credit relies on trust
-   Trust can be broken (by fraud, negligence, or by accident)
-   Fraud leads to chargebacks & insurance constructs
-   These constructs require KYC and lead to high processing costs[^fn-kyc]
    
    
[^fn-kyc]: KYC isn't always a function of evil corporations and/or governments trying to be evil and spying on everyone. When it comes to financial products, it's often just a guard against credit risk.

All these issues stem from having to use IOUs as money, and we have to
use IOUs as money when dealing with conventional currencies (currencies
that are not natively digital, i.e., currencies that are not [reified][reify]
by proof-of-work).[^fn-pow] 

[^fn-pow]: Only [proof-of-work][pow] allows for natively digital money that is trustless and permissionless, i.e., accessible to all and not controlled by a quorum of key holders.

[pow]: {{ '/pow' | absolute_url }}
[reify]: {{ '2022/04/03/inalienable-property-rights/#reify' | absolute_url }}

Because of credit, the goddamn fees are too damn high. Because of
credit, we were never able to do micropayments online. Because of
credit, all the centralized credit institutions need to know their
customers, and they need you to know your customers too. Because of
credit, you have to identify yourself when using any payment app.
Because of credit, every single service you want to pay for online
forces you into a contract that binds you for multiple weeks or months
because single payments below \~\$5 are not economically feasible.

It\'s all because of credit. Cash does not have these problems.[^fn-credit]

[^fn-credit]: Note that I\'m glossing over the fact that all fiat money is credit. Let\'s just assume, for the sake of arguing for a Value-Enabled Web, that all conventional currencies are still backed by gold. Let\'s assume that [nothing happened in 1971](https://wtfhappenedin1971.com/).

### Attention

\"Are you not ashamed that you give your attention to acquiring as much
money as possible, and similarly with reputation and honor, and give no
attention or thought to truth and understanding and the perfection of
your soul?\" ---Plato

The problem of paying attention to the wrong things is not new, but it
is particularly pronounced online. Again: the issue is that when dealing
with conventional currencies, we have to use IOUs as electronic money.
There are two solutions to this problem:

-   Use something other than money as a proxy currency
-   Identify your customers and process payments in large chunks of
    credit (Currently: \~\$5 or more)

Both solutions exist. We call the first \"*attention economy*,\" and the
second \"*subscription hell*.\"

We failed to realize and solve for the fact that our physical money was
terribly unfit for cyberspace, and now we are all paying for it---with
our attention, among other things. One could even argue that the use of
attention as currency is---at least in part---to blame for the loss of
nuanced discourse and the increase in polarization, be it political or
otherwise.[^fn-polarization]

[^fn-polarization]: The visualization of the political polarization in the U.S. Senate is something to behold: [Team Red and Team Blue, drifting apart][pp]. Data by Clio Andris, David Lee, Christian E. Gunning, John A. Selden, Mauro Martino and Marcus J. Hamilton, visualization by [Mauro Martino][mm]

[pp]: {{ '/assets/images/bitcoin/2022-12-18-a-vision-for-a-value-enabled-web/party-polarization.png' | absolute_url }}
[mm]: https://www.mamartino.com/projects/rise_of_partisanship/

Time and attention are the ultimate currencies. There is a reason why we
\"spend\" the first and \"pay\" the latter. And while we do indeed
\"spend\" time and \"pay\" attention, they are unfit as money because we
can\'t accumulate either. There is a reason why using proper money frees
up time and allows for an increase in long-term thinking---both
individually and for society at large. Money is as important for capital
accumulation as it is for distributed cognition, and if the money is
broken, both of these things deteriorate. And with it, so does our time
and attention.

By using attention as the de facto currency online, we destroyed depth
and nuance, as well as our collective attention spans.

{% include image.html name="scarlett.png" caption="Memes: the weapons of attention warfare." %}

Now that I hopefully have yours---your attention, that is---I will
finally use the single-phrase answer that I refused to use in the
beginning: *Bitcoin fixes this.*

Bitcoin fixes this because, for the first time in history, we have
high-velocity, digitally native money without having to rely on credit.
Not IOUs. Not credit relationships. Good, [old-fashioned money][rediscovery].
Cold, hard cash. Better yet: cold, hard cash that is digitally native,
can\'t be debased, and can be sent around at the speed of light. Without
counterparty risk.

[rediscovery]: {{ '/rediscovery' | absolute_url }}

### Consequences

> Every unpunished delinquency has a family of delinquencies.
> 
> <cite>Herbert Spencer</cite>

The consequence of bringing real, non-credit-based money to cyberspace
can hardly be overstated. While the conversation around Bitcoin is still
mostly focused on its limited supply and thus on \"Gold 2.0\" and other
store-of-value metaphors, very few people are focusing on the
high-velocity instant settlement part of it all. While Bitcoin does
bring consequences to the monetary policies of fiat currencies---and
thus to central banks around the world---the more immediate effects are
probably to be found in cyberspace.

While the effects are many, I want to focus on four in particular:
reduced friction, more peer-to-peer, increased neutrality & systemic
stability, and *real* costs.

**Reduced friction:** Intermediaries introduce friction. Cash reduces
friction. An Italian comedian once said that \"the whole *point* of
money is to NOT know your customer.\"[^fn-giacomo] Note that this is also what made
the internet great. The whole point of \"the web\" was to NOT know who
is on the other side of the computer. \"[True Names][names]\" are not 
required, to quote Vernor Vinge.

[names]: {{ '/names' | absolute_url }}

[^fn-giacomo]: "[Good morning, money laundering is beautiful](https://youtu.be/zp1B_i4JlXc?t=1401)" by Giacomo Zucco, Baltic Honeybadger 2022

**Peer-to-peer:** All physical money is peer-to-peer technology. If you
have a physical coin, it is yours. You are not beholden to anyone when
it comes to spending or accepting it. You just have to find another peer
that is willing to trade with you. Yes, intermediaries might still
exist, but they are less important. They are less important because they
are not essential anymore. In a credit-based system, trusted third
parties are not optional: they are absolutely necessary. In a cash-based
system, they are mostly superfluous.[^fn-szabo]

[^fn-szabo]: In Bitcoin, [trusted third parties are security holes][ttpsh].

[ttpsh]: https://bitcoin-resources.com/articles/trusted-third-parties-are-security-holes/

**Neutrality & systemic stability:** Protocols, like math and language,
are neutral systems. Anyone can use them, and no single person or entity
is in charge of it all. The lack of single points of failure is what
makes a system resilient. Openness & neutrality provide inclusivity and
a level playing field for all. When it comes to money, any lack of
openness inevitably leads to financial censorship, and any lack of
neutrality inevitably leads to bailouts, Cantillionaires, and systemic
instability.[^fn-cantillion]

[^fn-cantillion]: Search for ["Cantillion effect"](https://duckduckgo.com/?q=cantillion+effect)

**Real cost:** Electronic money that is natively digital allows us to
attach *real* costs to actions in cyberspace. It allows us to move away
from the exploitative practices of using time and attention as online
currencies. It allows us to move away from extraneous punishments such
as deplatforming and debanking. It allows us to make destructive actions
costly without having to go to the extreme of destroying the public
personas of those who slipped up. It allows us to do all these things
because real money does not require real identity, and yet has a real
cost. Real cost makes spam bots uneconomical and disincentivizes
antisocial behavior.[^fn-saylor]

[^fn-saylor]: Listen to Michael Saylor explain this in detail on the [Bitcoin Matrix][saylor] podcast. 

[saylor]: https://pod.link/1534519469/episode/54931b6a4142335fdc84ce249b59469a

### Identity

> It is funny about money. And it is funny about identity. You are you
> because your little dog knows you, but when your public knows you and
> does not want to pay for you and when your public knows you and does
> want to pay for you, you are not the same you.
>
> <cite>Gertrude Stein</cite>

Identity is prismatic. You act differently in a bar on Friday night than
at church on Sunday. You are a different you in public and in private,
and you are a different you at work and at home. Your behavior adjusts
depending on social circles and circumstances. What\'s offensive to some
is casual banter to others; what\'s outrageous and career-ending in a
public political debate can be the cause for laughs and a good time at a
comedy club. Identity isn\'t singular. Identity is prismatic.

Cyberspace flattens both time and space, dissolving the prismatic
separations that we are so used to in meatspace. The guy replying to
your tweet might be trolling, might be a bot, might be 12 years old,
might be heavily intoxicated, or all of the above. 
You don't know, and that's a feature, not a bug.

Some ~~boomers~~ people bemoan the armies of \"anonymous troll-demons,\" seemingly
incapable of dealing with the roughness of pseudonymous online discourse.[^fn-td]
They want to fix the problem in an old-school way, forcing everyone and
anyone to show their face and attach their meatspace identity to their
online profiles. Those who grew up with and in between trolls---playing
countless hours of competitive online games, for example---know that
online interactions and online identity are to be categorized
differently than offline interactions and identities. \"Don\'t feed the
trolls\" is a wisdom of online culture, and for good reason.

[^fn-td]: Jordan, Jordan, [Jordan](https://twitter.com/jordanbpeterson/status/1593691037121228801)... There is a mute button. There is a block button. Please use it, and don't feed the trolls.

Forcing KYC on any platform, service, or app is a naive and
short-sighted approach to fixing the problem of identity. It is
short-sighted because (a) not everyone has an identity, (b) not everyone
can show their face or use their legal name without endangering
themselves or others, (c) it doesn\'t stop criminal or toxic behavior,
and (d) identity is prismatic, not singular. 

Converting cyberspace into a totalitarian surveillance state beyond the
imaginations of George Orwell (not his real name, by the way) can\'t be
the solution. That much should be obvious. In case it isn\'t obvious,
remind yourself of the Chinese social credit score system or of the fact
that all you needed to do to have your Canadian bank account frozen was
to honk twice (or be close to someone who did).

The more subtle approach to solving the problem of identity is with
reputation, costly identity creation, and real value. In other words: we
should not add our singular government-mandated identities to everything
in cyberspace. Instead, we should allow users---anonymous or not---to
show the world that they are *serious* and *real*.

> Value brings consequence to cyberspace.
>
> <cite>[Michael Saylor][saylor]</cite>

There is an Eastern-European saying: \"If you truly want to hurt a man,
you have to punch him where it hurts most: his wallet.\" Michael Saylor
has the right idea. The way to disincentivize bad behavior is to add
real value to pseudonymous identities. Like a security deposit that is
locked up when you check into a hotel; a security deposit that you lose
if you act in a damaging way.

Of course, one question remains: who defines \"damaging?\" User reports
lead to mob rule; platform decisions lead to authoritarianism. I\'m
confident that better mechanisms will emerge over time as larger parts
of the web become natively value-enabled, and our identities become
disentangled from the monolithic platforms that rule the web at present.
We are at the very beginning of these trends. Decentralized identifiers
are still unknown to most. Very few people know that sats are being
infused into protocols and platforms as we speak. The \"[value
block](https://github.com/Podcastindex-org/podcast-namespace/blob/main/value/value.md)\"
of [Podcasting 2.0](https://podcastindex.org/podcast/920666) is one
example. The way that sats are used on [Stacker
News](https://stacker.news/) is another one.

The interesting thing about cash is that it is decoupled from identity.
You don\'t have to ask for anyone\'s permission to receive and spend
cash. And because money is one way to express value---the main way,
arguably---the free expression thereof is of utmost importance for a
free and prosperous society.

> In most cases personal identity is not salient. When I purchase a
> magazine at a store and hand cash to the clerk, there is no need to know
> who I am.
>
> <cite>Eric Hughes</cite>

Most transactions do not require identity. Most transactions should not
require credit. For most transactions, trusted third parties should be
optional. This was the default for thousands of years, and I believe
that this should be the default going forward, both in meatspace and
cyberspace. 

Infusing real value into the online world doesn\'t mean that reputation
is unimportant or can\'t emerge. Reputation is essential and has emerged
already. What the *Value-Enabled Web* allows for, however, is costliness
when it comes to certain actions. One of these actions is building up
the reputation of a particular identity in the first place. 

Currently, it is cheap to spin up an army of bots to create the
impression of reputation (in the form of fake likes and fake followers).
Adding value to the account creation and/or verification makes this
action costly.

Identity and consequential actions are only one piece of the puzzle. Not
all pieces are known yet, let alone in place. Nevertheless, many people
are working on various technologies and protocols that might help to fix
some of the issues described above. My hope is that---once we understand
the problems properly and have the right thesis and vision---we will
figure out the details as we go along.[^fn-tbd] [^fn-nostr]

[^fn-tbd]: Notable mentions include [TBD][tbd]'s [Web5][web5], [Holepunch][hp], [ION][ion], and [nostr][nostr]. (I'm sure there are many more, feel free to add them via a PR.)

[^fn-nostr]: I wrote the bulk of this post about a month before it was published, so all of this was written before Jack [endorsed] and [funded] nostr, and before Elon [banned] the promotion of it (and other twitter competitors).

[endorsed]: {{ '/assets/images/bitcoin/2022-12-18-a-vision-for-a-value-enabled-web/nostr-endorsement.png' | absolute_url }}
[funded]: {{ '/assets/images/bitcoin/2022-12-18-a-vision-for-a-value-enabled-web/nostr-funding.jpg' | absolute_url }}
[banned]: {{ '/assets/images/bitcoin/2022-12-18-a-vision-for-a-value-enabled-web/nostr-ban.jpg' | absolute_url }}

[tbd]: https://tbd.website
[web5]: https://developer.tbd.website/projects/web5/
[hp]: https://holepunch.to
[ion]: https://identity.foundation/ion/
[nostr]: https://www.nostr.net/
[alby]: https://getalby.com/
[breez]: https://breez.technology/


### Thesis

> Anon out of the earth a fabric huge \\
> Rose like an exhalation, with the sound \\
> Of dulcet symphonies and voices sweet, \\
> Built like a temple
> 
> <cite>John Milton, Paradise Lost</cite>

Let\'s recap: We have seen that the incentives are broken, leading to
\"you are the product\" and \"subscription hell\" business models. We
have seen that, due to the limitations of our monetary system, we were
forced to use IOUs (credit) to do business online. We have seen that,
thanks to the prevailing business models of maximizing eyeballs and
selling advertisements, our attention is farmed, manipulated, sold, and
abused. 

I believe there is a better way. I believe that, when it comes to
selling products and services, cash money will make a comeback. And I
believe that---thanks to the consequences that programmable money brings
to cyberspace---identity on the web can remain optional while still
allowing for reputation and real-world costs to anti-social behavior.

One problem remains: the problem of selling stuff. This particular
problem is only a problem in cyberspace because most \"stuff\" in
cyberspace is not scarce in the traditional sense. We can not sell JPGs
like we can sell apples, even though plenty of confused people try. JPGs
aren\'t scarce. Apples are. JPGs can be reproduced at zero marginal
cost. Apples take time and effort to grow. It is impossible to
distinguish between two copies of a JPG. When you load a JPG on your
screen, it is a copy of the JPG on the server you're retrieving it from,
and the copy on that server does not go away. An apple only exists once
and can\'t be copied perfectly, let alone at zero marginal cost. Copying
something at zero marginal cost leads to a virtually infinite supply of
that thing. It doesn\'t matter if that thing is a JPG, a blog post, or
an mp3 file. If it can be copied by anyone quickly, perfectly, and for
basically free, the supply of said thing quickly approaches infinity. We
move from the analog world of scarcity into the digital world of
abundance. Markets don\'t work in this world. In the words of Jaron
Lanier: \"Markets become absurd as supply approaches infinity.\"[^fn-lanier]

[^fn-lanier]: Lanier's book [Who Owns the Future](https://www.goodreads.com/book/show/15802693-who-owns-the-future) describes the problem we face well, but it fails to offer a solution that is viable and practical. In my humble opinion, Lanier tries to make water not wet.

Traditional paywalls in the form of \"pay 10 cents to read the
blogpost\" are trying to restrict supply and/or access artificially. It
goes against the nature of digital information, which is easy to spread
and hard to stifle. \"Trying to make digital files uncopyable is like
trying to make water not wet,\" to quote Bruce Schneier.

I will do my best to describe this problem in more detail at some point
in the future, but for now, let me try to sum it up as follows: When it
comes to JPGs, mp3 files, blog posts, or similar digital artifacts, we
have to stop pretending that the files themselves are scarce or
precious. They aren\'t. The humans that create them are. Consequently,
we have to find new ways of pricing and monetizing things. New ways of
making sure that the value that is generated accrues to the humans that
are responsible for the added value, without imprisoning information or
users---without trying to make water not wet.

We have to disconnect price from value, and we have to re-think both.

### Vision

> The vision of the eye is limited, but the vision of the heart
> transcends all barriers of time and space.
>
> <cite>Imam Ali</cite>

We now have a money that transcends the conventional barriers of time
and space. A money born in and out of cyberspace, a money that allows us
to make the value-enabled web a reality. 

Bitcoin exists. The Lightning Network exists. [Podcasting
2.0](https://podcastindex.org/podcast/920666) is a
thing. [Value4value](https://value4value.info/) is a thing. But even
outside of the world of Bitcoin, a rethinking of traditional models is
taking place. People sign up to other people\'s Substack, Patreon, or
Twitch; not to buy a tangible thing but to give value back for the value
they receive in return---voluntarily. 

Please note that the vision that I attempt to sketch out here is
not *my* vision. A lot of the parts are being developed as we speak, and
a lot of the changes in behavior are already happening, albeit at the
edges. 

The challenge is to make the experience enjoyable and
seamless *without* reintroducing the ills of counterparty risk. We need
a technological shift as well as a cultural shift. We are not there yet.
Sending people money for information that they can retrieve for free is
still a strange concept for most, but the proliferation of new
podcasting apps and other \"boost\" mechanisms clearly shows that the
cultural shift is happening. And yes, it is still clunky. It is clunky
to enter a lightning address and send sats manually. It is clunky to
click the \"boost\" button and scan a QR code.

<div class="action-buttons">
  <div class="button button-blue button-medium">
    <a href="https://ts.dergigi.com/api/v1/invoices?storeId=3WkiYEG5DaQv7Ak5M2UjUi1pe5FFTPyNF1yAE9CVLNJn&orderId=V4V-vew&checkoutDesc=Value+for+Value%3A+Give+as+much+as+it+is+worth+to+you.&currency=USD">
      Boost! 🚀🎉
    </a>
  </div>
</div>

But we\'ve come a long way, and the trend is going in the right
direction. If we build this right, micropayments will be invisible and
transparent, removing the friction of mental transaction costs while
giving the user complete control and insight. The [new podcast
apps](http://newpodcastapps.com/) that are value-enabled are leading the
way.

One trend I observe keenly is the trend of \"boosts\" and superchats, or
privileged direct messages in general. Attaching a monetary value to
anonymous or pseudonymous notes is a novel way to show your appreciation
directly and clearly. A big \"thank you\" online---directly and with a
costly signal attached. It is a delight to read these small messages. As
an early adopter, I have the privilege of glimpsing into the future as I
read the messages that are sent to `s@ts.dergigi.com` every morning. My
hope is that, given enough time and improvements, this delight will be
ubiquitous.

In general, the trend seems to move towards direct support when it comes
to the creation of digital things that can be reproduced at zero
marginal cost. Everyone will have to grapple with the fundamental nature
of digital information (that it can be reproduced perfectly and for
free) as well as the fundamental nature of humans (that they need to
eat). Everyone. Even platforms like YouTube and Spotify:[^fn-yt]

[^fn-yt]: See [this](https://archive.vn/Di8SE) and [this](https://archive.vn/pLe5B) for YouTube, and [this](https://archive.vn/tVS8n) for Spotify, for example. 

{% include image.html name="spotify-youtube-twitch.png" caption="Today, all of these are credit, sent on credit rails. Tomorrow, they could be sats." %}

What I mean when I say \"value-enabled web\" is a broad framework for
thinking about these technologies and trends, including the open
protocols which allow anyone to participate. Just like the traditional
web is neither a platform nor a company, the value-enabled web is also
not a single new \"thing,\" but rather a collection of protocols that
allows for an open ecosystem to flourish. Openness and
permissionlessness are what made the web great. The same things will
make the value-enabled Web great. 

Interoperability and open standards are absolutely essential to create a
win-win environment for all. It is harder to do and takes a lot of
thought and patience, but it is also the right thing to do. In the long
run, positive-sum games beat zero-sum games any day of the week, even if
closed platforms might be able to sprint ahead in the short term.

The vision is still blurry, but it gets clearer every day. If someone
would force me to write a manifesto describing the vision, it would
revolve around the following ideas:

-   It should be trivial for those who produce value to receive value.
-   It should be trivial for those who cherish valuable content to send
    value to those who produced it.
-   Allow content and metadata to replicate freely.
-   Allow value to flow freely.
-   Do not build walls around content or metadata.
-   Make identity optional.
-   Allow those who add value to participate in value flows.
-   Make unethical behavior costly.
-   Provide tools & services that add value and bring joy.
-   Use money for monetization, not attention.[^fn-bitcoin-only]
-   Sell services, not user data.
-   Keep exit costs low.
-   Build on sats, not IOUs.

[^fn-bitcoin-only]: Bitcoin is [unique](https://bitcoin-resources.com/articles/#bitcoins-uniqueness), as it is the only reliable and battle-tested money that is natively digital and has an unbroken track record when it comes ot the integrity of its monetary policy. No other money can claim this. Consequently, bitcoin is the only sound money in cyberspace. 

Businesses should not spend their time role-playing as credit
institutions. In the best case, they shouldn\'t have to know who their
customers are in the first place. Oh, the good old days when you could
just walk into a store, grab an apple and a newspaper, hand over a
couple of coins, and walk out. This is the magic of cash.

This magic still exists in meatspace stores, but it never existed in
cyberspace---until bitcoin came along. And thanks to lightning, we
finally have a digital bearer instrument---something you can hold in
your *head*, not only in your hands---that has all the properties of
cash *and* is natively digital. This is a big deal. It is a big deal
because it allows us to build a value-enabled web without having trusted
third parties.

I am still a huge fan of the web---and, of course, the internet in
general---but I believe, as all of you do, too, that things could be
better.[^fn-better] In fact, I *know* that
it can be better, as everyone else knows who is at the forefront of
these developments. Once you\'ve received your first streaming payments,
it feels beyond antiquated to deal with the legacy payment rails of our
fiat world.

[^fn-better]: Mastroianni, Adam, and Ethan Ludwin-Peery. “[Things Could Be Better.][better-link]” PsyArXiv, 14 Nov. 2022. Web.

[better-link]: https://psyarxiv.com/2uxwk/

{% include image.html name="fiat-platform-buttons.jpg" caption="The result of using platforms instead of protocols." %}

I don\'t want to enter my credit card details into this random website
form, I just want to pay in sats. I don\'t want to sign up for 12 months
to use a random internet service, I just want to pay in sats. I don\'t
want to enter my email address or my phone number or solve a CAPTCHA
that has me doubting my humanness---I just want to use the service and
pay in sats. 

I don\'t want to deal with paywalls, walled gardens, and extractive
platforms that go through the futile exercise of building walls around
digital files. Information wants to be free, and for good reason. We
should cherish the world of abundance that we managed to create for
ourselves. We shouldn\'t fight this abundance. Instead, we should make
it as easy as possible to let our scarce money flow toward those who
produce value. The people behind Podcasting 2.0 and other pioneers show
us what\'s possible. They are at the forefront of the value-enabled web.

They show us that money can flow as freely as information does today.
They show us that there are no barriers to entry when it comes to
receiving or sending money. They show us that nobody has to be beholden
to platforms or credit institutions. 

If we get this right---if we manage to reduce the use of time and
attention as currencies online---noise and dependence will be reduced,
while freedom and real signal will be maximized. 

Further, when anyone can participate in the monetary flows that are
generated in online environments---without gatekeepers and sign-up
requirements---we can provide more value for more people. 

In a value-enabled web, anyone can benefit, not only those who are in
control of the servers that farm our time and attention. More prosperity for
everyone, not just for those who have credit ratings and bank accounts. 

Include anyone in the value flow. Fatten the long tail.

{% include image.html name="long-tail.png" caption="All the attention economy can do is blow up the head. Sat-flows can fatten the long tail." %}

The vision of a value-enabled web is a return to substance and sanity. A
move away from clickbait and attention farming. A counter to Orwellian
surveillance, deplatforming, and cancel culture.

A move from winner-takes-all to all-can-win. \\
A move from maximizing growth to maximizing value. \\
A move from quantity to quality. \\
A move away from client-server relationships, which more often than not
turn into relationships of masters and slaves, towards peer-to-peer
relationships where everyone is on equal footing.

This vision is larger than [value4value](https://value4value.info/),
although new valuation and monetization models will play a major role.
This vision is larger than adding cash micropayments to certain actions,
although that will be important for some actions. This vision is larger
than programmatic value flows and the automatic disbursement of sats,
although a new way to think about royalties is duly needed. This vision
is larger than [passwordless
authentication](https://lightninglogin.live/), using the timechain as an
anchor for truth and proof-of-existence, or [decentralized
IDs](https://www.seetee.io/podcast/S1E4/daniel-buchner-decentralized-identity-on-bitcoin-w-microsofts-ion/) & [sovereign
computing](https://www.seetee.io/podcast/S3E9/matt-hill-the-era-of-sovereign-computing-is-here/)---even
though all these things are important and necessary.

The vision of a value-enabled web is one of fairness, openness,
positive-sum exchange, and allowing value packets to flow as freely as
data packets did in the past. More value, more humanity, fewer bots,
less spam, and---hopefully---a reduction of dark patterns and addictive
behavior.

It\'s [Day 2][day2] for the internet, and it\'s time to fix it.

[day2]: https://twitter.com/dergigi/status/1596127000590053376

{% include enjoyed.html %}

---

<small>
Find me on nostr: `npub1dvx5ervack0pzrfcpvzzngpgj8cngxs052apk88c8g7mf4r789jqf2w0r9`
</small>

<small>
Thanks to [Tomer], [Allen], Daniel, and [my patrons][patreon] for providing
excellent feedback on earlier drafts of this writing. Any parts that are still
confusing and incomplete are due to my blurry vision and stubbernness.
</small>

[Tomer]: https://twitter.com/TomerStrolight/
[Allen]: https://twitter.com/allenf32/
[patreon]: https://www.patreon.com/dergigi

---

<small>
Found a typo? Please help me [fix it].
</small>

[fix it]: https://github.com/dergigi/dergigi.github.io/blob/master/collections/bitcoin/_posts/2022-12-18-a-vision-for-a-value-enabled-web.md

<small>
Building something that fits this vision, or want to help? Reach out to `vew@dergigi.com`
</small>

---