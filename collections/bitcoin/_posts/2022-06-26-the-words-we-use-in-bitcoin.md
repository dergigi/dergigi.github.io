---
layout: post
title: "The Words We Use In Bitcoin"
subtitle: "Words, Language, Terminology, and Linguistic Attacks"
description: "TODO"
date: 2022-06-26
blocktime: TODO
image: /assets/images/TODO.jpg
redirect_from: /terminology
author: Gigi
category: bitcoin
favorite: true
tags:
 - Bitcoin
 - Writing
---

It can't be said often enough: Bitcoin is confusing. However, it's not
complicated like a Rube Goldberg machine is complicated. It's just very
foreign and thus very misunderstood---it is a completely new thing.
"There's nothing to relate it to," as Satoshi put it in [one of his
posts](https://satoshi.nakamotoinstitute.org/posts/bitcointalk/167/).

Because there is nothing to relate it to, we are all having a hard time
wrapping our heads around the various aspects of it. We need to use
words if we want to talk about it in a meaningful way, and words are
what I will focus on. 

I want to talk about two things: (1) the language used in Bitcoin and
(2) the language used to attack bitcoin.

## Part 1: The Language Used In Bitcoin 

Let's get one thing out of the way: it's all numbers, all the way
down. Bitcoin does the one thing that all computers do, which is
actually two things: it takes certain numbers as inputs, does
calculations, and presents the result of said calculations to someone
else. In Bitcoin's case, this "someone else" is another node on the
network---or multiple, to be precise. When stripped down to its bare
essentials, that's all there is to it: math and messages. 

Consequently, we have to use metaphors---and lots of them. Keys,
wallets, addresses, signatures, contracts, mining, dust, fork, oracle,
orphan, seed, witness---the list goes on. 

However, here's the thing with metaphors: "All metaphors are wrong,
but some are useful," to paraphrase George Box. Undoubtedly, many
people are confused precisely because of the shortcomings of these
metaphors. All the labels that we apply to the various concepts in
Bitcoin are wrong, at least a little bit. Some are wrong a lot. Everyone
who ever tried to explain that "your bitcoins are not actually in your
bitcoin wallet" to a glossy-eyed newbie knows what kind of confusion
I'm talking about. 

Unfortunately, this confusion won't be going away anytime soon. And
more worryingly, this confusion is being weaponized by legislators,
politicians, and commentators alike. Those who despise Bitcoin are
trying to pass laws and plant ideas in people's heads that are
bastardizing how Bitcoin works, as well as the language we use to
describe how it works. Consequently, it would be beneficial to get our
language straight. After all, how high are the chances of understanding
something deeply if the words we use to describe said thing are
inadequate?

First, let's go through some of the words we use in Bitcoin and see
where they fall short. We all know these words, and we usually don't
think twice about them. Let's start with "wallet."

### "Wallet" 

A wallet is a piece of software or hardware that makes it easier or more
secure to store and/or spend your bitcoin. It's easy to see that a
wallet is neither one thing nor easily defined; just look at all the
various forms of wallets we came up with over the years: paper wallet,
brain wallet, hardware wallet, mobile wallet, multisig wallet, lightning
wallet, watch-only wallet, and so on.

In the end, we have to understand how Bitcoin operates if we want to get
a grip on what a wallet is. Here is the gist of it: to create a bitcoin
transaction, you need to sign a message with a private key.
Consequently, two things are essential for a wallet: key storage and
signing. But that's not enough, usually. To interact with the Bitcoin
network, you need to interact with a Bitcoin node. You need a way to
access the public information, the "distributed ledger" that is so
often mentioned by finance and crypto bros alike.

{% include image.html name="private-public-bitcoin.png" %}

What we have historically called a bitcoin wallet, thus, is just some
software that manages and stores keys and allows the user to easily use
these keys to sign and broadcast messages. To increase security, said
software might be embedded in a dedicated hardware device. The more
effort it is to spend your sats, the lower the risk of theft or loss of
funds. A wallet might not have any signing capability at all, as is the
case for brain, paper, or watch-only wallets. This begs the question:
how useful is the term wallet?

Interestingly, we have already switched to a different term when it
comes to seed storage. We are not talking about "metal wallets" or
"metal keys" when we talk about key storage; we usually talk about
[seed storage](https://jlopp.github.io/metal-bitcoin-storage-reviews/),
metal seeds, or seed plates nowadays.

Further, we now refer to various multi-signature and timelock constructs
as "vaults"---a powerful and clear distinction. The vault metaphor
makes it immediately obvious that whatever is stored in the vault is
there for the long haul. It isn't spendable easily or quickly.

{% include image.html name="cold-storage.png" %}

I hope that, in the future, we will also manage to do away with the
generic "wallet" term. When it comes to hardware wallets, a change of
terms is already underway. Given that a hardware wallet is nothing but a
small device that is used for signing transactions, a more accurate term
is "[signing device](https://signingdevice.com/)," which is currently
gaining traction thanks to people who understand the technicalities of
Bitcoin deeply.

Maybe usage will morph so that whenever someone says "wallet," it is
implied that it is something that isn't holding massive amounts of
value and that said value is spent easily and quickly, as is the case
for Lightning wallets. In the end, the "wallet" metaphor will always
be wrong in a crucial way: your wallet does not actually hold any of
your coins. That's not how Bitcoin works. It might hold your keys,
which brings us to the next word.

### "Key" 

In the physical world, a key is used to open something. A door, a chest,
a locker, and so on. It might also be used to start something: a car, a
motorbike, a nuclear missile---you get the idea. 

As mentioned before, to create a bitcoin transaction, you use your
private key to sign a message. The keys in bitcoin are cryptographic
keys, and cryptographic keys can be used to create digital signatures.

This, of course, only makes sense in the world of cryptography.
Commonly, a key is used to lock and unlock things. If you want to sign
something, you need a pen. This confusing metaphor is not exclusive to
Bitcoin, of course. Plenty of other software uses cryptographic keys to
sign stuff, which is why in 2010, this abomination of an emoji was
introduced: the padlock, "locked with pen."

{% include image.html name="locked-with-pen.png" %}

Consequently, a "key" in bitcoin is more like a pen, not an actual key.
Granted, you can use your key to "unlock" sats that are "locked" by
yourself or someone else, but still, no matter what metaphor you use, it
will always fall short. It will always fall short because the keys in
Bitcoin are data, nothing else. Your private keys are secret
information---information that nobody but you should ever know. If
someone else gets possession of your private keys, your bitcoin will be
their bitcoin.

To make theft or accidental spending as difficult as possible, keys that
give access to large funds are held in "cold" storage. The secret
information is disconnected from the internet, held on special signing
devices that never touch a general computation device. 

A "hot wallet," on the other hand, brings the secret information
required to move your sats as close to the network as possible. If you
want to spend frequently, your keys have to be readily available. A
lightning wallet, for example, is a "hot" wallet: the private keys that
allow you to spend your sats are connected to the internet at all times.
If your computer or smartphone is compromised, your funds are at risk.
Such are the tradeoffs between "hot" wallets and "cold" storage.

{% include image.html name="hot-wallet.png" %}

"Hot" and "cold" are again, of course, metaphors. A hot wallet is hot
like a microphone in a recording studio is hot. It means that it's
charged, fired up, and to be handled with care, not that its temperature
actually increased.

We can see that language is neither singular nor static, which makes the
line between a useful metaphor and an outright linguistic attack a
blurry one. 

The "key" metaphor, for example, isn't terribly wrong. We can
actually think of signing as unlocking. The underlying elements
responsible for spending sats are referred to as [locking and unlocking
scripts](https://learnmeabitcoin.com/beginners/output_locks), and for
good reason. These scripts are small computer programs that define the
conditions that are required for certain sets of sats to move. You can
think of it like this: those who want to move sats have to solve a
cryptographic puzzle. Usually, a private key is required to fulfill the
spending condition: the key is the key to the puzzle. So if we think
"key to the puzzle," it's not even wrong. And anyway, I'm afraid
we're stuck with it.

Two more things: the reason why your private key can be transformed into
words is that it is, just like everything else in bitcoin, just
information. And the reason why we call this the "seed phrase" is
because your private key is the seed from which all your other keys and,
ultimately, addresses are derived from. This brings us to the next word:
"address."

### "Address" 

This is probably the worst of all. To [quote Luke
Dashjr](https://nitter.net/LukeDashjr/status/1509306158800338945):
"It's so bad, we made a BIP to get rid of it." He is talking about
[BIP
179](https://github.com/bitcoin/bips/blob/master/bip-0179.mediawiki), a
Bitcoin improvement proposal that's sole purpose is to propose a new
term for "address." The new term is "invoice," which is the default
in lightning and is actually more accurate---technically speaking---even
on the base layer. It is more accurate because bitcoin transactions do
not have a "from address," even though you might think they do,
especially if your mind is poisoned with the "address" metaphor. 

The concept of a "[from
address](https://en.bitcoin.it/wiki/From_address)" only exists
heuristically. In Bitcoin, only receiving addresses exist. A transaction
does not contain a from address. A transaction only contains the
aforementioned scripts, which are challenges and solutions to
challenges. If you can solve the challenge, you can move the coins.

The way to think about this properly is to think about flows, not coins.
Let's say you take a big scoop of water out of a lake, and let's
further say that this lake is fed by multiple streams. It's a pristine
lake in a mountainous region, so you fill up your bottle to cool
yourself off with a refreshing drink. You sit down, take a sip, and
ponder the following question: where did the water in your bottle come
from?

From the lake, obviously---but from which stream? And how many molecules
came from the clouds directly, raining down on the lake? Can you tell,
even in principle? A God-like entity probably could, since water
consists of molecules, and you could---at least in theory---track said
molecules. 

You can understand Bitcoin and bitcoin transactions in a similar way:
transactions can have multiple inputs and multiple outputs, i.e.,
inflows and outflows, to stick with the liquid metaphor. However, there
is one important difference: there are no molecules in bitcoin; there is
only accounting. You can't track anything for sure; you can only make
educated guesses---heuristics that are, in many cases, plain wrong.

There are no molecules in bitcoin because every transaction "destroys"
all inputs and creates new outputs. If you are dead-set on thinking
about coins---i.e., if you view every UTXO as a coin of a different
size---you can think about every transaction as a smelting process. All
inputs are liquified in a big furnace, and new coins are created as
outputs.

{% include image.html name="smelting.png" %}

This brings us to the next problematic metaphor: coins.

### "Coins"

I always loved this quote by Peter Van Valkenburgh, musing on the
[locality](https://21lessons.com/3/) of bitcoin---or lack thereof:

"Where is it, at this moment, in transit? \[...\] First, there are no
bitcoins. There just aren't. They don't exist. There are ledger
entries in a ledger that's shared \[...\] They don't exist in any
physical location. The ledger exists in every physical location,
essentially. Geography doesn't make sense here --- it is not going to
help you figuring out your policy here."

What we call "coins" only exist by convention. The protocol is
oblivious to our notion of coins. It only knows sats and spent or
unspent transaction outputs. Spent outputs are inputs of past
transactions. If the sum of one or multiple outputs adds up to 100
million sats, we call it "one bitcoin."

Of course, it is way easier to talk about "coins" and "addresses"
and "wallets," because we know these things intimately from our
real-world experience. We have an intuitive understanding of these
metaphors, so it is clear what is happening if one "coin" moves from
one "wallet" to another "wallet"---or so we think.

{% include image.html name="leather-wallets.png" %}

While the mental image of coins moving from one wallet to the next in an
intuitive and easy-to-understand manner is a comforting one,
nevertheless, it is wrong. What happens under the hood in bitcoin is
much more wonderful, much more elegant, and much more magical than
boomer gold coins moving from one leather purse to the next. It has to
be. Bitcoin is information, not a physical thing. It is teleported at
the speed of light, not moved in any physical sense. It is [Magic
Internet Money](https://21-ways.com/3/) for a reason, and I'm afraid
that we all have to understand its [inner
workings](https://21-ways.com/ch0-04-building-blocks/) to a certain
degree, especially if we want to be properly equipped to fight against
any and all linguistic attacks, present and future.

## Part 2: The Language Used To Attack Bitcoin 

Bitcoin is under attack, always. Money is adversarial by nature because
money is used between parties that aren't fully trusting each other in
the first place. Consequently, a monetary system is an adversarial
system. 

Everyone would love to have something for nothing; to cheat the system
and get away with it. Everyone's a scammer; everyone wants to get some
sats for free.

Bitcoin is the biggest honeypot the world has ever seen; everyone and
their grandma would love to break it. Further, the powers that be are,
at least in part, powerful because of the fiat money printers that are
rendered obsolete by the orange coin. Attacking Bitcoin becomes a
necessary strategy if your very survival is threatened by it.

But, what parts of Bitcoin to attack? It is difficult to nail down what
Bitcoin is and what it consists of in the first place. I like to think
of it as a big hot mess of two parts software and two parts
hardware---or wetware, to be more precise. A mix of technology and
biology, with a large dash of economics on top. 

Viewed in this light---that Bitcoin is made up of [ideas, people, code,
and nodes](https://dergigi.com/2019/05/01/bitcoins-gravity/#loop)---it
is easy to see that some attacks would be more obvious than others.

An obvious attack would be a software exploit that shuts down a large
number of bitcoin nodes, for example. An even more obvious one would be
a large-scale attack on its physical infrastructure. If the foundries
that produce the current generation of SHA-256 ASIC chips are bombed or
various large-scale mining operations go up in flames, we can
confidently say that Bitcoin is under attack. In the same vein, if
bitcoiners are declared the enemy of the state and are incarcerated or
killed en masse, we can also deduce that Bitcoin is under attack.

But: how do you attack an idea? With bad ideas, that's how. The civil
war of the [blocksize
debate](https://bitcoin-resources.com/books/the-blocksize-war) was such
an attack on Bitcoin from the inside, and its resolution was a hard
fork---an economic instantiation of said idea.

In addition to attacks from the inside, we already had many attacks from
the outside. Almost as soon as Bitcoin appeared, it was attacked by
politicians, central bankers, traditional investors wedded to the fiat
system, as well as the economically and technically illiterate. We've
heard it all before: bitcoin is only used by criminals, bitcoin is
worthless, bitcoin's value is based on pure speculation, bitcoin is old
technology, bitcoin is too slow, bitcoin is a bubble, and so on and so
forth.

Allow me to highlight some of the more recent terms and phrases dreamt
up by those who hang on the tits of various money printers---whether it
be politicians, special interest groups, or crypto bros.

### "Unhosted Wallet" 

Two words, one goal: pushing users away from sound money and
independence into something that we all know too well from the fiat
system: trust, and dependency.

The inconspicuous nature of this phrase is what makes this attack so
ingenious. Calling a regular bitcoin wallet "unhosted" gives the
impression that it should be "hosted" in the first place; that something
is missing from how it should be, like an unfinished puzzle or an
unsupported beam. 

The discussion shouldn't be about "hosting" in the first place. It
should be about control. Who can access your funds? Who can freeze your
account? Who is the master, and who is the slave?

Just like "the cloud is someone else's computer," a "hosted wallet"
is someone else's wallet. It should be obvious that the [centralization
of control](https://21lessons.com/12/) is what brought about all the
monetary problems in the first place, but I'm afraid that we will have
to learn the lessons of history and the lessons of Mt. Gox over and over
and over again: money held and controlled by others can and will be
manipulated. We do not want to make this mistake again, which is why the
following became a mantra of sorts: not your keys, not your bitcoin.

Bitcoin wallets are supposed to be unhosted---or, to use a word that
wasn't made up by devilish puppeteers: independent. The purpose of
Bitcoin is to bring full sovereignty to the individual and to remove all
dependencies on trusted third parties. No rulers, no masters, no hosts.
Only peers.

Instead of using the term "unhosted wallet," one could refer to
regular bitcoin wallets as independent or freedom wallets. The opposite
of an independent wallet is a custodial service, which means that you
have a permission slip, nothing more. By using a custodial service, you
destroy what makes bitcoin valuable in the first place. You revert to
the permissioned model of money: a debt relationship between masters and
slaves, which is the fiat system we want to move away from. Some have
all the power; the users have none.

Such a custodial service, a service that they want you to refer to as a
"hosted wallet"---but what might be better described as a slave
wallet---offers nothing but IOUs: permission slips & debt certificates
that can be revoked, multiplied, re-issued, and destroyed at any time.
The slave has nothing; the master has everything.

Make no mistake: this is a war of narratives, and the stakes couldn't
be higher. Freedom vs. dependency, control vs. self-ownership, reliance
vs. responsibility. If anything, a wallet should be self-hosted, and
self-hosting is not a crime. However, we shouldn't think of "hosts"
in the first place. A wallet does not need to be hosted because a
wallet, as we've seen previously, is nothing but a key---private
information---combined with hardware or software that allows you to do
something with said key, e.g., derive addresses or sign transactions.

Having 12 words in your head doesn't make you the owner of an unhosted
brain wallet; that's ridiculous. You don't need permission to remember
12 words by heart, and any law that makes the act of remembering 12
words illegal is a very, very, (very!) stupid law. But even ignoring
this stupidity for a moment, such a law can't possibly be enforced. It
should be rendered meaningless as soon as it is passed. You can't prove
that I have 12 words in my head, just like I can't prove that you are
not thinking about an orange elephant at this very moment. Holding a key
is knowing a secret, and here is the thing about secrets: if you don't
tell, nobody knows.

Letting someone else hold your keys destroys all the benefits that
bitcoin brings with it. If others could be trusted with our money, we
wouldn't have needed Bitcoin in the first place. And if nobody takes
the responsibility of self-custody, Bitcoin will be captured, just like
gold before it.

Consequently, the term "unhosted wallet" is an attack on Bitcoin that
we should take seriously, along with the
[implications](https://dergigi.com/2021/08/02/implications-of-outlawing-bitcoin/)
that a successful ban would entail. It is a most ingenious and
mischievous attack---subtle yet effective, re-framing what a wallet is
and should be.

The fact that someone sat down and came up with this phrase makes me
think that the powers that be are starting to grasp what Bitcoin is and
how empowering it truly is, which is why they will do everything they
can to keep you numb, dependent, and enslaved. "They want more for
themselves and less for everybody else," to quote [George
Carlin](https://youtu.be/3fGQ8pF3wYU). "They don't want well-informed,
well-educated people capable of critical thinking."

\[TODO: Insert video, <https://youtu.be/3fGQ8pF3wYU> \]

Ask yourself: should flipping a coin 256 times be illegal? What about
math? What about having certain thoughts? Do we really want to live in a
world in which having 12 words in your head makes you an outlaw?

\[TODO: Footnote or quote: "The politicians are put there to give you
the idea that you have freedom of choice. You don't. You have no
choice. You have owners. They own you. They own everything. They own all
the important land. They own and control the corporations. They've long
since bought and paid for the Senate, the Congress, the state houses,
the city halls. They got the judges in their back pockets and they own
all the big media companies, so they control just about all of the news
and information you get to hear. They got you by the balls. They spend
billions of dollars every year lobbying. Lobbying to get what they want.
Well, we know what they want. They want more for themselves and less for
everybody else, but I'll tell you what they don't want. They don't
want a population of citizens capable of critical thinking. They don't
want well-informed, well-educated people capable of critical thinking.
They're not interested in that. That doesn't help them. That's
against their interests." --George Carlin\]

### #ChangeTheCode 

Another phrase, another implication. The #ChangeTheCode campaign is
ingenious; you have to give them that. It implies that Bitcoin's code
can't be changed, which couldn't be further from the truth.

Bitcoin is free and open-source software released under the MIT License.
\[Footnote: https://github.com/bitcoin/bitcoin/blob/master/COPYING\]
This means that anyone can change the code, Greenpeace or not, without
having to ask for permission.

Allow me to replicate the license in full:

\[TODO: Insert MIT License\]

Anyone is and always was free to change the code of Bitcoin. Bitcoin's
free and open-source nature is why we have thousands of forks and clones
in the first place, including forks that implement what the
#ChangeTheCode campaigners are proposing. \[Footnote:
https://bitcointalk.org/index.php?topic=5064355.msg47645649#msg47645649\]

While this whole campaign to "change the code" shouldn't be taken
seriously in the first place, the tactics behind it shed some light on
the attacker's motivation and on what is yet to come. #ChangeTheCode
was funded by Chris Larsen, founder of Ripple, the company that created
the shitcoin that is XRP. These kinds of shitcoins can't compete with
Bitcoin on merit because they are permissioned, centralized, and have no
reliable monetary policy, among other things. Consequently, they have to
resort to smear campaigns and hiring reputational hitmen.

The thing about money is that all forms of money are competing, either
directly or indirectly. All monies compete for liquidity, credibility,
attention, value stored, and more. Consequently, the marketing
departments of virtually all shitcoins are directing funds to dismiss or
attack bitcoin in one way or another by implying that Bitcoin can't be
changed, that it is used for illicit activity, or that it is too slow or
wasteful.

Bitcoin, however, is neither slow nor wasteful. Proof-of-work is
insanely efficient if your goal is to create a monetary system that is
free from politics and secured in a public and transparent manner. If
you do not value such a system, it will always seem wasteful.

This, coincidentally, brings us to the next attack.

### "Proof of Stake" 

Let's get one thing out of the way: there is no proof, there is no
stake, and it isn't even remotely comparable to its namesake,
proof-of-work. \[Footnote: https://ethereum.stackexchange.com/a/2405\]

I have written extensively about
[proof-of-work](https://dergigi.com/pow/) in the past, so in the
interest of not trying to repeat myself ad nauseam, I'll try to be
brief: proof-of-work solved the problem of [telling
time](https://dergigi.com/2021/01/14/bitcoin-is-time/) in a
decentralized system, the problem of random selection, the problem of
fair issuance, and the problem of unforgeable costliness in the digital
realm. It embeds [objective
truth](https://dergigi.com/2022/04/03/inalienable-property-rights/#reify)
into a blob of data directly, which is why it is trustless and reliable.
The information "speaks for itself," to quote Satoshi. \[Footnote:
https://satoshi.nakamotoinstitute.org/posts/bitcointalk/327/\]

Proof-of-stake, on the other hand, has no objective truth, no objective
time, no random selection, no fair issuance, no outside cost, no
operational cost, and centralizes over time. It is the perpetual motion
machine of consensus mechanisms, which is to say that it isn't a
consensus mechanism at all. It is rotten at its core because it relies
on trust through and through. 

Proof-of-stake should be called "just trust me, bro," and therein lies
the problem as well as the linguistic trickery: by calling it
proof-of-stake, one might think that it is comparable to proof-of-work:
"Ah, this one is just like the other one! Just another one of those
consensus mechanisms, just as good as Bitcoin's proof-of-work." No.
Wrong. Proof-of-stake is make-believe, and it will inevitably lead to
all the ills that the make-believe world of the fiat monetary system
suffers from, as the various failures of these systems show time and
time again. \[TODO: Add footnotes to failures of voting & timing &
governance\]

## Conclusion 

Words have meanings, which is why we should choose them wisely and
carefully. Bitcoin is not wasteful. Bitcoin is not closed source.
Bitcoin is not controlled by shadowy supercoders. \[TODO: Add Footnotes
(Parker Lewis, GitHub, Blocksize War)\] Bitcoin is not war. An ASIC is
not a gun. If anything, Bitcoin is a Wittgensteinian language-game,
using [words](https://dergigi.com/speech) and chance for [peaceful
conflict resolution](https://dergigi.com/peace). \[TODO: Add Footnote,
Farrington\]

Allocation follows perception, as does public policy. Perception, in
turn, is shaped by our understanding and the very words we use to arrive
at and describe said understanding.

In a world awash in euphemisms and blatant lies, calling something by
its proper name is rebellious in itself. Bitcoin is about freedom and
self-sovereignty, not about asking for permission. It is about
independence and verifiable truth; extreme ownership and responsibility;
hope and human rights. \[TODO: Add Footnotes: hope.com, Gladstein's OFF
thread.\]

The best way to fight bad ideas and bad terminology is with good ideas
and good terminology. Thus, we should all make an effort to call things
by their proper names, try to understand their inner workings, and
explain them in simple terms to others.

Bitcoin isn't as complicated as it might seem at first. It is just very
alien, which is why all metaphors we use to describe it break down at
some point. As we have seen, wallets, keys, addresses, coins, and many
other words we use are insufficient to truly explain what is going on.

The confusion which inevitably arises out of this misunderstanding is
used and abused by Bitcoin's detractors, be it from the church of
"fiat" or the cult of "crypto." \[Footnote: One should note that
"crypto" is another linguistic attack on Bitcoin, making it seem like
there are many other projects that are either interesting, viable, or
comparable. This couldn't be further from the truth. Virtually all of
"crypto" is a scam. The word "crypto" also leaves out the other half
of what makes Bitcoin work, namely the "econ" part. After all, Bitcoin
is a
[cryptoeconomic](https://bitcoin-resources.com/books/cryptoeconomics)
system.\]

Obviously, "honeybadger don't care" when it comes to most of these
attacks. Bitcoin will march on regardless, but that doesn't mean that
we should give in to the various narratives and framings that are set up
by those who want to control and oppress (or those who want to make a
quick buck). Bitcoin is made of people, and it is individual people that
will suffer---either from short-sighted regulations, economic
repercussions, poisonous snake oil, or rug-pull-induced concussions.

Bitcoin is a return to sanity, one that is desperately needed in the
insane world of QE infinity and negative interest rates. The tragicomedy
of our current financial system reads like the introduction to a game
show: "Whose deficit is it anyway? An economy where everything is made
up and the points don't matter."

The points in Bitcoin *do* matter, as do the words that we use to
describe it. Bitcoin is truthful and precise in its
[speech](https://dergigi.com/speech), and we should strive to be too.

