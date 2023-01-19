---
layout: post
title: "How to build a nostr gm bot"
subtitle: "(without writing any code)"
description: "(without writing any code)"
date: 2023-01-19
blocktime: 772729
image: /assets/images/gmbot.jpg
redirect_from: /gmbot
author: Gigi
category: bitcoin
favorite: false
tags:
 - Bitcoin
 - Writing
 - Tutorial
 - nostr
---

I've been [bullish on
nostr](https://twitter.com/dergigi/status/1485029933969809419?s=20) for a while
now, but even I am surprised by how swift the ecosystem around this open
protocol has been growing. Yes, it's still early days. But it's the perfect time
to poke around and ~~break~~ build things. How else would you explore and learn?

So, after porting my
[two](https://www.nostr.guru/p/npub1satst5p5jcacfpagy3jxscf2s48d9dd0v6lfxms7frp9e6t2w5xstmsfjp)
[bots](https://www.nostr.guru/p/npub1satsv3728d65nenvkmzthrge0aduj8088dvwkxk70rydm407cl4s87sfhu)
to nostr, I thought why not write a little guide that ~~helps to spark the bot
revolution~~ shows how the sausage is made. 

While there is a little bit of plumbing involved, creating a bot that does nothing but
post stuff is incredibly straightforward. And best of all,
_we don't even have to write a single line of code!_

Alright, let's break it down.

- **The goal:** build a bot that says "gm" every morning.
- **The approach:** run [noscl](https://github.com/fiatjaf/noscl) in a cron job that's set to 6:15 am

That's it. Simple.

If you have a linux system running somewhere and know your way around the
command line you're basically done already. If you are a normal person and
don't have that, read on.

We'll use Ubuntu Server, as it is widely available.

7 steps to gm:

[^fn-ubuntu]: You can install it on the dusty old machine in your closet, rent a VPS, run a virtual machine, whatever. Your bitcoin node (that you surely have running somewhere, right? Right?!) would make a nice home for your nostr bot too. You'll have to switch up some commands (depending on your distro) but essentially it should all work the same. But I'll assume that you have an Ubuntu Server set up somewhere and that you're in a terminal, logged in as a non-root user. If you're logged in as root, I assume that you know what you're doing (so you'll know to omit `sudo` and stuff).

- [1) Create dedicated bot user](#1-create-dedicated-bot-user)
- [2) Roleplay as the bot and install go](#2-roleplay-as-the-bot-and-install-go)
- [3) Set go path](#3-set-go-path)
- [4) Install noscl](#4-install-noscl)
- [5) Create the bot](#5-create-the-bot)
- [6) Say "Good morning!"](#6-say-good-morning)
- [7) Automate with crontab](#7-automate-with-crontab)

## 1) Create dedicated bot user

We will create a dedicated user on our system that does nothing but post "gm" to nostr.
Let's call him "gmbot".

```bash
sudo useradd -d /home/gmbot -m gmbot
```

I'll let you pick the password.

```bash
sudo passwd gmbot
```

We'll also add this user to the sudoers group:

```bash
sudo usermod -aG sudo gmbot
```

Great, done. On to using the user!

## 2) Roleplay as the bot and install go

Let's drive stick shift before we switch to automatic. Switch to the gmbot user:

```bash
su gmbot
```

The nostr client we're going to use is written in go, which is why we need to install go:

```bash
sudo snap install go --classic
```

If you want to avoid snap, you can also install go [from
source](https://www.digitalocean.com/community/tutorials/how-to-install-go-on-ubuntu-20-04)
or via a custom [PPA](https://askubuntu.com/a/1377308).

Whatever installation method you use, make sure that `go` works:

```bash
go version
```

If you see an output that says `go version go1.19.5 linux/amd64` (or something
along these lines) we can move on to the next step. Paths!

## 3) Set go path

Edit your `.bashrc` with the editor of your choice...

```bash
vim ~/.bashrc
```

...and set the go path by adding the following at the end of the file:

```shell
# Set go path to user's home directly
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
```

Save, exit, and load it up:

```bash
source ~/.bashrc
```

## 4) Install noscl

As mentioned before, we're going to use fiatjaf's [noscl] client to post notes and other stuff. Install the latest version via `go install`:

[noscl]: https://github.com/fiatjaf/noscl

```bash
go install github.com/fiatjaf/noscl@latest
```

This will install `noscl` for your "gmbot" user, as we've set the install path to the user's home directory. Neat!

Now try it!

```bash
noscl
```

Here's what it will spit out:

```shell
> can’t open config file /home/gmbot/.config/nostr/config.json: 
> open /home/gmbot/.config/nostr/config.json: no such file or directory
```

Uh-oh, that's not good. 

The config directory does not exist, so `noscl` can't create the config file it needs. 
Creating the directory fixes this!

```bash
mkdir -p ~/.config/nostr
```

Now noscl should work. Run it again...

```bash
noscl
```

...and you should see a "usage" text as follows:

```io
Usage:
  noscl home
  noscl setprivate <key>
  noscl sign <event-json>
  noscl verify <event-json>
 ...
```

We're going to do a `noscl setprivate` next, which will put the private key of
our bot into the config file, effectively creating the bot account on the nostr
protocol. (Side note: if an account is created in the woods, but never publishes
a note, does it even exist?)

## 5) Create the bot

Every nostr account needs a private key. No key, no message signing, no posting
"good morning." Simple as that.

You can create the keys of your bot by rolling some dice. Don't have any dice
handy?  Well, that sucks. 

Luckily, `noscl` can generate keys too. So let's use
that to generate the private key for your bot.

```bash
noscl key-gen
```

It will produce an output like this:

```shell
> seed: armed birth test cargo ... orchard autumn
> private key: fc4b95d1....c5b98bd
```

Copy-paste the private key and set it via `noscl setprivate`. Unless you hate
yourself. If you hate yourself, type it in by hand.

```bash
noscl setprivate <KEY_GENERATED_ABOVE>
```

You'll have to use your actual private key, not
`<KEY_GENERATED_ABOVE>`. Easy mistake to make! Also make sure to
keep your bot's private key _private_. "Not your keys, not your notes" and all
that.

## 6) Say "Good morning!"

Let's pretend it's 6:15 am. Time to say "good morning."

You could try to scream "good morning" into the void, but `noscl` will scream
right back at you, telling you that you have zero relays set up. No relays, no
party. We need to add at least one relay to talk to the nostrverse, so let's add
everyone's favorite relay: your mom.

```bash
noscl relay add wss://nostr.mom
```

If successful, you'll see something like:

```shell
> Added relay wss://nostr.mom.
```

You don't have to use this exact relay, and you're free to add multiple relays.
Consult [nostr.watch](https://nostr.watch/relays/find#public) for a list of
public relays.

Time to publish our first "good morning!"

```bash
noscl publish "Good morning!"
```

_Ta-daa!_ Your bot is alive! You should see something like this:

```shell
> Sent event 4869429dcc20bd87567e3370c577793aac58f66bb07d130562738285dee6569f to 'wss://nostr.mom'.
```

You can use a "nostr explorer" like
[nostr.guru](https://www.nostr.guru/e/4869429dcc20bd87567e3370c577793aac58f66bb07d130562738285dee6569f)
to look up the event, i.e. the note you just published. It might take a minute
to show up, but if everything worked, you should see it staring back at you:

{% include image.html name="event.png" caption="Be <a href='https://github.com/nostr-protocol/nips/blob/master/01.md#basic-event-kinds' target='_blank'>kind 1</a>, for everyone you meet is fighting a hard battle." link="https://www.nostr.guru/e/4869429dcc20bd87567e3370c577793aac58f66bb07d130562738285dee6569f"%}

## 7) Automate with crontab

Still logged in as the `gmbot` user, edit the user-level crontab with

```bash
crontab -e
```

...and add the following line at the end of the file:[^fn-crontab]

[^fn-crontab]: If you're having trouble making sense of the crontab syntax, [crontab.guru](https://crontab.guru/#15_6_*_*_*) is a useful tool.

```shell
15 6 * * * /home/gmbot/go/bin/noscl publish "Good morning!"
```

Save the file & exit, and crontab should tell you that it is installing a new
crontab. Very kind of crontab, but also very redundant.

```shell
> crontab: installing new crontab
```

That's it!

Now every morning—as long as the server that you used to set all this up is
running—the bot you created will great the world with a censorship-resistant
"Good morning!"

You can use the private key of your bot to update the profile metadata, i.e. set
a name, description, profile picture, banner, and so on. You can even give your
bot a lightning address, just like I did!

If you found this little tutorial valuable, feel free to give value back by throwing some sats at the bot: `⚡gmbot@ts.dergigi.com` 

Follow the bot on nostr:

```plaintext
npub1gmgmj6punek0gjp6s26e0d5nfumghmszeg33vgqzs6vhn0x0vq3q5mdaxm
```

As always, feel free to remix, improve, and translate this guide. It is
published under a [permissive license][license], as is all my other stuff.

GM 🌅🤙

---

[license]: {{ '/license' | absolute_url }}