---
layout: post
title: "Purple Text, Orange Highlights"
subtitle: "How nostr can benefit readers and writers."
description: "Using nostr as a base layer to create, consume, and monetize long-form content."
date: 2023-04-04
blocktime: 783891
image: /assets/images/reader.jpg
audio: /assets/audio/reader.ogg
redirect_from: /reader
updated_version: https://habla.news/a/naddr1qqxnzd3cxqmrzv3exgmr2wfeqy08wumn8ghj7mn0wd68yttsw43zuam9d3kx7unyv4ezumn9wshszyrhwden5te0dehhxarj9ekk7mf0qy88wumn8ghj7mn0wvhxcmmv9uq3zamnwvaz7tmwdaehgu3wwa5kuef0qy2hwumn8ghj7un9d3shjtnwdaehgu3wvfnj7q3qdergggklka99wwrs92yz8wdjs952h2ux2ha2ed598ngwu9w7a6fsxpqqqp65wy2vhhv
author: Gigi
category: nostr
favorite: false
tags:
 - Bitcoin
 - Writing
 - nostr
---


Not too long ago, I tried to paint a picture of what
a [vision for a value-enabled web][vew]
could look like. Now, only a couple of months later,
all this stuff is being built. On nostr, and on lightning. Orange and
purple, a match made in heaven.

It goes without saying that I'm beyond delighted. What a time to be alive!

### nostr

Here's the thing that nostr got right, and it's the same thing that
Bitcoin got right: information is easy to spread and hard to stifle.[^fn-stifle]
Information can be copied quickly and perfectly, which is, I believe,
the underlying reason for its desire to be free.

[^fn-stifle]: That's a [Satoshi quote][stifle], of course: "Bitcoin's solution is to use a peer-to-peer network to check for double-spending. In a nutshell, the network works like a distributed timestamp server, stamping the first transaction to spend a coin. It takes advantage of the nature of information being easy to spread but hard to stifle."

[stifle]: https://satoshi.nakamotoinstitute.org/posts/p2pfoundation/1/

Easy to spread, hard to stifle. That's the base reality of the nature
of information. As always, the smart thing is to work with nature, not
against it.[^1] That's what's beautiful about the orange coin and
the purple ostrich: both manage to work with the peculiarities of
information, not against them. Both realize that information can and should be
copied, as it can be perfectly read and easily spread, always. Both understand
that resistance to censorship comes from writing to many places, making the cost
of deletion prohibitive.

> Information does not just want to be free,
> it longs to be free. Information expands to fill the available
> storage space. Information is Rumor's younger, stronger cousin;
> Information is fleeter of foot, has more eyes, knows more, and
> understands less than Rumor.
>
> <cite>Eric Hughes, [A Cypherpunk's Manifesto][manifesto]</cite>

[manifesto]: https://nakamotoinstitute.org/static/docs/cypherpunk-manifesto.txt

Nostr is quickly establishing itself as a base layer for information exchange,
one that is identity-native and value-enabled. It is distinctly different from
systems that came before it, just like Bitcoin is distinctly different from
monies that came before it.

As of today, the focus of nostr is mostly on short text notes, the so-called
"type 1" events more commonly known as *tweets*.[^fn-kinds] However, as you should be aware
by now, nostr is way more than just an alternative to twitter. It is a new
paradigm. Change the note kind from `1` to `30023` and you don't have an
alternative to Twitter, but a replacement for Medium, Substack, and all the
other long-form platforms. I believe that special-purpose clients that focus on
certain content types will emerge over time, just like we have seen the
emergence of special-purpose platforms in the Web 2.0 era. This time, however,
the network effects are cumulative, not separate. A new paradigm.

Let me now turn to one such special-purpose client, a nostr-based reading app.

[^fn-kinds]: Refer to the various NIPs to discover the multitude of [event kinds][kinds] defined by the protocol.

[kinds]: https://github.com/nostr-protocol/nips#event-kinds
[nip23]: https://github.com/nostr-protocol/nips/blob/master/23.md

### Reading

I'm constantly surprised that, even though most people do read a lot
online, very few people seem to have a reading workflow or reading
tools.

Why that is is anyone's guess, but maybe the added value of such tools
is not readily apparent. You can just read the stuff right there, on the
ad-ridden, dead-ugly site, right? Why should you sign up for another
site, use another app, or bind yourself to another closed platform?

That's a fair point, but the success of Medium and Substack shows that
there is an appetite for clean reading and writing, as well as providing
avenues for authors to get paid for their writing (and a willingness of
readers to support said authors, just because).

The problem is, of course, that all of these platforms are *platforms*,
which is to say, walled gardens that imprison readers and writers alike.
Worse than that: they are fiat platforms, which means that
permissionless value-flows are not only absent from their DNA, they are
outright impossible.[^2]

Nostr fixes this.

{% include image.html name="nostrich-reading-a-newspaper.jpg" %}

The beauty of nostr is that it is not a platform. It's a protocol,
which means that you don't have to sign up for it---you can create an
identity yourself. You don't have to ask for permission; you just *do*,
without having to rely on the benevolence of whatever dictator is in
charge of the platform right now.

Nostr is *not* a platform, and yet, powerful tools and services can be
built and monetized on top of it. This is good for users, good for
service providers, and good for the network(s) at large. Win-win-win.

So what am I talking about, exactly? How can nostr improve everyone's
reading (and writing) experience?

Allow me to paint a (rough) picture of what I have in mind. Nostr
already supports private and public bookmarks, so let's start from
there.

Imagine a special-purpose client that scans all your bookmarks for long-form
content.[^fn-urls] Everything that you marked to be read later is shown in an orderly
fashion, which is to say searchable, sortable, filterable, and displayed without
distractions.  Voilà, you have yourself a reading app. That's, in essence, how
Pocket, Readwise, and other reading apps work. But all these apps are walled
gardens without much interoperability and without direct monetization.

[^fn-urls]: In the nostr world long-form content is simply markdown as defined in [NIP-23][nip23], but it could also be a link to an article or PDF, which in turn could get [converted into markdown][readability] and posted as an event to a special relay.

[readability]: https://github.com/mozilla/readability

Bitcoin fixes the direct monetization part.[^fn-v4v] \\
Nostr fixes the interoperability part.

[^fn-v4v]: ...because Bitcoin makes [V4V][busking] practical. (Paywalls are not the way.)

Alright, we got ourselves a boring reading app. Great. Now, imagine that
users are able to highlight passages. These highlights, just like
bookmarks now, could be private or public. When shared publicly,
something interesting emerges: an overlay on existing content, a lens on
the written Web. In other words: *swarm highlights*.

Imagine a visual overlay of all public highlights, automatically shining
a light on what the swarm of readers found most useful, insightful,
funny, etc.

{% include image.html name="highlights.png" %}

Further, imagine the possibility of sharing these highlights as a "type 1" event
with one click, automatically tagging the highlighter(s)---as well as the
author, of course---so that eventual sat-flows can be split and forwarded
automatically.

{% include image.html name="sat-flows.png" caption="Value-splits could be realized with <a href='https://dergigi.com/prism'>Lightning Prisms</a>"%}

Voilà, you have a system that allows for value to flow back to those who
provide it, be it authors, editors, curators, or readers that willingly
slog through the information jungle to share and highlight the best
stuff (which is a form of curation, of course).

Zaps make nostr a defacto address book[^fn-pp] of payment information, which is
to say lightning addresses, as of now. Thanks to [nostr wallet connect][nwc] (among
other developments), sending sats ~~will soon be~~ is already as
frictionless as leaving a like.

[^fn-pp]: The Yellow Pages are dead, long live [The Purple Pages](http://purplepag.es/)!

Value-for-value and participatory payment flows are something that
traditional reading apps desperately lack, be it Pocket, Instapaper,
Readwise, or the simple reading mode that is part of every browser.

A neat side-effect of a more structured way to share passages of text is
that it enables semi-structured discussions around said
passages---which could be another useful overlay inside
special-purpose clients, providing context and further insights.[^5]

Further, imagine the option of seamlessly switching from text-on-screen
to text-to-speech, allowing the user to stream sats if desired, as
Podcasting 2.0 clients already do.[^3]

Imagine user-built curations of the best articles of the week, bundled
neatly for your reading pleasure, incentivized by a small value split
that allows the curator to participate in the flow of sats.

You get the idea.

I'm sure that the various implementation details will be hashed out,
but as I see it, 90% of the stuff is already there. Maybe we'll need
another NIP or two, but I don't see a reason why this can't be
built---and, more importantly: I don't see a reason why it wouldn't
be sustainable for everyone involved.

Most puzzle pieces are already there, and the rest of them can probably
be implemented by custom event types. From the point of view of nostr,
most everything is an event: bookmarks are events, highlights are
events, marking something as read is an event, and sharing an excerpt or
a highlight is an event. Public actions are out in the open, private
actions are encrypted, the data is not in a silo, and everyone wins.
Especially the users, those who are at the edge of the network and
usually lose out on the value generated.

In this case, the reading case, the users are mostly "consumers" of
content. What changes from the producing perspective, the perspective of
the writer?

### Writing

Back to the one thing that nostr got right: information is easy to
spread but hard to stifle. In addition to that, digital information can
be copied perfectly, which is why it shouldn't matter where stuff is
published in the first place.

Allow me to repeat this point in all caps, for emphasis: **IT SHOULD NOT
MATTER WHERE INFORMATION IS PUBLISHED**, and, maybe even more
importantly, it shouldn't matter if it is published in a hundred
different places at once.[^fn-torrents]

What matters is trust and accuracy, which is to say, digital signatures
and reputation. To translate this to nostr speak: because every event is
signed by default, as long as you trust the person behind the signature,
it doesn't matter from which relay the information is fetched.

This is already true (or mostly true) on the regular web. Whether you
read the internet archive version of an article or the version that is
published by an online magazine, the version on the author's website,
or the version read by some guy that has read more about Bitcoin than
anyone else you know[^fn-guy]---it's all the same, essentially. What matters
is the information itself.

[^fn-guy]: There is only one such guy, as we all know, and it's [this Guy][guy].
[guy]: nostr:npub1h8nk2346qezka5cpm8jjh3yl5j88pf4ly2ptu7s6uu55wcfqy0wq36rpev

Practically speaking, the source of truth in a hypernostrized world is---you
guessed it---an event. An event signed by the author, which allows for
the information to be wrapped in a tamper-proof manner, which in turn
allows the information to spread far and wide---without it being
hosted in one place.

The first clients that focus on long-form content already exist, and I expect
more clients to pop up over time.[^4] As mentioned before, one could easily
imagine [prism-like value splits][prism] seamlessly integrated into these
clients, splitting zaps automatically to compensate writers, editors,
proofreaders, and illustrators in a V4V fashion. Further, one could imagine
various compute-intensive services built into these special-purpose clients,
such as GPT Ghostwriters, or writing aids such as Grammarly and the like. All
these services could be seamlessly paid for in sats, without the requirement of
any sign-ups or the gathering of any user data. That's the beauty of [money
proper][rediscovery].

{% include image.html name="nostr-reader-and-writer.png" %}

Plagiarism is one issue that needs to be dealt with, of course. Humans
are greedy, and some humans are assholes. Neither bitcoin nor nostr
fixes this. However, while plagiarism detection is not necessarily
trivial, it is also not impossible, especially if most texts are
published on nostr first. Nostr-based publishing tools allow for
OpenTimestamp attestations thanks
to [NIP-03](https://github.com/nostr-protocol/nips/blob/master/03.md),
which in turn allows for plagiarism detection based on "first seen"
lookups.

That's just one way to deal with the problem, of course. In any case,
I'm confident that we'll figure it out.

### Value

I believe that in the open ~~attention~~ information economy we find
ourselves in, value will mostly derive from effective curation,
dissemination, and transmission of information, *not* the exclusive
ownership of it.

Although it is still early days,
the [statistics](https://stats.podcastindex.org/v4v) around Podcasting
2.0 and [nostr zaps](https://zaplife.lol/) clearly show that (a) people
are willing to monetarily reward content they care about, and (b) the
willingness to send sats *increases* as friction *decreases*.

The ingenious thing about boostagrams and zaps is that they are direct
and visible, which is to say, public and interactive. They are neither
regular transactions nor simple donations---they are something else
entirely. An unforgable value signal, a special form of gratitude and
appreciation.

Contrast that with a link to Paypal or Patreon: impersonal, slow,
indirect, and friction-laden. It's the opposite of a super-charged
interaction.

While today's information jungle increasingly presents itself in the
form of (short) videos and (long-form) audio, I believe that we will see
a renaissance of the written word, especially if we manage to move away
from an economy built around attention, towards an economy built upon
value and insight.

The orange future now has a purple hue, and I believe that it will be as
bright as ever. We just have a lot of building to do.

### Further Reading

- [A Vision for a Value-Enabled Web][vew]
- [The Freedom of Value][busking]
- [The Rediscovery of Money][prism]
- [Lightning Prisms][rediscovery]

[vew]: {{ '/vew' | absolute_url }}
[prism]: {{ '/prism' | absolute_url }}
[rediscovery]: {{ '/rediscovery' | absolute_url }}
[busking]: {{ '/busking' | absolute_url }}

### NIPs and Resources

- [Nostr Resources][nr]
- [value4value.info](https://value4value.info/)
- [nips.be](https://nips.be/)
- [NIP-23: Long-form content](https://github.com/nostr-protocol/nips/blob/master/23.md)
- [NIP-57: Event-specific zap markers](https://github.com/nostr-protocol/nips/blob/master/57.md)
- [NIP-47: Nostr Wallet Connect](https://github.com/getAlby/nips/blob/master/47.md)
- [NIP-03: OpenTimestamps attestations for events](https://github.com/nostr-protocol/nips/blob/master/03.md)

---

[^1]: Paywalls work against this nature, which is why I consider them misguided at best and incredibly retarded at worst.

[^2]: Fiat doesn't work for the [value-enabled web][vew], as fiat rails can never be open and permissionless. Digital fiat is never money. It is---and always will be---[credit][rediscovery].

[^3]: Whether the recipient is a text-to-speech service provider or a human narrator doesn't even matter too much, sats will flow just the same.

[^4]: [BlogStack](https://blogstack.io/) and [Habla](https://habla.news/) being two of them.

[^5]: Use a URI as the discussion base (instead of a highlight), and you got yourself a [Disqus](https://disqus.com/) in purple feathers!

[^fn-torrents]: That's what torrents got right, and [ipfs] for that matter.

[nr]: https://nostr-resources.com
[nwc]: https://nwc.getalby.com/
[ipfs]: https://fiatjaf.com/d5031e5b.html
