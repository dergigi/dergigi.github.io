---
layout: post
title: "Cryptography is Not Enough"
subtitle: "A long(ish) Speech on Paradoxes and Antinomies"
description: "Adam's back, the Great Rug, and Crypto Bros."
date: 2022-09-10
blocktime: 746126
image: /assets/images/adams-back.png
audio: /assets/audio/cryptography-is-not-enough.ogg
narrator: myself
redirect_from: /cryptography
author: Gigi
category: bitcoin
favorite: true
tags:
 - Bitcoin
 - Writing
 - Presentations
---


**Warning: This presentation contains example private keys. Do not import any
sample keys or send bitcoins to any of the associated addresses; you will lose
your money.**

This talk was originally given in Riga at [#BHB2022][bhb2022].


[bhb2022]: https://twitter.com/hashtag/BHB2022

---

<div class="flex-vid">
  <iframe src="https://www.youtube-nocookie.com/embed/C7ynm0Zkwfk" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

---

- Recording: [YouTube][yt]
- Slides: [PDF][pdf]

[yt]: https://youtu.be/C7ynm0Zkwfk
[bitcoinTV]: TODO
[pdf]: {{ site.url }}/assets/files/Riga2022.pdf
[images]: TODO

---

### Act 1: TWELVE

> Knowledge is power.
>
><cite>Francis Bacon</cite>

- [code = speech][speech]
- ["You shall not steal"][steal]
- [bitcoin = bacon][bacon]
- [Strength in Numbers][L15]

[speech]: {{ '/speech' | absolute_url }}
[steal]: https://bitcoin-resources.com/articles/the-legendary-treasureof-satoshi-nakamoto/
[bacon]: https://gist.github.com/mflaxman/60c15be413c4194118eb5547ffcd15ee
[L15]: https://21lessons.com/15/

### Act 2: TWENTYONE

> Bitcoin is a chain, yet it ends slavery.
>
><cite>Ben Gunn</cite>


- [Rice on a Chessboard][rice]
- [1,000,000 sats][1mil], 100% gone
- [Paradoxes of Bitcoin](#paradoxes)
- [Bitcoin is Worse is Better][gwern]
- [Bitcoin is Love][peace]
- [Randomness & Information Asymmetry][randomness]
- [Bitcoin's Building Blocks][bbb]

[rice]: https://archive.ph/HFpeZ
[1mil]: https://twitter.com/dergigi/status/1565990083555168256
[gwern]: https://bitcoin-resources.com/articles/bitcoinis-worseis-better/
[peace]: {{ '/peace' | absolute_url }}
[randomness]: {{ '2019/12/22/bitcoin-s-eternal-struggle/#randomness' | absolute_url }}

### Act 3: TEN

> Truth, not authority creates legitimacy.
>
><cite>Erik Cason</cite>

- [The Root Problem][root]
- [Bitcoin changes you.][L1]
- [Erik Cason][erik]
- [The Book of Satoshi][tbos]
- [Trusted Third Parties Are Security Holes][parties]
- [Only the Strong Survive][otss]
- [Reification of Information][reify]
- [Unforgeable Costliness][costliness]
- [Unforgeable History][time]
- [Difficulty-adjusted proof-of-work][pow]

> The nature of Bitcoin is such that once version 0.1 was released, the core
> design was set in stone for the rest of its lifetime.
>
><cite>Satoshi Nakamoto</cite>

[root]: https://satoshi.nakamotoinstitute.org/posts/p2pfoundation/1/
[L1]: https://21lessons.com/1/
[tbos]: https://bitcoin-resources.com/books/the-book-of-satoshi
[parties]: https://bitcoin-resources.com/articles/trusted-third-parties-are-security-holes/
[erik]: https://cryptosovereignty.org/
[otss]: https://bitcoin-resources.com/articles/only-the-strong-survive/
[reify]: {{ '2022/04/03/inalienable-property-rights/#reify' | absolute_url }}
[costliness]: https://bitcoin-resources.com/articles/shelling-out-the-originsof-money/
[time]: {{ '/time' | absolute_url }}
[pow]: {{ '/pow' | absolute_url }}

- [A Quick And Dirty Explanation][qd]
- [The Bitcoin Transaction][tx]
- [In Bitcoin, the Map is the Territory][map]
- [Lack of Simultaneity][sol]
- [Outlawing Bitcoin = Introducing Thoughtcrime][law]

[qd]: https://21-ways.com/ch0-03-quick-and-dirty/
[bbb]: https://21-ways.com/ch0-04-building-blocks/
[tx]: https://jamdocs.org/privacy/01-fundamentals/#the-bitcoin-transaction
[map]: {{ '/memeworld' | absolute_url }}
[sol]: {{ '/sol' | absolute_url }}
[law]: {{ '/law' | absolute_url }}

---

### Paradoxes

- You can't possess bitcoin, but you can be possessed by bitcoin.
- Bitcoin is everywhere and nowhere.
- [Bitcoin can't be copied][copied], yet every part of bitcoin can be copied.
- Bitcoin is always changing, yet unchangeable.
- Bitcoin is digital, yet it is scarce.
- Bitcoin is dead, and bitcoin is alive.
- Bitcoin is a bubble, yet bitcoin is the pin.
- Bitcoin is simple & complicated.
- Bitcoin is elegant & complex.
- Bitcoin is ugly & beautiful.
- [Bitcoin is worse is better.][gwern]
- Bitcoin is worthless, yet bitcoin is too expensive.
- Bitcoin is finite, yet endless.
- Bitcoin is private, yet bitcoin is completely transparent.
- Bitcoin is energy-intensive, yet bitcoin is insanely efficient.
- Bitcoin is slow, yet bitcoin is fast as lightning.
- Bitcoin can't be confiscated, yet bitcoin can be lost.
- Bitcoin is text, yet bitcoin is money.
- [Bitcoin is time][time], and bitcoin is energy.
- Bitcoin is savings, and bitcoin is streaming money.
- Bitcoin is conservative, and bitcoin is progressive.
- Bitcoin is political, yet bitcoin is apolitical.
- Bitcoin is lawless, yet bitcoin is the law.
- Bitcoin is math, and bitcoin is physics.
- Bitcoin is religion, and bitcoin is atheism.
- Bitcoin requires randomness, yet bitcoin creates order.
- Bitcoin price is important, yet bitcoin price is terribly unimportant.
- Bitcoin pays people, yet bitcoin can't got bankrupt.
- Bitcoin is intangible, yet bitcoin is incorruptible.
- [Bitcoin is Love][peace], and bitcoin is Fuck You money.
- Bitcoin is 12 words in your head, and bitcoin is 21 million.
- Bitcoin is knowledge. And knowledge is power.

[copied]: https://bitcoin-resources.com/series/gradually-then-suddenly/

---

### Transcript

The transcript is auto-generated and probably contains errors and inaccuracies,
as well as parts that were cut from the video because talking into a microphone
is hard.

```

Cryptography is not enough. Along his speech on paradoxes and antennas before. I start with the speech. Let's get one thing out of the way code is speech. It speech is code. And if speech isn't free as in freedom, then we'll run headlong into censorship. Internally privacy is not secrecy, cipher punks, write code and running.

The numbers is not the crime numbers. I'm going to talk about three numbers today, because this is going to be a presentation in three acts, black and white, white, and black. And in the third act, we're gonna add a little bit of color. The three numbers are 12, 21 and 10.

---

### Number 12. Act 1.

Let's begin. Bitcoin, as we all know, the coin is called, it's computer code. But in my opinion, more importantly, it's a moral code and this moral code is deeply embedded in Bitcoin, and in the creation thereof and the moral code in essence says: you shall not inflate, you shall not confiscate, you shall not counterfeit.

In short, you shall not steal.

That's what Bitcoin is saying. Basically, I will say something to you. Now that might sound outrageous at first. Namely Bitcoin is knowledge. And I mean, this literally so Bitcoin is literally knowledge. And as another guy who is long dead said at one point in time knowledge is power, of course we all know knowledge is power was set by Francis Bacon and if we can equate that knowledge is power and Francis baking and Bitcoin is knowledge.

Then we can easily deduce that Bitcoin is baking. The kind of spanking. I mean that literally and you might think has this guy lost his mind. Now that's not the case. Because Bitcoin literally is baking because 24 times. The word baking is a valid bit 39 seed phrase which is a valid Bitcoin wallet.

So you can verify this yourself, download something like blue wallet and the baking 24 times and you will have evaluate Bitcoin wallet. So baking times 24, that's Bitcoin and this works with many different words, flag gas grade slice solution summer, they trayed trip zebra and there are others in total.

There are 241 of these special words that work. If you just repeat them, often enough, some words you have to repeat 12 times some others, you'll have to repeat 24. So 12 words 12 words in your head. 12 magic words. This is what Bitcoin is, and this is what Bitcoin can be funnily enough.

12 times word also works and is also a valid Bitcoin wallet. So this literally is Bitcoin and anyone can use this, you should not use this, these are terribly insecure wallets but nevertheless this is how Bitcoin works. Bitcoin is just 12 magic words. So how hollowing the hell does this work?

How can this ever be secure? Why is this the way that bitcoin works? So bitcoin finds strength in numbers, strengthen large numbers and you're 12 magic words. They have to be 12 friend of words for them to be secure. If they are truly random, then they then they are as secure as anything can be all cryptography.

Is rooted in randomness, or in a concept that we call entropy? If they are random, then your wallet is secure. If they're not random, then they are terribly insecure. That's why you should never use the baking wallet, other word wallet, or what have you? So 12 valid words, This is what Bitcoin is It can't be any old random words.

They are very special words and there are checksums involved. So they have to be 12 valued words and if they are valid then you have a valid Bitcoin, wallet Funnily enough, 12 and valid and word are one of these valid 12 words. So if you enter 12 12 times or valid 12 times, or word, 12 times this will work too.

So this is what Bitcoin is essentially from a user face in perspective. Again if you want to try this out, download blue wallet or something similar, Anything that can recover a wallet from a P39 seat, phrase and enter 12 12 times or rally to 12 times or word, 12 times or baking 24 times or what have you, all right?

This is what Bitcoin is which brings us to Act 2.

---

### Act 2

Black and white. Number 21.

So, bitcoin is paradoxical and unintuitive. You might have heard of the story of the sage in India that went to a king and wanted to play a game of chess against the king and the king loved Jess.

So he graciously accepted the offer, but the king. He wanted to repay the sage in case he won. So, he told this age, what do you want this? A payment on the off chance that you win against me in just, and to say she was a very humble character.

He just wanted one grain of rice that the king was to place on one square of the chessboard. And just double the grain of rice for every square on the chess board. So it's one on the first one to on the next one. For on the next one. Eight on the next one.

And so on and the king, obviously, accept it. And of course as luck would have it this age one and thus the king began to put rice on the chess board. And if you ever dealt with exponentials or large numbers, you might notice story. And you might know that this is a lot of rice that the king has to put on the chess board.

So it's a very unintuitively large number. It turns out that these are 18, quintillion grains of rice. So that is indeed a very very large number. If you calculate how much rice is actually. Is it's 210 billion tons of rice. So this is enough rice to cover all of India.

One meter deep in rice. So it's a literal metric fuckton of rice. It is a lot of fries. So 12 magic words back to the 12 magic words, what you can do with the 12 magic words is, you can open up a box inside of a space. Keep in mind that all metaphors about Bitcoin breakdown at one point in time.

So if you want to understand Bitcoin deeply you actually have to look at the code, understand the code and so on. So all these metaphors are in perfect. Nonetheless, I believe that they are useful, so you can think of the 12 words as opening up a paradoxical box, inside the space.

And of course, you can put Bitcoin in this box. And these 12 magic words, of course, we talk about these things as a private key and you can think of the boxes being locked and the key is what unlocks the box. And then you can move Bitcoin around, it's on but also keep in mind that Bitcoin bitcoin only exists inside these boxes.

There is no such thing as you know like opening the box and taking between us out, all you can do is move it to a different books. So, let's say you put a million sets into this box, which is also why we say not your keys, not your coin because your key are equivalent to this value.

That's the neat thing about Bitcoin is source value in bits and bytes directly. It's not a password to anything that is separate The value itself is stored in the information itself. So, if you have 12 words in your head, you literally have Bitcoin in your head. It's not a password or anything like that.

It is the value itself that this stored in your head. And so that's why the keys are equivalent to the coins. So, let's say this key, these 12 magic words, control, a million sets, and let's say just for the sake of argument, you put the million sets into this magic box.

So if the key is random and if you manage to keep it private then everything is good. But if you do something stupid and let's say, you put the 12 magic words onto a public presentation. Then it's very unclear who owns these kind of bitcoins. Like it's who the millions sets five minutes ago is my million sets Who owns them.

Now It's a very difficult concept to pin down a bitcoin The concept of ownership. So if we look at this magical box, there is a million sets in there. And now we can say with 100% guarantee that this box is now empty and the millions sets are 100% gone.

I can say this with confidence because I tweeted this out, not too long ago and, you know, some of the people on Twitter their probably way quicker than you watching this presentation after the fact. So, I know for a fact that these are 100% gone. So 12 magic words again, how can they ever be secure with spoke about randomness?

And we spoke about these non-random wallets like baking and word and so on and so forth and how you should never ever use them. So the security again comes from a strengthen that is embedded in large numbers, we have 2048 of these special words and if you take 12 word, seed, phrase, this is 2048 to the power of 12 which approximately is 128 bit security which is this very large number if you write it out.

And if you remember the story about the grains of rice and the chess board, that's a way large number that 18 quintillion, so the quintillion are you know, somewhat in the middle. So we are many orders of magnitude larger than the chessboard story and just to remind you 18 quintillion was enough to cover all of India.

One meter deep in rice and to guess a private key. You would have to like one specific one. You would have to pick out one specific grain of rice out of this out of all of India that discovered very deep in rice with Bitcoin. It's even more involved so you can think of it as the whole visible universe covered in grains of rice.

And you would still have to pick out one grain of rice to break open a wallet. So to speak. All right, so if the 12 words are random, then you're more than reasonably secure and if you manage to keep your keys private, then again you're secure and you have nothing to worry about.

So you have to check both these boxes. We spoke about one paradox already. I want to rattle off some of the paradoxes that come to mind when we speak about Bitcoin. So again, keep in mind, all metaphors are imperfect. These are various things that people have said over the years, what Bitcoin is and how it works and what the implications are, don't take any of these two seriously.

But still, I think it's interesting to think about these things. All right? Paradigm, the paradox of possession, we saw this already very clearly that you can't really possess bitcoin so bitcoin is secret knowledge but you can definitely be possessed by bitcoin as is evidence by a lot of people that seem to be literally possessed by bitcoin.

So bitcoin is everywhere. Bitcoin is nowhere. It can can't be copied yet. Every part of Bitcoin can be copied. Bitcoin is always changing yet, it is unchangeable, so no single line of code. In Bitcoin is the same as it was when it was first created by Satoshi Nakamoto but it's still unchanging in essence.

I would like to say that Bitcoin soul hasn't unchanging character. Bitcoin is digital yet. This cars. Digital scarcity used to be an oxymoron but now we have something this is digital. And the discourse Bitcoin is that as the mainstream media pundits will always tell you yet Bitcoin is alive.

Bitcoin is a problem yet. Bitcoin is the pin bitcoin is simple here Bitcoin is complicated. Bitcoin is elegant yet Bitcoin is complex. Bitcoin is ugly yet Bitcoin is beautiful. Bitcoin is worse is better. It's a great article by Gwen written a couple of years ago. Bitcoin is worthless, hit Bitcoin is too expensive.

Bitcoin is finite hit Bitcoin is endless Bitcoin is private yet. Bitcoin is transparent Bitcoin, is energy, intensive yet. Bitcoin is insanely efficient at what it does. Bitcoin is slow hit Bitcoin is fast as lightning. Bitcoin can't be confiscated it Bitcoin can be lost Bitcoin is taxed but Bitcoin is money.

Bitcoin is time and Bitcoin is energy. Bitcoin is savings and Bitcoin is streaming money. Bitcoin is conservative yet. Bitcoin is progressive Bitcoin is political and Bitcoin is a political Bitcoin is lawless and Bitcoin is still all when it comes to transactions. Everything that happens internally in Bitcoin. Bitcoin definitely is the law.

Bitcoin is math and Bitcoin is physics. Bitcoin is religion and Bitcoin is atheism. Bitcoin requires randomness yet Bitcoin, creates order Bitcoin prices important. The bitcoin price is terribly unimportant at the same time. Bitcoin pays people yet. Bitcoin can't go bankrupt. Bitcoin is intangible yet. Bitcoin is incorruptible, Bitcoin has rules but no rulers.

Bitcoin is love and Bitcoin is fuck human money. Bitcoin is a chain yet, Bitcoin and slavery. Had tip to Bengal, who brought this to my attention on Twitter, this is the one that I really liked the most after studying Bitcoin for many many years. It seems that this is very much, very much true.

So Bitcoin is 12 words in your head and Bitcoin is 21 million. Bitcoin is knowledge and knowledge is power. So where does bitcoin derive its power from Bitcoin derives its power from the asymmetry of knowledge knowledge. Asymmetry information is symmetry all of cryptographies rooted in information is symmetry and Bitcoin as we will see in Bitcoin, cryptography is not enough.

So you need different kinds of asymmetries for Bitcoin 2 work. So one of these is symmetries, is this is true for multiple things, but one of these are symmetries, is that things need to be hard to produce and easy to verify. This is both through in money. And in cryptography, money needs to be hard to produce and easy, to verify, for good money to emerge.

This is, this is always true. Like, if you can't verify the money, then it's terrible. Money is, it's easy. If it's easy to produce, then again, it's terrible money for cryptography as well. The solution to a crypto cryptographic puzzle, has to be hard to produce, and it has to be easy to verify as well.

So Bitcoin again, checks both of these boxes. It is very hard to produce and is very easy to verify. And to understand this more deeply will have to look at two of the building blocks of Bitcoin which are signatures and blocks. So to interact with Bitcoin, to use Bitcoin in the meaningful way, you need to have a valid signature and someone needs to find a valid block.

To understand this will have to look at valid signatures and valid blocks. So if you want to do anything with Bitcoin, you need to be able to produce a valid signature and someone needs to be able to produce a valid block. So signatures of private blocks are public. Signatures are created.

Locally blocks are created globally, signature steel with secret information, blocks deal with public information, Signatures relate to the 12 words and blocks relate to the 21 million. So, I know this was a very general overview of those two things. Of course, it's nuanced. And I'm glossing over many, many details, but still the important thing is that the 12 words in your hand and the 21 million, there are two sides of the same coin.

So they're like the two pieces of yin and yang that you need to put together for bitcoin to emerge. One of them is not enough, You need both, you need the private information, which are your 12 words and you need the completely public and publicly very viable information at the publicly verifiable history of the blockchain of the thing where the 21 million emerge out from to make a bitcoin work into use Bitcoin in the meaningful way.

So let's put the two either and as we all know bitcoin is not black and white. So we need to add some color to it. As we all know, Bitcoin is orange, which brings us to act three.

---

Act 3. Bitcoin is the orange tree.

To understand this tree will have to look at the root problem that Bitcoin solves. And there is no better person to ask what the root problem is that Bitcoin solves, then it's greater Satoshi Nakamoto. So, Satoshi, famously said that the root problem with conventional currency is all the trust that's required to make it work.

So, trust is to root problem at the problem with trust this, the trust can be abused. So he famously also said, somewhere else that in Bitcoin, we do not have to rely on trust, We can use crypto proof. Those were his words instead of relying on trust. So I would like to show you that this is not enough.

The crypto proof alone is not enough and to understand this we have to look at how to trust problem was solved historically. So how was the trust problem solved? Historically, very easy. We always had some people that were dressed very nicely with a very nice smile on their face.

And they would say, well, just trust us, we will take care of everything. And you can just put all your trust in us and we will solve the problems for you. And this is how the world works. So we always had authorities that we had to trust. And now supposedly, we can replace this with cryptography, but what happens if we do this, does this really work.

So we have a face of cryptography, unfortunately, but there we go. That is the face of cryptography. It seems it is definitely the face of crypto and so the situation doesn't really change. If you know the people are a bit younger and a bit more technologically involved. And so if the trust us comes from the crypto bros, nothing really changes changes.

The crypto bros just become the new politicians and that's what we want to move away from. Don't we? Like we always had politicians. Tell us just trust us. This is the current state of things. So the state would always say trust us and we will figure it out and you the flaps have no say anyway and Bitcoin bitcoin is not about trusting the state.

Bitcoin is about the separation of money and state and for the separation of money and state cryptography is not enough. If cryptography would be enough, we would have had something like Bitcoin. We would have had cryptographic money for a long time already. So we had keys and letters and those kind of things for a very, very long time.

This is a cryptographic device that is very, very old. This is a ledger that is thousands of years old and we can't magically put them together and have something like Bitcoin because cryptography alone does not provide integrity. Cryptography, alone does not provide legitimacy and to understand like I choose these words very carefully and to understand why this is the case we have to, at least, you know, like do a little bit of political philosophy and speak to that guy.

And this guy is Thomas Hobbes and he famously said that authority. Not truth creates legitimacy and he said this about state power and as we all know Bitcoin changes changes you in a massive way. So now we have our own kind of political philosophers and Thomas Hobbes turns into Eric Cason and with Eric Cason says about Bitcoin power is the truth.

Not authority creates legitimacy and that is exactly correct. That is exactly right. The authority in Bitcoin. Comes from truth itself. It doesn't come from any external source. It's a close loop system that builds up its own truth. That anyone can verify, you don't have to trust anyone and, and cryptography is not enough for that.

You need something else. You need something else. So I highly recommend to read Eric Cason. He is on the mission to reclaim the word crypto. And you can read his writing soon, cryptocurrency.org. And we're going to talk about crypto and cryptography next. So when I say crypto here in this context, I'm most of the time, I mean cryptography and again, I would like to show you the cryptography is not enough.

Because cryptography requires secrecy. Cryptography requires secrecy, always. Which means automatically cryptography does not provide legitimacy because cryptography is not necessarily tied to reality. Cryptography, also doesn't automatically provide any type of scarcity. If this would be the case we would have, we would have had scars digital things for a very long time.

We would have had it before Bitcoin but we don't like we didn't, we needed something else. So crypto most definitely provides like the crypto does not provide scarcity period. We have over 9,000 shit coins listed on coin market cap and so it's very, very clear that crypto does not equal scarcity, if you hear crypto, just think rock poles, that's way more accurate, don't think scarcity, don't think you know quick riches or anything like that.

Just think rock poles. You will have an easy life, which brings us to the next section of Act 3, which is the grade rug.

The problem with rock pools is. Well, here's the problem. Here's the problem with rock pulls. It ain't what? You don't know. That gets you into trouble. It's what, you know, for sure. That just ain't so. Mark, Twain famously said this about rock pose, and Satoshi also had something to say that he basically said where there is trust in others.

There's a rock, I'm obviously paraphrasing but I can highly recommend you read the books of Satoshi, the all his writings. It's a compilation of all his writings online in chronological order and he was talking about trust a lot and how trusted third parties are security holes. Again, great piece by Szabo the everyone should read and of course the great rug bitcoin fixes this because Bitcoin is not crypto.

Bitcoin is not a rugpull Bitcoin. In fact it's anti-rugpull technology Bitcoin provides legitimacy and it provides legitimacy by combining reality and cryptography. It combines also physics and math which a lot of people don't get and these combines cryptography with another kind of proof. It's not only cryptographic proof.

There is another kind of proof involved. It combines keys with work and most importantly keys and work are not the same thing. They are truly not the same thing there. They're very different. Just like reality. And theory is different. And one one way to think about reality is the reality is that which survives and my friend?

Allen Farrington. He wrote a great piece, only the strong survive, again everyone should read it. And so we have to talk about strengths for a little bit. This beautiful image, I call it Adams back for obvious reasons because Adam back is the inventor of proof of work. And the beautiful thing about proof of work is that it is self-evident.

Proof of work is completely self-evident. You don't need any external source of truth for proof of work to make sense. So prove work yourself, evident and proof of work always deals in transformation. So proof of work is always about transformation. It doesn't matter if it's the pyramids that transformed stones into large pyramids, it doesn't matter.

If it's the ripped guy in the gym, proof of work, always deals in transformation, and if all we have is data, then all we have is computation. So we only have data information and the transformation of this information which is computation, and of course, to do compute, we require electricity and to generate electricity require energy and energy.

Of course is costly. We cannot print more energy and this is where the integrity of proof of work comes from. So proof of work provides integrity with our authority without crypto keys and without relying on secrecy. So the difficulty adjusted proof of work in Bitcoin. Truly is the solution to many, many, many problems.

And the more people understand this and the quicker, they understand this, the easier it is to figure out why Bitcoin works. And why other solutions failed and why moving away from the difficulty. Adjusted proof of work is a terrible idea. You reintroduce. All the problems that Bitcoin actually solves one of these problems is the problem of time and to explain this in a hopefully not

And one of these problems is the problem of time. So y'all remember to story of the sage visiting the king in India to play a game of chess which had a very unintuitive outcome. I want to tell you a bitcoin riddle, you all probably know a little bit about Bitcoin otherwise you wouldn't watch this and you probably know that Bitcoin has a block time of 10 minutes.

So every 10 minutes and you block comes in, and this is my favorite Bitcoin riddle kind of for one of my favorites because it will tell you how much someone knows about it. Can how deeply how deeply they looked into it already. So let's assume again every 10 minutes and you block comes in.

That's the way things are a bit kind. And let's assume that the last block came in nine minutes ago, when will the next block come in? Most people will say something like in a minute or maybe a little bit longer, you know, two minutes something like that and the correct answer.

Very counting totally is always 10 minutes. So if you said something else than 10 minutes, then you basically you made the gambler spelling. So the principle behind this is very similar to use standing at the roulette table. And red came, you know, red came in for like, 15 times in a row and now, I'm I ask you.

What are the chances the red comes again, or what are the chances that comes? And if you say anything else than 50/50 then, well, you're committing, the gamblers fallacy. So, 10 minutes this is the magic number. This is the duration that it is about and the every 10 minutes, reality asserts itself, in Bitcoin every 10 minutes, truth emerges, every 10 minutes past become stone and every 10 minutes information is reified.

It's about this duration of 10 minutes. This is the constant in Bitcoin. This is more or less. The only constant between almost because everything else emerges out of that and you could say that Bitcoin measures duration, be a competition. Like, this is not terribly inaccurate and further Bitcoin because not only meshes the range of your computation.

It also settles 10 minutes of history, every 10 minutes. So it is about these 10 minutes of history. But it's not only about the past. It's also about the future. And we, that's that's such an important concept to understand that Bitcoin Bitcoin is fixed in time. It's not, it's not really tied to energy or like mining Bitcoin doesn't require energy in the sense that the more energy you put in the more Bitcoin, our mind that everyone is just greedy.

And you know like if we want to produce more Bitcoin that's why we that's why we use more energy for it. No energy relates to security and energy relates to the distribution of the 21 million. It doesn't create more Bitcoin and the reason why we know this is that we have bitcoin supply curve.

So Bitcoin has a predetermined supply. It has an emission schedule, so the supplies emitted over time. And that's why we know in the year approximately 2140, all 21 million Bitcoin will be mined. And this is obviously linked to duration, because with every valid block, new, Bitcoin are emitted, and this is how Satoshi solved the problem of bringing new coins into circulation, which is an insanely difficult problem to solve without any authority.

So it is like a natural process. A natural growing thing that emits the myths, new coins to all those who who choose to secure it at this is this is why the genesis of Bitcoin is so important and it's so beautiful and that's the only way to do any fair distribution.

Everything else falls back to authority. That's what I mean when I say Bitcoin is time, I mean these 10 minutes and the past at the future at how the past is settled and how the future is predetermined. So the difficulty of just approval work is what creates an unforgeable history.

Nick Szabo talked about unfortunately costliness I think you Bitcoin we should talk about unfortunately because the ledger is just that letter is a history of transactions, who knows what to whom and it has to be unfortunate for it to be good money. Otherwise, it will always be manipulated and Bitcoin creates this unforgeable history.

The difficulty adjust the proof of work solves the root problem. A lot of people when they start talking about the root problem, they mean the double spending problem, but we framed it as trust and integrity. So the difficulty adjusted proof of work provides trust and integrity. Most importantly, we vote relying on secrecy without relying on authority.

So the difficulty adjusted proof of work solves all the problems of manus passed. And I mean, that literally it's after problems of gold. It's also the problems of field, obviously. It's of the problems of all the digital monies that we try to create in the past. So Bitcoin has a very rich history of like, you know, it depends on how long you want to go back, but Bitcoin did not appear out of nowhere.

Like people ever since the internet emerged people try to do money on the internet that they always failed. And people say they failed because of the double spending problem and so on and so forth. But there's a lot of things wrapped up in the double spending problem. So we already talked about trustless issuance within really talk too much about decentralized timestamping.

But if you want to read about it, please read Bitcoin is time. We also didn't talk too much about Krypton analytics ability. That's one problem that makes about try to solve for the longest time. The problem is that you cannot define a cryptographic puzzle or any computational problem, where you can, be sure that any computer will solve it below a certain threshold of time.

So, let's say, pick any supercomputer, and we'll take this supercomputer at least five minutes to solve this problem. You cannot do it. You just can't. That was a, that was a big problem of digital monies because you, you cannot know the breakthroughs in in computing. You cannot know if someone comes up with a new architecture or better way faster computer.

There's like 10 trillion times faster and suddenly you can solve this problem in like a millisecond. And so this cryptanalytic stability problem was a really hard problem to solve. The difficulty adjusted proof of work solves it, digital scarcity. Again, it used to be an oxymoron. Now it isn't, thanks to Bitcoin.

We have it and they didn't. That's what I want to talk about next and of course, the computer scientists listening to this, they will have big question marks in their mind because they all know that we were able to do data integrity before Bitcoin. Like we we had multiple ways of doing data integrity.

But I'm here to tell you, no, that's actually not correct because for data integrity to work, you always need to have keys. So how do you do any type of data entity with out secret information without relying on private keys? What if all you have, what if all you want to have is just public information?

What if authorities are not allowed, what if keyholders are not allowed? What if we must not have a quorum of people that sign off on the on the integrity of the information, all the other things, all the other systems that want to remove proof of work from the equation, automatically fall back into a quorum of people to keyholders that sign off on the information.

It's very much a fiat move where, where we have authority say this is their reality, this is the golden evolves. Just trust us. We sign up on this. All the goal is there just trust us and you're dealing with paper notes. So, removing proof of work is an absolutely horrible idea that reintroduces all the problems, that Bitcoin solves.

So, how can you do data integrity? How can you do the data integrity with out, any primary keys? How can you do it to really hard problem to understand how data integrity works? We will have to take a closer look at this orange again and we'll split it up again.

So we're back into again and yang. And we're going to talk about integrity and validation if we're going to talk about the 12 words again and the 21 million and about private keys and public ledgers. And so very, very briefly to

So very briefly, if you have keys and you want to prove the integrity of the keys, it's very easy because you can do key pairs, and asymmetric cryptography, then we have private keys and public keys. And with one or the other, you can check the integrity of the other and just, you know this is well known.

This is nothing new. This is all fine and nice and that's very, very easy. If we have keys data integrity and validation is very easy. What if we don't have keys? What if we don't have any private part at all? What if all we have is public data? What if we, what if we must not have any keys.

This is so important, like how to do this with out any keys at all, how to do it. Well, the answer should be obvious, but it wasn't obvious for the longest time. It was only obvious to Satoshi. And then so, of course, his proof of work and back. And so on, it's a fourth, because the nice thing about proof of work again, is that you only have to look?

You only have to look proof of work itself. Evident everything you need for verification is publicly available. Nothing is hidden. No, private keys are needed. There is no authority. There is no secret secrecy. There's just truth. There's truth embedded in the data itself and that's why it's so beautiful, he just can look at it.

And with out, any use of any private keys, you can verify that everything is correct in the day to itself, and you can go back to Genesis and see that. No one was able, no one was able to modify this data in any shape, way, shape or form. And you do not need to trust anyone.

You don't need to trust any quorums, any keyholders any external sources. The truth is self evident in the data itself. That's what the enemy came. And when he said the map is not the territory like in Bitcoin, in Bitcoin, the map is the territory in Bitcoin. The map is the territory.

There is no differentiation. You just look at the map. You look at the data and there is no external thing. The truth is self-evident in the data itself. In Bitcoin, truly, the map is the territory. So this was the big brain invention of Satoshi cut again.

So, this was the big brain invention of Satoshi Nakamoto, because Satoshi was the first person that was able to think decentralized completely about assurance about security, about time itself. The timing problem is such a, such a difficult problem to solve as well. Like, I encourage anyone who is interested in other systems to always look at the timing problem.

We don't have fixed time in our universe. And this is why it's such a difficult problem. Just because of relative effects alone together, orally sequence of events in decentralized computing. It's it's, it's a borderline impossible problem and only the difficulty, adjust the proof of work solves it, completely. So Satoshi knew this Satoshi knew that he had a breakthrough because he said he said, I think this is the first time we're trying a decentralized non-trust-based system.

So he realized that with crypto proof, and the reification of information, which is a phrase, I really like it which are sold from Adam Gibson, we can create digital scarcity, we can create sound money in cyberspace and he also knew that crypto proof was not enough. He knew the cryptography was not enough.

He mentioned in one of his of his posts that we, we can't, just we, we have computational proof of the past computational. Proof of the sequence of events. That's what he's at. And it's this computational proof computational proof is different from cryptographic proof because in computational proof in the difficulty, adjust approval work.

There are no private keys involved. It's just pure computation. Pure raw energy if you will. And this is absolutely required to provide. This is absolutely required to have publicly available information. That is consisted in itself that anyone can validate. So bitcoin is knowledge. It is literally true. It is literally true that Bitcoin is not much anyone.

Anyone can have the knowledge of the integrity of the system, it's a completely open system. It's completely transparent. You can yourself convince yourself of the 21 million, you can check bitcoins monetary policy, you can check the integrity of the system but the opposite is also true. That knowledge is Bitcoin as we saw Bitcoin is just 12 words in your head.

That's why I believe that at trying to, you know, outlaw bitcoin in any in any way is equivalent to thought crime because all that Bitcoin mining does, for example, is trying to find random numbers. All that holding Bitcoin entails is having 12 words in your head. So if your government tells you that you're not allowed to hold Bitcoin, that's what they are saying.

You cannot think of baking 24 times. You cannot think of word 12 times, you can't have 12 random words in your head. That's what anyone is saying when they forbid you to use Bitcoin. It's of course not enforceable but that's a different kind of speech.

Of course, it can't be enforced, which is the whole point of Bitcoin: to build a system that no one can ever stop, including those, who want to stop it, including those who are working on it.

And of course the reverse is through as well because as we now know knowledge is also Bitcoin because Bitcoin is just 12 words in your head knowledge and Bitcoin Bitcoin, it's private knowledge, 12 words in your head. Bitcoin is public information public and transparent information which leads to the 21 million.

It's private keys and public letters and the S at the end of letters. And it's important because with many, many letters all over the world and you need to have your own valid copy that you in the best case, validate yourself. And if you want to use Bitcoin in any meaningful way, you have to put those to together.

And if you put them together, then the orange emerges. And just, as a very quick example, let's say Ellis wants to send Bob some sets, so Alice needs a private key and she needs a copy of the public ledger and in private, she uses her private key to sign and message, which is a transaction.

And let's say, this message says, I, Alice, want to send 21 sets to Bob and she signs it with her private key. So if everything checks out and if the signature is valid, then the transaction gets broadcast and of course the Bitcoin network will accept it.

And if the transaction is valid, the Bitcoin network will accept it and the transaction will land in the mempool where with where and to transaction will land in the mempool. Which is what connects the private world of private keys with the public world of public ledgers. It connects the 12th and the 21, it is the link between the past and the present and if everything checks out and if the signature is valid, and if a valid block is found after approximately 10 minutes, then the transaction is confirmed, which is what Bitcoin is saying, all the time, every 10 minutes.

But it is saying more than that, with every transaction that is confirmed with every valid block, that is coming in it also, self-confirms, it's own integrity, always all the time. The beautiful thing about the difficulty, just a proof of working bitcoin is that it's accumulative for over time. It's like layers of amber that solidify the past.

And with this solidified past Bitcoin, also says moral code confirmed. And as we heard in the very beginning, the moral of bitcoin is, you shall not inflate your shallot confiscate. You shall not counterfeit in short, you shall not steal. And that's what Bitcoin is saying, every 10 minutes without relying on trust.

```

---

If you like my work [consider supporting me][support] in writing [my 2nd
book][21W].

[support]: {{ '/support' | absolute_url }}
[21W]: https://21-ways.com/
