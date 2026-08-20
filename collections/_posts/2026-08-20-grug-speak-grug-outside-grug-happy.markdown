---
layout: post
title: Grug Speak, Grug Outside, Grug Happy
redirect_from: "/grug"
date: 2026-08-20 22:13:00 +0200
description: "Build, sign, push, done."
image: "/assets/images/grug-happy.jpg"
author: Gigi
category: blog
tags:
- thoughts
- nostr
- ai
---

Before my [thinkboi](/speech) days I used to be a developer. Writing code instead
of words, all day every day. Like most developers, I eventually joined
a team, and various startups, and so on and so forth. I slowly but
surely turned myself into a "software engineer," or at least that used
to be the lingo at the time.

My first love was computers. My second love was the internet. I was a
bit of a laggard when it came to phones and mobile computing, even
though I had all the early devices. The Nokia phones, of course, but
also one of the first tri-band phones, one of the first flip phones,
and also one of the first iPhones.

{% include image.html name="meme-wars.jpg" %}

My third love was open-source software. I had a friend once, a Linux
nerd, and as I was stumbling into this world I asked him what Linux
distribution I should install. "Gentoo," was his answer. Oh, the
agony. He is not my friend anymore.

I eventually landed on more sensible distributions, with Arch being my
main one for many many years (I still run Arch on one of my machines,
and my wife does too, begrudgingly and without her actually knowing
it).

My love for open-source software led me to Android development, and I
joined one of the aforementioned startups as an Android developer.
This was before the times of Kotlin, and before the times of Swift on
the iOS side. I actually ended up being the lead iOS developer at that
company, since there was a bug or something that the iOS team couldn't
figure out at the time, so the CEO asked me if I could take a look,
and well... "No good deed ever goes unpunished," as a friend of mine
likes to say.

I eventually fell down the Bitcoin rabbit hole and stopped writing
software. I mean, I always did a little bit of coding on the side, and
worked on some projects here and there, but I didn't work on any
serious (read: big) projects.

That's about to change. In fact, it has changed already.

A couple of days ago I decided to try my hand at an Android app. All
vibed, of course, using the tools I've played around with in the last
18 months or so: the vibeline, various IDEs like OpenCode and Cursor,
a couple of OpenClaw agents that I talk to via NIP-17, a bunch of
skills and AGENT.md files, the whole shebang.

To my surprise, everything worked out-of-the-box. I was able to
one-shot an MVP and all I had to do was iterate from there. I didn't
even need the Android emulator or a connected device. I told my agents
to publish directly to Zapstore. I would sign my releases with Amber,
install them on my device, and test everything in production. If
something was wrong, I would send a screenshot or a voice note to one
of my agents, and they would immediately kick into action to fix
things, or build the feature that was missing, or polish the UI, or
whatever. Another agent would integrate the changes, update the
changelog, create a release, and push it to Zapstore. All I had to do
was chill on the couch, tap "sign" on Amber, and install the update on
my device a couple of seconds later.

I was hooked. "Look at me, I am the Android developer now."

{% include image.html name="look-at-me.png" caption="Look at me, I am the Android developer now." %}

The vision I had when I started working on the vibeline is now fully
realized. I'm not the only one doing this stuff, of course. Far from
it. But it's amazing what you can achieve once you start shipping at
inference speed, and it is amazing how freeing it is when you are not
sitting in front of the computer to develop an app (or a website, or
whatever) - but out in the woods, or strolling through the streets, or
walking at a lakefront or the beach.

When it comes to development, I see myself on the far-left side of the
bell curve. I am the Grug-brained developer. I like simple things. If
I don't understand them, I don't want them. I am the guy who is
drooling out of the mouth while putting together oversized Lego pieces
that others have meticulously designed. But I can build a tower, and
that gives me joy, even if other tower-builders will think that my
tower is crooked and ugly and statically unsound.

Here is my current "development" process, if you want to call it that:
Grug outside. Grug happy. Grug see weird thing in app. Grug speak into
phone. Grug take walk. Grug see update. Grug install update. Grug see
bug fixed. Grug happy.

The reason why this process works so well for me, I believe, is that I
used to work with other people a lot. I used to work in teams, with
proper processes and structures in place, and all my projects still
use these processes and structures, even if it's just me and my agents
now. We commit early and often. We use conventional commits. We keep a
changelog. We use semantic versioning. We track bugs and features as
issues. We create pull requests to fix these bugs and implement these
features. We have a proper CI/CD process, some specifications, some
tests, a design philosophy, and so on. We are polite, detail-oriented,
and err on the side of whole-assing one thing instead of half-assing
two things. We ship as early as we can and do many small iterations
after that. We have a vision, milestones, and yet are flexible enough
to react to move things around and react to user feedback.

In other words: my process works well for me because I use
well-understood software development practices, and I treat my agents
as people, as weird as that is. I never scream at them, never tell
them directly what they should do, never command them in an
authoritative voice. I always lead with a question. I use the Socratic
method to build up context. Instead of "build this feature now or your
grandma dies a horrible death" I'll say something like: "We have built
the search feature recently, right? Would it make sense to highlight
the term that the user searched for? Could we do that easily? Any
side-effects that we might want to be aware of?"

It works extremely well. As do long rambling audio sessions to
brainstorm a new feature. Rubber-duck debugging, but my (micro)phone
is the rubber-duck. I hit record and I'll just ramble for five, ten,
even 20 minutes. LLMs are fantastic at distilling the essence from a
long ramble. It will get it almost right, and after that I just
iterate a couple of times until it is right enough.

Every agent of my swarm has an npub. It's the npub of the project, and
I talk to it directly. The vibeline will route voice memos as NIP-17
DMs to the correct agent, based on the opening phrase. Audio is
transcribed locally on my machine. All DMs are encrypted. When I run
local models, which I sometimes do for some things, nothing ever hits
the cloud. I'll say something like "Hey Boris, I don't like the
default highlight color that we have. Let's change it from pink to
yellow." And it's done. 7 second voice memo. A minute or two to
implement. Another couple seconds until the update lands on Zapstore.

Magic.

Allow me to repeat once more, for emphasis: publishing Android apps to
Zapstore is absolutely magical. No account, no sign-up, no
gatekeeping, no hoops to jump through. Build, sign, push, done.
Available for everyone, everywhere. Signed by me. No way for
middlemen to tamper with the release. Zaps and direct community
feedback are the cherry on top. Shout-out to [Franzap](https://sovereignengineering.io/podcast/26-zapstore-w-franzap), who had the
vision, and the stamina to actually build the thing. It's wonderful.

I've shipped two apps in the last couple of days, and I have the
feeling that I'll ship many more. Maybe I'll end up like [Martti
Malmi](https://sovereignengineering.io/podcast/21-hashtree-nostr-vpn-and-iris-w-martti-malmi), who is in the process of rebuilding every single app he uses
as a daily driver, but custom-tailored to his liking, and with some
sort of nostr integration of course. Or I'll end up like [Justin Moon](https://sovereignengineering.io/podcast/23-shipping-violently-w-justin-moon),
who has (or at least had?) the ambition of building his own Android
operating system.

It's remarkable what is possible with the tools of this age. If you
know how to wield them, that is.

Who knows what the implications of all that will be. I agree with
Uno's concerns, one of which is that nobody will care about the apps
that are going to be built. If everyone builts their own app, tailored
to their liking, who else will care about it but them? Whatever the
answer to that question may be, I will continue to work on Boris, the
reading app of my dreams. I love highlights, as anyone who ever
followed me on nostr can attest to.

There is a lot of good stuff out there on the internet. The challenge
is to find it. And I don't believe that LLMs can help with that,
because in the final analysis, they don't care about the information
they're processing.

We do.
