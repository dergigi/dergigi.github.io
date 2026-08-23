---
layout: post
title: Rebuilding Boris
redirect_from: "/rebuilding"
date: 2026-08-23 22:15:00 +0200
description: "There is no fail. There is learn, and try again."
image: "/assets/images/rebuilding-boris.png"
author: Gigi
category: blog
tags:
- thoughts
- ai
- nostr
---

A couple of months ago (maybe it was a year ago already? Who knows, time is
weird in this day and age) I started to work on a little project, as I often
do. The project's name is Boris, which stands for "bookmarks and other stuff
read in style." I still have to giggle when I think about how the name came to
be. I asked who invented the highlight marker, and one of those artificially
intelligent systems, the systems that we all seem to think so highly of
right now, artificially lied to me.

I still find it curious that we call these lies "hallucinations," as if
providing inaccurate or dangerously wrong information to millions and millions
of people is somehow cute, a little oopsi-daisy that might happen on an LSD
trip or something.

{% include image.html path="/assets/images/bitcoin/2025-10-31-building-boris/boris-inventor-of-the-highlighter.png" link="/2025/10/31/building-boris/" %}

Boris is full of these hallucinations, of course. I never looked at the source
code, which was one goal of this experiment: "vibe" something that's
borderline useful. Build an app that I would actually use myself. A reading
app that's my own daily driver, good enough so that it does its job, but not
only that: does its job in a way that it's a joy to use.

"What is your reading workflow?" is one of my favorite questions to ask people
I interact with. Not everyone has a reading workflow, which is a little
surprising to me. I say "a little" since I'm well aware that most people
don't read. Those who do, however, usually have a reading workflow. Some are
sophisticated, some are less so.

Here is mine: I have two modes of operation: browsing, and reading. I rarely
mix the two. When I'm in browsing mode, I'm in discovery mode. Scrolling
feeds, searching for random stuff, clicking on lots of links, discovering
authors and books, having 300 tabs open. If something is interesting (or
interesting enough) I put it on a list. This might be a list in my notebook,
or a list in one of my reading apps, or a simple bookmark, or I put it into
my daily notes, or whatever. In short: I save it for later. I'm not in
"reading mode" right now, so I won't even bother to start reading it. Maybe
I'll read a short excerpt, or scan through it briefly. But usually I don't.
Usually, the social signal attached to my discovery process is enough. Someone
who I trust to have good taste shared it, mentioned it, or shared an excerpt
of it, so it deserves to be saved for later.

Now to the reading mode: I often read at night, or while traveling, or when
doing chores, or when walking. The latter two are not "reading" in the
traditional sense, but listening to what was written using TTS. I've been
using text-to-speech systems for almost two decades now. Back in the olden
days, when a robot voice would actually sound like a robot voice. To me, a
reader without TTS is no reader at all. TTS is not optional.

Anyway, back to my reading workflow: When reading, I like to take notes. I
_especially_ like to underline and highlight stuff. I do this all the time,
no matter what I read. It might be a book, or a paper, or an article, or
whatever. If I have a physical printed-out copy I use the highlighter and the
pen that are in my backpack. I rarely leave the house without my backpack,
meaning that I always have my trusty highlighter with me. (I'm not kidding.)

Oh, and one last thing regarding my reading workflow: If something I
highlighted is particularly delightful, I'll take a picture and share it with
my friends. Or I'll just take a picture for myself, so I'll find the passage
later, in what the cool kids would call "camera roll," I guess (to me it's just
a gallery, or a folder that syncs to all my devices).

To translate all the above into features: the reading app of my dreams makes
highlighting effortless, should have proper TTS, needs to be natively social
(so I can share stuff with my friends), and has to work in airplane mode
(because airplane time is my reading time, or travel time in general, which
tends to mean spotty connection time).

That's what Boris aims to be. And my first attempt at building it, [a 21-day
experiment](/2025/10/31/building-boris/) that culminated in levels of
AI-psychosis that shouldn't even be possible, failed. Or at least kind of
failed. The webapp version of Boris kinda worked, but also kinda sucked. I
hope to make it better one day, but I can say with confidence that it sucked
since I didn't use it as my daily driver reading app.

I failed. What a shame.

But I wouldn't be my mother's son if I didn't try again, since one of her
infamous [sayings](/sayings) was "Aufgeben tut man einen Brief." Not sure if the saying
makes sense in any other language but German, but it basically means that the
only "giving up" that is permissible is "giving up" a letter at the post
office (the German phrase to bring a letter to the post office is the same as
"giving up").

There is no fail. There is learn, and try again.

## Boris Android: Going Native

My past adventures in Boris-land ended with me saying something like "maybe
there's gonna be a model soon that does all the things, that doesn't make the
stupid mistakes all the time, that will actually fix all the bugs (without
introducing new ones)," and so on.

21 days. That's what it took me the last time.

This time, with the weapon of my choice being Android, it took me 3 days or
so. Three days to rebuild it from scratch, reaching feature parity with the
webapp. Three days. That's a 7x improvement.

Granted, I didn't start from scratch fully. I already knew quite well how
things should work, how the app should look and feel, and I had lots of prior
art that I could point my clankers to. That helped a lot. "I like how
[Wisp](https://zapstore.dev/apps/com.darkwisp.app) does all the relay stuff.
Could we do it in a similar way?" "Do you see the
settings page of our webapp? Could we do the settings in a similar way for our
Android app, but maybe split it up in various sub-pages so it looks and feels
like a native Android app?" "Can you do some research on how other apps
provide a 'loupe' function to make precise text selection easier? Could we
implement something like that for Boris?" And so on.[^fn-socratic]

After three days I had an app that was usable, as good as the webapp. On the
fourth day I had an app that I enjoyed using. I kept using the app, taking
lots of notes and screenshots to take inventory of what was broken and keep
track of what could be improved. I recorded lots of thoughts and had long
rambling sessions which eventually turned into features, after feeding them
through my clanker pipeline (and sleeping on everything once or twice).

{% include image.html name="android-screens.png" align="left" alt="Four Boris Android screens: reading, highlighting, and listening with TTS" %}

After two weeks other people started to take notice, and actually started
using it. I got lots of constructive feedback. Some people had fantastic
ideas, such as adding RSS feeds as one of the library sources. To my delight,
I am not the only person who finally has a reading app they enjoy. Turns out
there are at least two other people that have a reading workflow similar enough
to mine!

## Where to go from here?

The last time I ran this experiment I overcooked it. In the spirit of making
new mistakes, I plan to step away from the development of
[boris-android](https://github.com/dergigi/boris-android) for a little
bit, keeping the current version `1.5.x` more-or-less as-is for a little
while. I might add some small features here and there, fix some bugs, and work
on quality-of-life and performance improvements. But I won't go insane-o mode,
full steam ahead, burning billions of tokens every hour of every day to cram
it full of all the features it doesn't actually need.

That said: yes, it will have zaps some day. Yes, it will have comments in
addition to highlights. Yes, it will have friend-of-a-friend as one of the
scopes. I also want to make the RSS stuff better, and support more content
types (PDFs first and foremost, but maybe even some book types one day).

Once the cost of production drops to zero and you can build _anything_, the
question of what to build becomes _more_ important, not less.

Our content landscape makes this abundantly clear. You can consume anything at
any time for any duration. What to watch, what to read, what to eat; what to
_consume_, if you will---that's the all-important question.

You have to protect your time, your body, and your brain. But most importantly
you have to protect your attention, and I have to protect my feature set. From
myself, and from others.

[Boris](https://readwithboris.com) will remain an opinionated app, and I love it that way. It will never be
a full-blown nostr client. It will never be a podcast player. It will always
be a dedicated reading app, one that is a joy to use, and one that isn't
reliant on any third parties. In other words: a reading app that won't go
away. A reading app that will always be there for you. Boris will never rug
you, because it can't.

I can finally build all the stuff I always wanted to have. Without any
barriers, without asking anyone for permission.

What a wonderful time to be alive.

{% include image.html name="android-home.png" align="left" link="https://zapstore.dev/apps/org.dergigi.boris" alt="Four Boris Android screens: home, library, feeds, and search" %}

---

[^fn-socratic]: As mentioned in a [previous post](/2026/08/20/grug-speak-grug-outside-grug-happy/), I often use the Socratic method with my clankers to build up a shared understanding, or 'context' to use AI speak.
