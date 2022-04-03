undefined

Gigi\

### Looting the Loop  {#Looting-the-Loop}

Because Bitcoin is just information, it has to use information to
protect other information via a process of *hiding* and *binding*. The
confusing part in Bitcoin is the binding part because Bitcoin, as we
alluded to earlier, uses *economic binding* in addition to the good old
mathematical binding of public-key cryptography.

We should remember that information can only be protected
probabilistically, no matter what. As we have seen, information is
non-scarce. You can have the same idea as someone
else *without* stealing the idea. No matter the secret, in theory, you
could always be lucky and guess the secret.

The reason why modern cryptography works is that it makes use of an
outrageously large search space, which makes any randomly chosen secret
virtually impossible to guess in practice. We can confidently slap the
label \"impossible to guess\" on it because guessing---flipping
bits---requires time and energy. In Bitcoin, for example, the space of
all possible private keys is so mind-bogglingly large that no
supercomputer could ever guess it in a reasonable amount of time. It
will always take [millions of years](https://21lessons.com/15/), even
using the best computers that we could possibly build. This is why,
practically speaking, securing information with strong cryptography
is *unbreakably* secure. Given that the private information remains
private, of course.

Using private information is the conventional way to secure public
information cryptographically. It is also the conventional way to ensure
its validity and integrity. Someone holds a private key, and this person
or entity is responsible for keeping the key secret. Consequently, the
security/integrity of the encrypted/signed public information relies on
this trusted third party.

Here is the riddle to be solved: how can we create public information
with similar security and data integrity guarantees *without the use of
any private information*?

Remember that money is just a ledger, a list of who owes what to whom.
If we want this ledger to be trustworthy, it needs to
be *public* and *auditable*. Further, we need strong assurances
of *authenticity*, i.e., we need to be able to *trustlessly verify* that
nobody tempered with past records and that the records are not made up.
That\'s why we need the [costly
signal](https://reyify.com/blog/pow-a-pictorial-essay) of proof-of-work:
to create a past that is unfathomably expensive to fake. You are bound
to the result via the very real costs that had to be sunk into creating
the signal in the first place.

In Bitcoin, *anyone* can look at the block hash of the current block,
729170, and know at a glance, just by looking at the leading zeroes,
that a lot of work---or, in other words: time, energy, and money---went
into creating this string:

0000000000000000000627b7cbed46b1184677d48fef56649ef269bc3bfc345c

It was *costly* to find this number. Someone or something had to think
very hard to be able to speak it. The reason why we can be so confident
in the costliness of this block hash is that---according to the
rules---its very existence is *highly* improbable. The fact that it
exists and that it is *valid* is what makes it part of the ongoing game
that all bitcoiners play. Its validity makes it accepted by the network,
turning it into one building block of the timechain\'s past. 

Further, this building block contains *all* of Bitcoin\'s history. It
contains a hash of the previous block, and the previous one contains a
hash of the block that came before, and so on and so forth, all the way
back to the Genesis block. This little piece of information speaks for
all of Bitcoin\'s unchanging history up to the point of its creation. A
history that you can\'t simply make up---you have to bring it into
existence by rolling the dice, by playing the game according to its
rules.

One of the clearest thinkers when it comes to this property of
proof-of-work is probably Adam Gibson, who wrote at length about
this [reification of
information](https://reyify.com/blog/pow-a-pictorial-essay). Because
thinking requires energy, and because playing in accordance with the
rules requires thinking, Bitcoin\'s blocks are informational constructs
that behave as if they have concrete, material existence.

> \"Demanding a low entropy output from a hash function results in
> a *costly signal which is very unambiguous and easy to
> verify* \[\...\] The creation of these hashes represents a kind
> of **reification of information**. The zeros in the above block hash
> digest are just a pattern, but hidden in that pattern is a real
> energetic raw cost, that can be quantified. \[\...\] In an adversarial
> environment, one in which there are stakes, picking out the \"real\"
> from the \"fake\" means identifying signals which are objective, and
> the only signals that are objective are the ones that
> are **demonstrably costly**. \[\...\]\" ---Adam Gibson

Demonstrably costly signals are the only thing that can publicly prove
that something has happened---without the need of any secret
information. And, more importantly, without the need for any keepers of
this secret information. This is also why all good money needs to have
unforgeable costliness, as Szabo pointed out in the past. Anything that
doesn\'t have any real cost---cost that is immediately obvious and can
be verified by anyone at a glance---can be trivially forged or simply
made up. In the words of  [Hugo
Nguyen](https://bitcointechtalk.com/the-anatomy-of-proof-of-work-98c85b6f6667):
\"By attaching energy to a block, we give it \'form\', allowing it to
have real weight & consequences in the physical world.\"

If we remove this energy, let\'s say by moving from miners to signers,
we reintroduce trusted third parties into the equation, which removes
the tie to physical reality that makes the past self-evident.

It is this energy, this *weight*, that protects the public ledger. By
bringing this unlikely information into existence, miners create a
transparent force-field around past transactions, securing everyone\'s
value in the process---including their own---without any use of private
information.

Here comes the part that is tricky to understand: the value that is
protected is not only value in the *monetary* sense, but the
very *moral* value of the integrity of the system. By extending the
honest chain with the most work, miners choose to act *honestly*,
protecting the very rules that everyone agrees to. In turn, they are
rewarded monetarily by the collective that is the network.

It is important to differentiate between *morality* and *monetary
value* because Bitcoin wasn\'t created to *make* money; it was created
to *fix the money*. It was created to go beyond the broken moral
frameworks of existing monies, to bring something into existence that
can\'t be captured and corrupted easily. 

This is why Satoshi chose to build a system with an unchanging soul.
This is why the rules have been \"set in stone\" since day one.
Bitcoin\'s consensus rules are what provide definitive answers to
the *ethical* questions listed in the opening paragraph. Questions of
money production, control, freedom, and sovereignty. Bitcoin embodies
moral values; its rules define how the game of money should be played.
Stray from these values, and you will destroy what made Bitcoin valuable
to people in the first place. Break the moral code, and it will be
worthless in the long run.

The circular nature of Bitcoin makes everything hang together: the
supply cap of 21 million derives from the full sovereignty of the user
over her node. It is protected by a symbiotic relationship between
users, miners, and the nodes that make up the network. Bitcoin puts the
individual at the center, removing the need for rulers and putting rules
in place instead.

Bitcoin is free software, free as in freedom. As long as users have and
make use of the [four essential
freedoms](https://www.gnu.org/philosophy/) inherent in free software,
anyone is able to run the numbers and voice their individual
preferences. By speaking their own individual truths and rejecting the
lies of others, users can easily and cheaply pronounce that [invalid
blocks need not
apply](https://medium.com/hackernoon/bitcoin-miners-beware-invalid-blocks-need-not-apply-51c293ee278b). 

Likewise, miners are free to run the numbers on their end, providing
public protection via a perfect competition that only requires thinking
and speaking---or, in other words: electricity and a communications
channel---to enter. Miners are rewarded with a currency that is internal
to the network, which aligns incentives and makes the relationship
symbiotic.

In other words: the security of the public record depends on the value
of the sats that are held in private, and the value of the sats
depends---at least in part---on the security guarantees of the public
record and the confidence in the integrity of its past and future. 

To disrupt this ongoing game in any meaningful sense, you have to
overwhelm all honest players by expending resources only useful in the
game itself. It is way more profitable to protect the system and its
rules: honest play is rewarded, dishonest play is not. Further, any
disruption will devalue the sats that are used to repay those who play
the game. In addition to all of that, if a motivated attacker continues
to disrupt the play for prolonged periods of time, there is always the
chance of a large-scale user revolt, as has happened in the past. Users
are free to change the rules ever so slightly---via a user-activated
soft-fork, for example---which provides an additional layer of
protection against disruption. Any dishonest player thus always runs the
risk of losing out on rewards completely. Just like the mathematical
binding that makes any guessing of Bitcoin\'s private information
unfeasible, this economic binding makes any corruption of Bitcoin\'s
public information unprofitable.

Because of this, Bitcoin can be understood as \"vitrium flexile,\" to
use a mythical reference. The glass of Roman legend---a transparent
substance that is virtually indestructible. Bitcoin creates a global
vault made of this substance, and because it can *only* protect its
native asset, it is as if this glass vault would empty itself as soon as
someone tried to break the glass.

### Ten-tenths of the Law {#Ten-tenths-of-the-Law}

The whole point of Bitcoin is to remove humans from the issuance and
control of money. As Szabo put it: \"\[Bitcoin\] implements data
integrity via computer science rather than via \'call the cops\'\".
Nobody can help you if you lose forget your private key. Nobody can
reverse a transaction once it is confirmed and buried beneath a couple
of blocks. It doesn\'t matter who you call.

We all know the saying that possession is nine-tenths of the law.
Bitcoin, however, is binary. In Bitcoin, possession is ten-tenths of the
law. And it is not possession in the ordinary sense. 

A private key is information, which means that possession
is *knowledge*---secret knowledge. In that sense, \"owning\" bitcoin is
knowing a secret. This fact is why you can hold bitcoin in your head. In
Bitcoin, \"owning\" is knowing.

However, \"ownership\" alone is not enough. You also need the
corresponding *public* information that makes your secret phrase useful.
After all, a [magic
spell](https://21-ways.com/ch0-04-building-blocks/) is only useful if it
changes something in the real world, something that everyone can verify
with their own eyes. In Bitcoin, this is the public ledger: the
verifiable record of who \"owns\" what.

Technically speaking, your private key allows you to spend UTXOs, which
are basically the sats in your wallet. The secret you know allows you to
craft a magic spell---a transaction---that will transfer your sats to
someone else (or yourself).

\[TODO: Magic Spell Image\]

It is this interplay of public and private information that defines
ownership and property rights in Bitcoin, and it is the interplay of
miners, nodes, and holders that is responsible for the enforcement of
said rights. And because you yourself will always be able to hold your
own key, run your own node, and calculate your own hashes, you will
always be able to be self-sovereign.

You yourself can be judge, jury, and executioner in Bitcoin. Your rules
dictate which transactions are valid and which are not. Your private key
is all that\'s needed to create a valid transaction. Your node is all
that\'s needed to validate said transactions. Your miner has the power
to preserve the past. In Bitcoin, you truly are sovereign.

### Cryptosovereignty through Cryptoeconomics {#Cryptosovereignty-through-Cryptoeconomics}

Because bitcoin is digital money without any central authority,
enforcement has to happen via cryptography and the cost of breaking
cryptography. We do not have the luxury of making use of various
efficiencies that central authorities bring: removing central authority
is the whole point.

As mentioned previously, authority is removed via an asymmetry
in *cost*. Cryptography makes it possible to create barriers that can
not be violated by force. Such a barrier does not exist in the physical
domain; it only exists in the *informational* domain: in the realm of
ideas.

Allow me to repeat an important point: Bitcoin is a
crypto*economic* system, so we have to differentiate between two types
of asymmetries: cryptographic ones and *economic* ones.

Your *private* information is secured by *secrecy* and strong
cryptography. Your *public* information is secured by sunk costs and the
incentives to be reimbursed for said costs. The first security guarantee
is *mathematical*; the second is *economic*. 

Both are rooted in the physical limits of computation. Both massively
favor the defender, which is why---if you are absolutely hell-bent on
using combat language---bitcoin is a shield, not a sword. It is
indestructible bulletproof glass, not a gun.

\[Footnote: Of course, the relationship between a private key and a
public key is mathematical as well, and trying to crack this
relationship is also a problem of cost, but it is so outrageously
difficult to get a private key from a public key that it is not only
uneconomical, it is virtually impossible.\]

> \"With cryptography in the digital domain there is an impenetrable
> asymmetric defense advantage. It\'s like everyone is walking around
> with a nuke proof personal force field.\" ---[Adam
> Back](https://twitter.com/adam3us/status/1505087191554351109?s=20&t=Sgn7g5fHzCV05gIaD4Q7cA)

Your private key is secure because no amount of compute will ever be
able to guess it. It\'s about physics, not technology, as [Bruce
Schneier](https://21lessons.com/15/) pointed out: \"These numbers have
nothing to do with the technology of the devices; they are the maximums
that thermodynamics will allow. And they strongly imply that brute-force
attacks against 256-bit keys will be infeasible until computers are
built from something other than matter and occupy something other than
space.\"

Your UTXOs are secure because it takes an economically unfeasible amount
of compute to change the past that brings said UTXOs into existence.

All of Bitcoin\'s security is rooted in the fact that computation
requires energy. The *mathematical* binding that protects Bitcoin\'s
private keys is just *way* stronger than the *economic* binding that
protects Bitcoin\'s public ledger, but it is very similar in nature. The
main difference is that we can\'t rely on the \"absolute\" security that
private keys would bring because we don\'t have the luxury of referring
to a quorum that would hold this private information. We have to rely on
game theory and economics.

The game-theoretical aspects of Bitcoin are probably the hardest to
understand because there is no way to have absolute proof of any
security guarantee in the future. It is impossible to say how thick the
shield has to be, to stick with the previous metaphor. We can not know
how much effort a dishonest player is willing to muster. And, as long as
the game can be played anonymously, all a dishonest player can do is
make moves in the game itself: by speaking words, by providing
information to other players.

### Non-Violent Play {#Non-Violent-Play}

Here is the real innovation that Bitcoin brings: Nakamoto Consensus
allows us to settle disputes *without* the threat of violence. Disputes
are settled via a probabilistic game, a game of words and math, with
multiple parties competing in their own self-interest. Once the dispute
is settled---buried under a few blocks of provably rare information---it
is settled for good.

We can rely on the eventual settlement of disputes because of
probabilities and determinism: random selection and deterministic
computation.

Computation, like thinking, requires energy. While the game might be
abstract, the electrons are not. To play the Bitcoin game at any
meaningful speed and scale, electricity and specialized equipment have
to be used. This is no different than TCP/IP, one of the base protocols
of the internet. We could run TCP/IP on [carrier
pigeons](https://en.wikipedia.org/wiki/IP_over_Avian_Carriers)---there
is even an [official
specification](https://en.wikipedia.org/wiki/IP_over_Avian_Carriers) for
that---but for the sake of efficiency, we use computers and high-speed
communication networks. The same is true for LNP/BP---the Lightning
Network Protocol, and the Bitcoin Protocol. We could use pen and paper
to play the game, but it wouldn\'t be very efficient or very useful.

While the physical infrastructure that is used to play Bitcoin more
efficiently is prone to violent attacks, the essence of Bitcoin and the
data it produces are not. Bitcoin is code. Bitcoin is speech. Bitcoin is
text. As are all private keys and the public ledger that defines the
UTXO set.

Once the players have hashed it out---pun intended---the potential for
violence quickly moves to the background. The one-way street of
Bitcoin\'s difficulty-adjusted proof-of-work transmutes kinetic energy
into intersubjective assurances that are valued by individuals,
assurances that exclusively reside in the domain of information.

Bitcoin\'s proof-of-work serves as a bridge between the world of atoms
and the realm of information. This bridge can be built in one way and
one way only: by coming up with information that is so unique, so
preposterously unlikely, that certain things had to happen in the real
world for this information to appear. The rules of the game and the
nature of physical law allow for no other possibility.

Because the information speaks for itself, once a valid block is found,
we move from the domain of violence to the domain of ideas. The work is
done, the word has been spoken, and as soon as this information
propagates to other players, the cat is out of the bag. Flesh became
Word, and words---like ideas---are bulletproof.

\[TODO: Potential for Violence image\]

It is this transformation, the \"reification of information,\" as
waxwing calls it, that makes bitcoin an inalienable right. You can hold
sats *in your head* if you manage to memorize 12 words. You can play
bitcoin with pen and paper if you are so inclined. Every aspect of
Bitcoin can be transformed into speech.

Because Bitcoin is speech, participating in and holding Bitcoin is
exercising your God-given right to speak and think. The fact that you
are using a Turing machine connected to a digital communications network
to speak and think more efficiently doesn\'t matter. It is all text, all
the time---communication, not violence.

Others have written about the nuances and implications of the above at
length, most notably Erik Cason and Eric Voskuil. I recommend reading
their respective
works---[*Cryptosovereignty*](https://cryptosovereignty.org/) & 
[*Cryptoeconomics*](https://bitcoin-resources.com/books/cryptoeconomics)
---in full if you want to understand said nuances and implications
deeply. 

> \"The code alone is sovereign. There is no exception.\" ---Erik Cason

Bitcoin provides an automated framework for trust-minimized, digital
money. It defines the rules of the game and makes changing these rules
incredibly hard because new rules have to be backward-compatible and
adopted voluntarily by its users.

No central authority dictates the rules. You learn the rules, and you
either agree to play the game or you don\'t. Wherever two people meet
that play according to the same rules, the game can be played. What
differentiates play from other things---war, for example---is that play
is voluntary. You have to agree to it. Nobody can force you to play a
game that you don\'t want to play. 

The fact that Bitcoin is a game of language is equally important.
Speaking does not infringe on anyone else\'s rights. In a free society,
you should be able to speak freely. In a free society, nobody should be
able to force you to speak or dictate what you say. Even when living
under tyranny, nobody can force you to think certain thoughts or take
them away from you. \"Thoughts are free,\" as the German folk song goes.
\"No person can know them, no hunter can shoot them.\"

### \[TODO Embed: https://youtu.be/YVc0wBLri1A\] {#[TODO-Embed:-https://youtu.be/YVc0wBLri1A]}

Consequently, the rights and freedoms granted to you by Bitcoin are
independent of the rights and freedoms granted by the state. Bitcoin
embodies your *natural* rights; it does not grant you legal rights. The
part that is hard to grasp is the Gordian knot of interlocking
incentives and cryptography that makes up the judge, jury, and
executioner of the Bitcoin network. When push comes to shove, there is
no authority: it\'s all you. You can be your own judge, jury, and
executioner if you are so inclined.

That\'s why \"21 million\" is sacrosanct. It is sacrosanct to me, and I
will continue to play this game according to the rules that bring 21
million into existence. I will refuse to play by any rules that would
lead to a change of this limit, just like I will refuse to play chess on
any board that is larger or smaller than 8x8 squares. When someone
knocks at my door and forces me to change the consensus parameters of my
Bitcoin node, I will refuse. And if someone else is as stubborn as I
am---given that we have a way to communicate---the Bitcoin network will
exist.

This, finally, brings me to the last bend of the Gordian knot that
speaks Bitcoin\'s freedoms into existence: responsibility.

### Responsibility {#Responsibility}

> \"Freedom makes a huge requirement of every human being. With freedom
> comes responsibility.\" ---Eleanor Roosevelt

I see it as my responsibility to exercise these inalienable rights and
stand for the values that Bitcoin embodies. \"Running the numbers is not
a crime,\" as a good friend of mine once remarked. It is my
responsibility to hold my own keys and run my own node. It is my
responsibility to  [know the
rules](https://www.youtube.com/watch?v=iik25wqIuFo). It is my
responsibility to accept or refuse changes. It is my responsibility to
exercise my right to free speech and free thought. It is my
responsibility to buy and hold bitcoin, to use it, to imbue it with
value. 

The freedoms that Bitcoin grants me---the freedom to transact, the
freedom to save, the freedom to remain private---are a consequence of
sovereign individuals all over the world likewise shouldering these
responsibilities, voluntarily. They might do it out of necessity, or out
of economic self-interest, or because they simply believe that it is the
right thing to do; but they all do it because they accept the rules and
believe that the Bitcoin game is a worthwhile game to be played. They
all agree that Bitcoin is valuable.

I want to emphasize again that Bitcoin is all text, all the time.
Consequently, it is a game of thought and speech, and thus you don\'t
need anyone\'s permission to play it. By holding your own keys and
running your own node, you exercise your natural right to *think* (do
math) and *speak* (broadcast information). It is a game that is most
beneficial when played with others, but other players are not strictly
necessary. I can play it alone, just like Satoshi did when he ran the
first Bitcoin node. Playing alone is neither fun nor very useful, but it
is and always will be possible. And as soon as a communication channel
exists, a second player can join.

In Bitcoin, the individual is sovereign. By shouldering these
responsibilities, you, the sovereign individual, are saying: \"My
thoughts are mine and mine alone. I will speak freely, about whatever I
want and with whom I please. It is my God-given right to protect myself;
I will not be stolen from.\"

Consequently, the enemies of Bitcoin are enemies of freedom and
sovereignty. They are saying: \"I don\'t want you to have these rights.
I don\'t want you to speak freely. I don\'t want you to use your
capacity to think about whatever you want. I don\'t want you to have the
freedoms that this language game bestows upon you. I don\'t want you to
transact freely. I don\'t want you to protect your savings.\"

Yes, governments can pass laws that outlaw the use of Bitcoin. However,
Bitcoin works the way it works precisely because such a ban is
anticipated, not feared. Bitcoin nodes send and receive messages, as do
miners. The fact that some of these messages are hard to craft is a
feature, not a bug. It is individuals that give these messages value;
individuals that have 12 words stored somewhere; individuals that
believe in the core value of Bitcoin in the first place: financial
freedom and the separation of money and state.

### Conclusion {#Conclusion}

Law, Language, and Money. Out of these three, only law and language were
allowed to evolve, as Hayek pointed out. The money was captured, by
banks and the state alike. It is this capture that is at the root of all
monetary evil. A capture too profitable to ever give up.

Because of this capture, Satoshi knew that he could not ask for
permission to evolve the money. He had to find a roundabout way that
uses *language* to speak the Hayekian dream of a stateless money into
existence. A money that creates and enforces its own set of laws:

-   You shall not confiscate.
-   You shall not censor.
-   You shall not inflate.
-   You shall not counterfeit.

This is the essence \[Footnote: Soul, cite Hasu\] of the laws of
Bitcoin, a global and neutral money accessible to all. Anyone can
enforce these laws through speaking and listening with their nodes:
accepting valid messages and rejecting those that break the rules.
Anyone can contribute to the cumulative shield that protects Bitcoin\'s
past. Anyone can craft transactions and run the numbers that define the
future. All that\'s needed is a way to do the math and a way to
communicate with others.

Anyone can play according to their own set of rules. It is overlap and
agreement that makes Bitcoin\'s rules, not authority.

Thanks to Bitcoin, anyone can use the asymmetric defenses of
cryptography to their economic advantage. Asymmetry is at the heart of
Bitcoin\'s security: hard to guess, easy to verify. Cooperation is
rewarded; conflict is not. Your keys are private; the ledger is public.
Defense is cheap; disruption is incredibly costly.

It is the asymmetry in cost that gives rise to the cryptoeconomical game
theory of Bitcoin. Peaceful and voluntary cooperation; mutually assured
preservation. Sovereignty through cryptography.

\[TODO: Circularity image\]

Law, Language, and Money. A healthy trifecta of these three is
absolutely essential for a free society to flourish. If freedom is a
value you hold in high regard, this translates to (1) free speech, (2)
sound money, and (3) individual property rights. Bitcoin uses (1) to
create (2) and enforce (3)---without the necessity of violence. After
all, *no amount of violence will ever solve a math problem*, as Jacob
Appelbaum said so beautifully.

We, as a society, are responsible for upholding the sacredness of free
speech. You, as an individual, are responsible for exercising this
freedom and taking it seriously. In the realm of Bitcoin, this
translates to holding your own keys, running your own node, and doing
your own proof-of-work.

We don\'t need a separate \"right to send a transaction.\" It is an
inalienable right in a free society, a society that takes free speech
seriously. We don\'t need a law that will allow us to use electricity to
do math more efficiently. After all, mining is nothing but an automated
way of trying to find a matching random number efficiently. We don\'t
need a separate \"right to have a wallet.\" A wallet is nothing but a
comfortable way to sign a message---a calculator if you will. We don\'t
need a separate law that allows you to hold bitcoin. You are a free
individual. You have the inalienable right to memorize 12 words in your
head.

Nothing of the above should ever be illegal. In a free society, a
society that holds certain truths to be self-evident, none of the above
should ever be outlawed. If the course of human history has yielded any
fundamental insights for the optimization of human flourishing, it is
that speech, and the free exercise thereof, is sacred. The Logos is
sacred because the ability to speak freely is the fundamental
prerequisite for the discovery and communication of Truth itself, the
place from which all goodness emanates. 

If speech and the free exercise thereof is sacred, then Bitcoin is
sacred, because all that Bitcoin requires of you is to *think* and
to *speak*. Anyone is free to participate in this game of words and
numbers; a game that embodies answers to various questions of ethics and
morality; a game that is played without an ultimate end, but with
absolute limitation: 21 million, never more. It is *you* that brings
this limitation into existence: by shouldering the responsibility of
running the numbers, by exercising your inalienable right to think and
to speak. And through that, absolute Truth emerges---without the need to
spill a single drop of blood.

