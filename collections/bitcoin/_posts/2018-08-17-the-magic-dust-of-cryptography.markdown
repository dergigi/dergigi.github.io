---
layout: post
title: "The Magic Dust of Cryptography"
subtitle: "How digital information is changing our society"
date: 2018-08-17
blocktime: 554747
description: "Thoughts on the nature of information, free speech, and how strong cryptography changes everything."
image: /assets/images/btc02-magic-dust.jpg
source: https://medium.com/@dergigi/the-magic-dust-of-cryptography-c8ecd79ae13a
redirect_from: /dust
author: Gigi
category: bitcoin
audio: /assets/audio/magic-dust.mp3

translations:
 - language: Spanish
   url: https://btcishope.blogspot.com/2021/09/el-polvo-magico-de-la-criptografia.html
   author: Bitcoin Kook
   author_url: https://twitter.com/Bitcoin_kook/
tags:
 - Bitcoin
 - Writing
---

Imagine you have a hammer --- a magical hammer --- which can smash
anything into pieces with one stroke. Not only that, this hammer can
completely pulverize everything it touches into a fine gray dust.

Further imagine that there was a magic potion, one drop of which will
turn the heap of dust back into the item you smashed.

This leads to some interesting questions.

Suppose you want to visit a country and you want to bring your favorite
pair of pajama pants with you. The only problem, however, is that pants
are illegal in this country. Maybe it's a weird country, or maybe that's
the reason why you want to go there in the first place. Either way, I
don't judge.

Now, remember that you are in the possession of this magical hammer. You
use it on your pajama pants, and \*poof\*, you have a tiny bag of gray
dust which you can put in your pocket. The pocket of your jacket, of
course, because you will be asked to leave all your pants at the border!

Where exactly are the pajama pants now? In the dust? In the potion? Do
they currently exist? Does the concept of "your pajama pants" even make
sense, if all you have is indistinguishable gray dust and a tiny drop of
a magic potion? What if you would only need a drop of water, and speak
some magic words, to turn the dust back into pajama pants? What if the
dust was ubiquitous, everywhere on earth?

---

We, as a global society, are currently in the process of moving from the
physical realm of things to the digital realm of information. We are
quickly moving towards the fantastical world of no-pants land, and we
will have to update our current conceptions of things if we want to stay
sane.

Many things which used to be on pieces of paper are now digital: your
train ticket, your boarding pass, tickets to a concert, debit cards,
credit cards --- all of these already moved from being printed on paper
to a bunch of zeros and ones, decoupled from the physical realm we are
so used to.

Even those pieces of paper which encode value itself are slowly but
surely moved to the purely digital realm. A rising number of people are
willing to convert their hard-earned paper money into bitcoin, leaving
the world of physical money behind completely.

Over time, more and more valuable pieces of paper will be eaten up by
this digitalization. Soon your driver's license, your passport, your
birth certificate and other documents will be digital.

Why is this a big deal? Digital information is quite different from
physical artifacts. It can be easily scrambled, taken apart, and put
together again. It has completely novel characteristics compared to the
physical stuff we are so used to. It can be duplicated perfectly,
checked for authenticity instantly, and hidden in plain sight.
Information is independent of a physical substrate and thus can take
virtually infinite forms.

{% include image.html name="xkcd-504.png" caption="'Jefferson would have been all about crypto.'" %}

What the full implications of this digitization will be is impossible to
tell. We are not accustomed to this world of information: devoid of
physical form, touch, and smell.

Remember the tale of no-pants-land? Let's return to this weird and
wonderful world, but with a twist: your pajama pants are now your
passport.

Let's say you have a properly encrypted digital passport and a
decryption key of sufficient length. You put the encrypted passport in
one place and the key in another place. Where is the passport, exactly?
A or B? Somewhere in between? Does it even exist? Does the question of
"where" make sense in the first place?

What if you upload your encrypted passport to the cloud or a distributed
storage system like [ipfs]? What if your encrypted passport was
ubiquitous, everywhere on earth? What if you memorize the key as a
mnemonic phrase? Is your passport now in your brain?

Does the concept of "your passport" even make sense, if all you have is
access to the internet and some magic words?

---

**Warning: The following section contains example private keys. Do not import
any sample keys or send bitcoins to the associated addresses; you will lose
your money.**

---

Take Bitcoin as another example: you are no longer in possession of
physical coins, or any physical artifact for that matter. No amount of
calling these things coins can change that. Even hardware wallets don't
change that. You possess a piece of information, your private key, which
allows you to spend your funds. Effectively, your private key *is* your
money, which in turn is information. Thus, your money is pure
information.

{% include image.html name="xkcd-1553.png" caption="Never ever do that. Anyone who knows your private key can steal
your funds." %}

A private key is just a bunch of random bits. It can be encoded as a
bunch of zeros and ones:

    0010111011001011101110101011010110001001101111010001011010100110001001110010101110101010101100000001101100000111000000011100010100100001000001010001011011100000111000111010101001111101000110111010100011011111000101111100000110100010110110000010101010111111

It could also be heads and tails, as pointed out by [Andreas M.
Antonopoulos] in [Mastering Bitcoin]:

> The bitcoin private key is just a number. You can pick your private
> keys randomly using just a coin, pencil, and paper: toss a coin 256
> times and you have the binary digits of a random private key you can
> use in a bitcoin wallet.
>
> <cite>[Andreas M. Antonopoulos][Mastering Bitcoin]</cite>

The same information can be represented as a regular number:

    21166349608056686127730669456997431530107294209230839699814678496870930066111

We can also use the hexadecimal system to represent this number, to keep
things a bit shorter:

    12e188aeb7c9aeb0eef7fac7c89e3b9b535a30b2ce8d6b74b706fa6f86b061e4

An even shorter representation would be the [wallet import format]:

    5HxbsUekuCLjzLQujGb6QuzkDUMxQETQRgWjcJPx21hFsfDS3Fq

The same information can be encoded as a [mnemonic code], resulting in
these 24 words, which you could remember with a bit of practice:

    concert, frozen, pull, battle, spend, fancy, orient, inside, quiz, submit, scare, mechanic, awake, mercy, lock, inside, language, tag, dash, control, borrow, hip, print, absorb

Or, if you're Japanese:

    かんち 、さべつ 、なにごと 、うくれれ 、ぴんち 、このよ 、てあみ 、せたい 、におい 、へいあん 、はいすい 、たそがれ 、いらい 、だっしゅつ 、そんみん 、せたい 、そうき 、ほこう 、きよう 、きうい 、うんどう 、しょもつ 、どようび 、あけがた

Of course, we can also encode this information as various images.

{% include image.html name="private-key-qr.png" caption="Private key as QR code" %}

{% include image.html name="private-key-flag.png" caption="Private key encoded as hex colors" %}

{% include image.html name="private-key-pixels.png" caption="Same as above, but as one pixel per color" %}

You can also be more creative and hide a bitcoin private key in a piece
of art:

{% include image.html name="torched-hearts.jpg" caption="'TORCHED H34R7S' by YT (@coin_artist), a puzzle which hid 4.87 bitcoin in plain sight." %}

You get the idea.

---

Why is this a big deal? Our current way of doing things is adapted to
the physical, not the digital world. Some laws and regulations which
made sense previously might not be very useful in the abstract space of
zeros and ones.

> Central banks now have no way of stopping competition by just passing
> laws as they have always done. They are now up against a digital
> competitor that most likely cannot be brought under the physical
> world's laws.
>
> <cite>[Saifedean Ammous], [The Bitcoin Standard]</cite>

Governments and corporations will continually try to outlaw certain
kinds of information. It is likely that the last battle of the [crypto
wars] hasn't been fought yet, and yet it seems that it will be harder
and harder for governments and companies to outlaw the use of these
algorithms. After all, these mathematical magic tricks are themselves
information, making them virtually unstoppable in the very same way as
the information they manipulate.

As long as we aren't under the rule of a worldwide totalitarian
dictatorship, people will continue to exercise their freedom of speech
to print [encryption algorithms on t-shirts], design flags to distribute
cryptographic keys, and [sing songs] containing illegal information.

{% include image.html name="free-speech-flag.png" caption="Free Speech Flag by John Marcotte." %}

Due to the nature of information discussed above, outlawing *any*
information leads to absurd consequences. Since information can be
encoded in a myriad of ways, banning information leads to [illegal
numbers] and other absurdities.

> Any piece of digital information is representable as a number;
> consequently, if communicating a specific set of information is
> illegal in some way, then the number may be illegal as well."
>
> <cite>Wikipedia contributors, [Illegal number][illegal numbers]
> ([this version])</cite>

You might think that the tale of no-pants land featuring your favorite
pajamas is silly, but we are already living in this world --- fairy tale
or not.

Let's pick a specific example: When crossing U.S. borders with a big bag
of money, you are [required by law] to declare how much money you have
on you if it is more than \$10,000:

    "[...] if a person or persons traveling together and filing a joint declaration (CBP Form 6059-B) have $10,000 or more in currency or negotiable monetary instruments, they must fill out a "Report of International Transportation of Currency and Monetary Instruments" FinCEN 105 (former CF 4790)."

This is easily enforceable if you bring an actual bag of money with you.
Let's assume you have more than \$10,000 in bitcoin. Where exactly is
your money? Is it in the blockchain, i.e. everywhere? Is your money your
private key? What if your private key was on a [small device]? What if
you bring it with you in the form of just a [couple of words] on a piece
of paper? What if it was a QR code tattooed inside your lips? What if
you had a billion dollars stored in [your brain]? Would you have to
declare these words in your brain?

That's the tricky thing about information: it isn't a thing. It
transcends the physical realm.

---

These alien concepts are slowly but surely creeping into our daily
lives, changing the power balance of society as they get understood and
adopted by more and more people.

Like all tools, cryptography is neither all good nor all bad. If used
and understood properly, it can be a liberating force. It can enable
people to safely speak out and help disseminate information where it
would otherwise be censored. It can guarantee freedom of speech and
anonymity. It can also enable unstoppable crime, lead to accidental loss
of data, and enable new forms of blackmail and [extortion]. If abused by
tyrants, it can be a force of oppression. Despite all this, we should
neither fear nor dismiss these technologies. We should strive to
understand them.

We are already living in a world where both a totalitarian
techno-panopticon and an anarcho-capitalist system dreamed up by
cypherpunks is a reality.

Computers turned the abstract world of mathematics into tangible
machines which interact with the world. The Internet connected these
machines creating a global, borderless network. Cryptography and
decentralization are making information exchange on this network
unstoppable. What will happen if more and more things will become pure
information? What are the consequences of unbreakable and
censorship-resistant codes?

{% include image.html name="liberator-code-book.jpg" caption="The code for a 3D-printed gun in book form." %}

We are entering a new era. An era where information can be put in
digital safes which can't be opened by force. An era where you can
transfer value globally and near-instantly without anyone's permission.
An era where physical artifacts can be downloaded and printed for
near-zero marginal cost. An era where world-changing inventions can be
made by [unknown entities]. An era where you can turn anything into
magical cryptographic dust and all you have to do to turn it into
something meaningful again is to speak some magic words.

---

Addendum: The [xkcd] comics used are from issue [504] and [1553].
Wikipedia has a great article on the [Free Speech Flag].
The 3d-printed gun above is called [The Liberator], the code of which can be
bought as a book [on Amazon].

[ipfs]: https://ipfs.io/
[1553]: https://xkcd.com/1553/
[Andreas M. Antonopoulos]: https://antonopoulos.com/
[Mastering Bitcoin]: https://www.amazon.com/Mastering-Bitcoin-Programming-Open-Blockchain/dp/1491954388/
[wallet import format]: https://en.bitcoin.it/wiki/Wallet_import_format
[mnemonic code]: https://github.com/bitcoin/bips/blob/master/bip-0039.mediawiki
[Same as above, but as one pixel per color]: https://cdn-images-1.medium.com/max/1600/1*HYq2cK8t5sX8KI2ls2qwyg.png
[*YT,*]: https://medium.com/@coin_artist
[Saifedean Ammous]: https://medium.com/@saifedean
[The Bitcoin Standard]: https://thesaifhouse.wordpress.com/book/
[crypto wars]: https://en.wikipedia.org/wiki/Crypto_Wars
[encryption algorithms on t-shirts]: https://commons.wikimedia.org/wiki/File:Munitions_T-shirt_%28front%29.jpg
[sing songs]: https://youtu.be/JRFZeP9Nv2w
[Free Speech Flag]: https://en.wikipedia.org/wiki/Free_Speech_Flag
  "w:Free Speech Flag"
[illegal numbers]: https://en.wikipedia.org/wiki/Illegal_number
[this version]: https://en.wikipedia.org/w/index.php?title=Illegal_number&oldid=849115748
[required by law]: https://help.cbp.gov/app/answers/detail/a_id/195/~/currency-/-monetary-instruments---amount-that-can-be-brought-into-or-leave-the
[small device]: https://en.bitcoin.it/wiki/Hardware_wallet
[couple of words]: https://en.bitcoin.it/wiki/Mnemonic_phrase
[your brain]: https://en.bitcoin.it/wiki/Brainwallet
[extortion]: https://en.wikipedia.org/wiki/Cryptovirology
[unknown entities]: https://en.wikipedia.org/wiki/Satoshi_Nakamoto
[xkcd]: https://xkcd.com
[504]: https://xkcd.com/504/
[The Liberator]: https://en.wikipedia.org/wiki/Liberator_%28gun%29
[on Amazon]: https://www.amazon.com/dp/1724740733
