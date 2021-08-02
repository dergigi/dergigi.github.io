---
layout: post
title: "Implications of Outlawing Bitcoin"
date: 2021-08-02
blocktime: 687477
description: "Bitcoin is numbers. Bitcoin is math. Bitcoin is thought. Bitcoin is speech."
image: /assets/images/btc-law.jpg
author: Gigi
category: bitcoin
favorite: true
tags:
 - Bitcoin
 - Writing
series: 21 Ways
---

Bitcoin is complicated and scary. Just like fire, electricity,
computers, and every other ground-breaking invention before it. It is
complicated and scary because most people do not understand how it works
and why it might be useful.

Once you begin to understand how it works, you will begin to understand
why it is so useful to people around the world. And I hope that once you
truly understand its basic operational principles, you will begin to
understand why outlawing Bitcoin is a foolish proposition.

In light of recent comments by legislators and politicians, we must not
forget what Bitcoin does and how it does what it does. Bitcoin is text.
Bitcoin is speech. Bitcoin is math. Bitcoin has no jurisdiction, just
like 2+2=4 has no jurisdiction. Bitcoin knows no borders. Bitcoin is
everywhere and nowhere, and if used and secured properly, bitcoin is as
confiscatable as a thought. No amount of legalese or otherwise
complicated language will change these facts.

Using Bitcoin does not require any special equipment. We use software
and specialized hardware to use Bitcoin more efficiently, and in a more
secure manner, but in theory, Bitcoin can be run on pen and paper.

The following statements are and will always be true:

-   You can create a private key by flipping a coin.
-   Holding a private key allows you to receive sats and create
    transactions.
-   Creating a transaction is math.
-   Sending a transaction is sending a message.
-   Mining bitcoin is guessing a number.
-   Everything in Bitcoin is information.

These statements will sound strange to you if you don't know how
Bitcoin operates, but they are true nonetheless. Thankfully, Bitcoin is
an open system, which means that everyone can learn the operational
details of the network. I encourage you to do that and, if you can,
educate others. We must not forget what politicians are implying when
they are musing about "banning wallets" and making up nonsensical and
disingenuous adjectives such as "self-hosted" and "non-custodial."

A wallet is nothing special; it can be just some words in your head.[^7] You
don't need specialized equipment to generate a secure wallet. A coin or
some dice is all you need.

### Creating a Wallet Is Flipping a Coin

To interact with the Bitcoin network, you need a wallet, which is to say
you need a private key.[^0] While conventional concepts do not apply
well to Bitcoin, one could argue that creating a public-private key pair
is akin to creating an account. And since public keys are derived from
private keys, we only have to answer one question: what are private
keys, and how are they created?

A [private key](https://en.bitcoin.it/wiki/Private_key) is a 256-bit
number. That's it. End of story.[^1]

So, what exactly is a 256-bit number? Well, as the name suggests, a
256-bit number is a number that, when represented using zeros and ones,
is 256 binary digits long. In other words: it's a really big number.

---

⚠️ **Warning:** The private keys shown on this page are real private keys. Do
not send bitcoins to or import/use any sample keys; you will lose your money.
I repeat: **YOU WILL LOSE YOUR MONEY**

---

The following is a 256-bit number: 

`0010111011001011101110101011010110001001101111010001011010100110001001110010101110101010101100000001101100000111000000011100010100100001000001010001011011100000111000111010101001111101000110111010100011011111000101111100000110100010110110000010101010111111`

These zeroes and ones - or, more accurately, the information contained
in these zeroes ones - are a valid Bitcoin private key. You could use
this information to receive and send transactions on the Bitcoin
network. [^2]

Why is this important? It is important because I can create a Bitcoin
wallet by sitting in my room, flipping a coin 256 times. If you want to
outlaw "[anonymous
wallets](https://twitter.com/McGuinnessEU/status/1417494016741023753?s=20),"
you will have to outlaw this activity, along with all other techniques
to create random numbers: rolling dice, drawing cards, measuring optical
or atmospherical turbulences, and so on.

Further, since these zeros and ones are just information, you can
represent them in countless different ways. The information does not
change; just the *representation* of the information changes. The
hexadecimal version
12e188aeb7c9aeb0eef7fac7c89e3b9b535a30b2ce8d6b74b706fa6f86b061e4 represents the
same private key as the zeros and ones above. As does the following mnemonic
code, which can be learned by heart with some practice: 

`concert, frozen, pull, battle, spend, fancy, orient, inside, quiz,
submit, scare, mechanic, awake, mercy, lock, inside, language, tag,
dash, control, borrow, hip, print, absorb`

Remember: this information, this 256-bit number, is all you need to
interact with the Bitcoin network. You do not need an ID, or passport,
or utility bill, or proof of residency. You do not even need to be
human. If you are in control of a Bitcoin private key, you can send and
receive transactions.

If you want to understand Bitcoin, you will have to understand that a
wallet can be created by flipping a coin 256 times.

### Holding a Private Key Allows You to Earn Sats

You flipped a coin 256 times. Now what? Time to earn some money!

To receive sats, you need an address, which can be derived from your
private key. Grab a pen and paper, go to your standing desk, and
calculate your public key according
to [BIP32](https://github.com/bitcoin/bips/blob/master/bip-0032.mediawiki).
If you are short on time or bad with math, don't despair. There are
online tools[^3] that will do the math for you. But remember that
these software tools do nothing weird or magical. It's just math, and
you can do it yourself using nothing but a pen and paper.

The outcome of all that math will produce a number that, when encoded as
a bitcoin address, will look something like this: 

`bc1qd6yf555vwns0mpgy55epux4tzf8a40nmw2vpgq`

Share your address with someone else, and you are ready to receive your
first sats. Keep in mind that you don't have to share the address in
this exact format. You can encode it as a QR code, as a number, as
emojis,[^4] as an audio file, or as braille. You can put it in your invoice,
display it on your homepage, in your profile, send it via a messaging
application, or tattoo it on your body. It is just information. It can
be represented in countless ways.

{% include image.html name="qr.png" caption="Easier to read for computers." alt="Use Lightning." %}

{% include image.html name="braille.png" caption="Easier to read for blind people." %}

{% include image.html name="emojis.png" caption="Easier to read for millenials." alt="🕊 🤙 ⛸ 🏂 🌾 🍊 📠 🙍‍♂️ ⛸ 🌄 🔩 🏋 😮 🤦‍♀️ 🚵 🎾" %}

Also, keep in mind that you do not have to be online to receive sats.
The sats won't be sent to you directly. Someone will sign a message
that will transfer the sats to your name - if you excuse my imprecise
language. It's not your name, of course, since Bitcoin doesn't know
any names. But that would be one way to think about it.

Someone just broadcast a transaction that includes your address as an output,
which means that you will receive your first sats soon. Now what? Time
to create a transaction and pass them on.

### Creating a Transaction Is Math

If you have a private key, you can create a transaction. Remember that a
private key is just a large number. What can you do with numbers? You
guessed it: math!

In its simplest form, a bitcoin transaction is a message that says
something like the following:

> I, Alice, hereby transfer 21 sats to Bob. Signed, Alice.

Real transactions might have multiple senders and multiple recipients as
well as various other tweaks and efficiencies, but the essence remains
the same. What is important to note is that nothing is secret in a
transaction. All transactions are broadcast across the whole network,
viewable and verifiable by everyone. All transactions are plain text.
Nothing is encrypted.

To write "Alice sends 21 sats to Bob" in a way that makes sense to the
Bitcoin network, a special, more precise format has to be used. Don't
get confused by the format of the message or how the message is encoded.
It doesn't matter if the language is English or something that is
easier to understand for computers. The meaning of the message remains
the same. I could write the above as `[A]--21-->[B]` and sign
it with the private key that corresponds to A, and it would essentially
be the same thing.

{% include image.html name="alice-bob-21.png" caption="TODO" %}

This brings us to the important part: the signature. Hand-written
signatures are not very useful in a digital world, which is why
mathematicians and cryptographers came up with a modern equivalent:
digital signatures.

I will not go into detail explaining how they work, but the important
part is this: it's all just math and numbers. Your private key acts as
a large secret number that is used to perform mathematical operations.
The result of these mathematical operations is a digital signature
(another number) that can be checked using your *public* key, which is,
again, a number. 

Math is what makes public-key cryptography work. The beauty of this math
is that you can verify that the sender is in control of a secret number
without revealing the secret number. This is what cryptographic
signatures do.

Let's look at an example. The following is a valid transaction:[^5]

`01000000017967a5185e907a25225574544c31f7b059c1a191d65b53dcc1554d339c4f9efc010000006a47304402206a2eb16b7b92051d0fa38c133e67684ed064effada1d7f925c842da401d4f22702201f196b10e6e4b4a9fff948e5c5d71ec5da53e90529c8dbd122bff2b1d21dc8a90121039b7bcd0824b9a9164f7ba098408e63e5b7e3cf90835cceb19868f54f8961a825ffffffff014baf2100000000001976a914db4d1141d0048b1ed15839d0b7a4c488cd368b0e88ac00000000`

You can use various tools[^6] to decode and inspect it. These tools
help us humans to make sense of it all, but the underlying reality
remains: it's numbers all the way down.

{% include image.html name="byte-map-trans-black.png" caption="Byte-map of a Bitcoin transaction." alt="Image by etotheipi. Source: en.bitcoin.it/wiki/Transaction" %}

To reiterate, the following is all you have to do to interact with the
Bitcoin network:

* Step 1: Flip a coin a couple of times.
* Step 2: Do some math.
* Step 3: Send and receive messages.

Outlawing any of these three steps is ridiculous. It is ridiculous because of
the peculiar nature of information. If you outlaw certain kinds of information,
you implicitly outlaw **all** representations of this information: text, speech,
images, emojis, QR codes, sign language, interpretive dance, and so on. And
since all information can be represented as a number - including [math] and
[computer code] *itself*, it boils down to making numbers illegal.

[math]: https://www.quantamagazine.org/how-godels-incompleteness-theorems-work-20200714/
[computer code]: https://primes.utm.edu/glossary/page.php?sort=Illegal

Although banning numbers is as ridiculous as it sounds, it has happened
in the past. [Illegal
numbers](https://en.wikipedia.org/wiki/Illegal_number) and [illegal
primes](https://en.wikipedia.org/wiki/Illegal_prime) are a thing
*precisely* because some people tried to outlaw certain kinds of
information.

Society and law makers will have to grapple with the fact that Bitcoin wallets
and transactions are just information, as is everything else in Bitcoin.

### Spending Sats Is Sending a Message

Because a Bitcoin transaction is just information, sending sats to
someone is propagating that information, or, in other words: sending a
message. You don't even have to send the message to a particular
person. Base-layer transactions are broadcast transactions. They are
sent to everyone on the network.

Keep in mind that any communications channel can be used to send and
receive information. The internet is simply the most efficient
communications tool we currently have. But there is no reason why you
couldn't use a  [satellite
connection](https://blockstream.com/satellite/) or [ham
radio](https://txtenna.com/), which people are and have been using, be
it out of
[fun](https://twitter.com/nvk/status/1095781212633784320/photo/1) or
necessity.

{% include image.html name="ham-radio.jpg" caption="Bitcoin over ham radio. Source: NVK" %}

The fact that spending sats is sending a message doesn't change on
higher layers. Nodes on the Lightning Network are doing the same thing:
they are sending messages back and forth. Nothing more, nothing less. 

This hides two truths about Bitcoin in plain sight:

-   Bitcoin is a messaging protocol
-   All messages are plain text

Messages might be sent through an encrypted communications channel, but
the messages of the protocol are and will always be plain text. They
have to be. The whole point of Bitcoin is that everything is easily
verifiable by everyone.

Outlawing Bitcoin implies outlawing messaging. Keep in mind that we are
dealing with pure information. Information can be encoded in virtually
endless ways: different formats, same meaning. And herein lies the crux:
you can not outlaw the *meaning* of a message. If you do not know the
protocol, the meaning of the message will elude you. If you do not speak
the language, you don't know what is said or why it is being said.

This brings us to the last piece of the Bitcoin protocol puzzle: mining.

### Mining Bitcoin Is Guessing a Number 

Most people do not understand what Bitcoin mining is and how it works. They do
not speak the language of Bitcoin, failing to understand both
[what](https://en.bitcoin.it/wiki/Block) is spoken and
[why](https://dergigi.com/2021/01/14/bitcoin-is-time/) it is spoken in the first
place.

Bitcoin miners aren't doing anything special, just like computers
aren't doing anything special. They are crunching numbers.

Not too long ago, when you said "computer," you were referring to a
person. It was a job description, not a thing. The most efficient way to
run the numbers was to pay a person to sit down and do the math. 

{% include image.html name="computers.jpg" caption="Most early computers were female." %}

Over time, we've built ever more efficient contraptions to do the math
for us. Today, when we say "computer," we mean something that uses
microchips instead of brains to do the computing. But the underlying
reality has not changed: computers crunch numbers. They do not do
anything special, or devious, or magical. The same is true for ASICs.

Bitcoin, like [NASA
software](https://www.dfrc.nasa.gov/Gallery/Photo/People/HTML/E49-0053.html)
before it, can run on a human substrate as well. We do not need ASICs to
mine bitcoin. We could do it by hand. We could use our brains. It's
slow, and cumbersome, and inefficient. But we could absolutely do it.

{% include image.html name="mining-pen-paper.png" caption="Mining on wetware." %}

Just like you could
use [pigeons](https://en.wikipedia.org/wiki/IP_over_Avian_Carriers) instead
of computers to run the internet, you could use humans instead of
silicon chips to run bitcoin. It would be highly inefficient, yes, but
it would work just the same.

As Ken Shirriff showed in [his 2014
video](https://www.youtube.com/watch?v=y3dqhixzGVo), SHA-256 is simple
enough to be computed with pen and paper. He managed to do one round of
SHA-256 in 16 minutes and 45 seconds, which works out to a hash rate of
0.67 hashes per day.

I am showing you all this to make it explicit what the basic building
blocks of Bitcoin are: numbers, math, and the exchange of messages.

This is true for all processes in Bitcoin. It doesn't matter if you
create a private key, derive a public key, generate a Bitcoin address,
mine a block, sign a transaction, or open a Lightning channel. All you
are doing is coming up with or finding large numbers, manipulating these
numbers via mathematical equations, and sending the result of these
equations to your peers. That's it.

> Communication does not lose constitutional protection as "speech"
> simply because it is expressed in the language of computer code.
> Mathematical formulae and musical scores are written in
> "code," *i.e.*, symbolic notations not comprehensible to the
> uninitiated, and yet both are covered by the First Amendment. If
> someone chose to write a novel entirely in computer object code by
> using strings of 1's and 0's for each letter of each word, the
> resulting work would be no different for constitutional purposes than
> if it had been written in English.
>
> <cite>[Junger v. Daley*, 209 F.3d 481, 484][junger]</cite>

[junger]: http://digital-law-online.info/lpdi1.0/quotes/fn3-192.htm#q

Once you understand that Bitcoin is information - and that computers and
the internet are just the best substrates to transform and transmit this
information - the implications of outlawing Bitcoin should become clear.
You can put Bitcoin in a book, which means you would have to ban the
publication of books. You can speak bitcoin by uttering 12 words, which
means you would have to ban speech. You can mine bitcoin with pen and
paper, which means you would have to outlaw math, or thinking, or
writing. You can store bitcoin in your head, which means, of course,
that having certain thoughts is illegal if "holding bitcoin" is
illegal.

If having 12 words in your head is illegal, something is terribly wrong
with the law. If the police storm your building because you are finding
or creating a random number in the privacy of your own home, something
is terribly wrong with the police. If the peaceful exchange of messages
is seen as dangerous or immoral by society, something is terribly wrong
with society. If speaking or knowing numbers becomes a criminal act, I
don't want to be a law-abiding citizen in the first place.

Bitcoin is pure information. It utilizes the properties of information
as well as the transformation of information - computation - to build up
a shared construct that we can independently agree upon and verify. It
is nothing but math and numbers. Zeros and ones, sent back and forth by
voluntary participants that want to send and receive messages in peace.

### Conclusion

A Bitcoin private key is a large number. When represented as words, this
number can be stored in your head. A private key is all that is required
to send and receive payments. You can sign and verify transactions with
pen and paper. You can mine bitcoin with pen and paper. Bitcoin is just
a messaging protocol that does these operations efficiently and
automatically.

Understanding Bitcoin from first principles will make it obvious that
the idea of banning "[anonymous crypto
wallets](https://twitter.com/McGuinnessEU/status/1417494016741023753?s=20)"
is not feasible. You would have to outlaw the generation of entropy, the
act of coming up with random numbers. You would have to surveil everyone
at all times, kicking in their door and arresting them once they sit
down and start flipping a coin or rolling some dice. You would have to
pass **legislation that criminalizes thought itself** since creating an
"anonymous bitcoin wallet" is nothing more than coming up with 12 random
words.

Dear legislators, I ask you earnestly: do you genuinely believe that
outlawing speech is a good idea? Do you want to make math illegal? Are
you prepared to outlaw thought itself?

I hope that we can all agree that thought and speech are paramount to a
free and prosperous society. And I hope that, as more and more people
understand how Bitcoin operates, citizens and legislators alike will
realize that Bitcoin is just that: thought and speech.

### Further Reading

* [Bitcoin mining the hard way][hard-way] by Ken Shirriff
* [Using the raw Bitcoin protocol][hard-raw] by Ken Shirriff
* [Remembering the Case that Established Code as Speech][code-is-speech] by EFF
* [Why America Can't Regulate Bitcoin][why-beautyon] by Beautyon
* Lesson 6: [The power of free speech][lesson6]

[hard-way]: https://www.righto.com/2014/02/bitcoin-mining-hard-way-algorithms.html
[hard-raw]: https://www.righto.com/2014/02/bitcoins-hard-way-using-raw-bitcoin.html
[code-is-speech]: https://www.eff.org/deeplinks/2015/04/remembering-case-established-code-speech
[why-beautyon]: https://archive.is/yAOwZ
[lesson6]: https://21lessons.com/6/


------------------------------------------------------------------------

This article is largely based on two chapters of
my upcoming book [*21 Ways*](https://patreon.com/dergigi).

------------------------------------------------------------------------

#### Footnotes

[^0]: A Bitcoin wallet is usually a piece of software or hardware that holds your private keys and signs transactions. Calling these things "wallets" wasn't the best idea, but we are stuck with it. It would be better to talk about (sets of) private keys and signers. Private keys can be cold (never touching the internet) or hot. Signers can be implemented as software or hardware.

[^1]: Bitcoin Wiki, Private Key: [https://en.bitcoin.it/wiki/Private_key](https://en.bitcoin.it/wiki/Private_key)

[^2]: Don't do this. Since this private key is public information, whatever money you put into addresses generated by it will be gone in seconds. Seriously. Don't use any private key you find online, ever. (Also: don't use your brain to make one up. Use coins, or dice, or hardware wallets, or combine multiple sources of entropy. If you can think of it, someone else will too.)

[^3]: This tool allows you to enter coin flips: [https://bip32jp.github.io/english/](https://bip32jp.github.io/english/%5D)

[^4]: I used "[emojicoding](https://github.com/shea256/emojicoding)" to transform my bitcoin address into emojis. There is also "[emojaddress](https://github.com/MerkleData/emojaddress)," Stephan Snigirev's [Emoji Bitcoin Wallet](https://stepansnigirev.github.io/emoji-wallet/), and others.

[^5]: You can look up the transaction in a block explorer yourself by entering the following ID: [fc9e4f9c334d55c1dc535bd691a1c159b0f7314c54745522257a905e18a56779](https://www.blockstream.info/tx/fc9e4f9c334d55c1dc535bd691a1c159b0f7314c54745522257a905e18a56779)

[^6]: There are many tools to decode transactions. Here is one example: [https://live.blockcypher.com/btc/decodetx/](https://live.blockcypher.com/btc/decodetx/%5D)

[^7]: Warning: Do not use [brain wallets](https://en.bitcoin.it/wiki/Brainwallet) unless absolutely necessary. Forgetfulness and loss of brain function will lead to lost funds. Do not create private keys in your head. The human brain is terrible at coming up with random numbers.
