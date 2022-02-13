---
layout: post
title: "On Bitcoin's UX"
description: Bitcoin is a new paradigm, just like the internet was.
date: 2020-09-20
blocktime: 649239
image: /assets/images/btc19-ux.jpg
source: https://www.swanbitcoin.com/on-bitcoins-ux/
redirect_from: /ux
author: Gigi
category: bitcoin
translations:
 - language: German
   url: https://telegra.ph/%C3%9Cber-Bitcoins-Benutzererlebnis-02-02
   author: DerGeier
   author_url: https://twitter.com/DerGeier21
tags:
 - Bitcoin
 - Writing
---

There is an ongoing discus­sion in the Bitcoin space revolving around
the topic of user experi­ence, or UX for short. Bitcoin still feels
weird, clunky, and compli­cated at times. The main reason for this is
that Bitcoin and its parts (the network, the protocol, the
cryptog­raphy, the scripting language) are indeed weird, clunky, and
compli­cated. Just like the internet was, and, arguably, still is.

{% include image.html name="ipx-spx.png" caption="Before LNP/BP and TCP/IP there was IPX/SPX." %}

The reason why the internet doesn't feel as clumsy anymore is twofold:
(1) people got used to a lot of the novel concepts the internet brought
with it, and (2) count­less layers of abstrac­tion make inter­acting
with the base protocol easier. Related technolo­gies such as
plug-and-play helped to make the user experi­ence even better. Gone are
the days of manually setting the IRQ number of your network card!

{% include image.html name="pete-what-is-an-irq.gif" caption="What is an IRQ?" %}

Just like the internet, Bitcoin is an evolving ecosystem. Keep in mind
that a lot of things have already changed for the better. For example,
the first wallet that supported QR codes was released in 2012. XPUBs
([BIP32](https://github.com/bitcoin/bips/blob/master/bip-0032.mediawiki))
were proposed in the same year. Seed phrases
([BIP39](https://github.com/bitcoin/bips/blob/master/bip-0039.mediawiki))
were proposed in
2013. [BIP44](https://github.com/bitcoin/bips/blob/master/bip-0044.mediawiki) (HD
Wallets, aka "accounts") came in 2014. SegWit
([BIP141](https://github.com/bitcoin/bips/blob/master/bip-0141.mediawiki))
was proposed in 2015 and --- after a prolonged civil war --- activated
in 2017. Today, most people take QR codes and seed phrases for granted,
not realizing that these weren't always part of Bitcoin. I'm sure that
some take the Light­ning Network (made possible thanks to SegWit) for
granted as well.

My point is, all of these under-the-hood, technical improve­ments are
insanely impor­tant for UX. Without them inter­acting with the Bitcoin
network would still be hell. Seed phrases? Easy wallet recovery?
Light­ning Network? Forget it! Yet, all these improve­ments are insanely
technical and require technical discus­sion. More improve­ments are
coming down the pipeline (Schnorr, Taproot,
and [more](https://bitcoinmagazine.com/articles/2020-and-beyond-bitcoins-potential-protocol-upgrades)),
so expect discus­sions in the Bitcoin space to remain technical for
quite some time to come. Think "Linux" --- not "iPhone".

{% include image.html name="suse-linux-1998.png" caption="git was different in 1998" %}

Speaking of iPhones: The tension seems to be between tinkerers and users
coddled by iPhones & Co., expecting every­thing to work perfectly and be
super-duper easy to under­stand RIGHT NOW.

Well, it isn't. Just like one had to know what an IP address is and how
packet switching works in the early days of the internet, you kinda need
to know what an XPUB is today. DHCP basically got rid of the IP
addresses problem, just like Google did away with the "typing in exact
URLs" problem. All of that will be true for Bitcoin as well. It just
won't happen overnight.

The base protocol will probably slowly ossify over time, just like the
Windows TCP/IP setup dialog ossified over time. Once the base layer is
suffi­ciently optimized most innova­tion will happen on higher layers.

{% include image.html name="win95-tcpip-1.jpg" caption="Cool. Now that we've got the UI sorted let's upgrade to IPv6." %}

I believe some people closer to the engineering side are simply tired of
the "it's so compli­cated, it should be easier" line. Yes, we agree, all
of it should be easier, and we are all doing our best trying to make it
so.

Some are building products that are easy to use (Strike, Casa, Coinkite,
Samourai, etc.), others are working on protocol improve­ments so that
every­thing will be easier and better in the future (thank you core
devs!), others are working on the wider ecosystem (Raspi­b­litz, BTCPay
Server, Umbrel, etc.), and others on educa­tion and outreach so that
more people can get on board and help to make Bitcoin better.

Over time, people will get used to the concepts that we can't abstract
away. I'm convinced that things will get easier, just like connecting to
a network is easier than it was in 1995.

{% include image.html name="wifi-pass-make-good-things.png" caption="Make good things." %}

Bitcoin is a new paradigm, just like the internet was. Just like there
was no way around email addresses (["What's this strange @
sign?"](https://youtu.be/UlJku_CSyNg)) and URLs ("What's
http/https/ftp/ssh?") there is currently no way around bitcoin
addresses, private keys, and, you guessed it, XPUBs.

Some concepts are essen­tial, removing them because you want a better UX
might turn out to be fatal. Remove packet switching ([net
neutrality](https://www.battleforthenet.com/)) from the internet, and
you destroy what made the internet great in the first place. Remove
self-custody (or account-creation via mathe­matics, or neutrality, or
a multi­tude of other things) from Bitcoin, and you destroy what makes
Bitcoin great in the first place. It goes without saying that
self-custody will always be worse in UX terms when compared to letting
someone else take care of things. Similarly, setting up your own domain
and hosting your own website will always be more hassle than creating
a Facebook page. It's a matter of trade­offs, always.

Focusing purely on maximizing UX might lead to subop­timal results in
the long run. Just compare Facebook, TikTok, and the walled garden of
iOS to permis­sion­less open proto­cols and the FLOSS ecosystem.
Person­ally, I will always choose freedom over conve­nience. 

The future is bright. We just have a lot of building to do.

Gigi

Want to help? Get involved! Join the conver­sa­tion
on [Twitter](https://twitter.com/swanbitcoin/) and 
[Telegram](https://t.me/swansignal). In love with design? Join
the [Bitcoin Design Slack
workspace](https://bitcoindesign.slack.com/join/shared_invite/zt-gytq2snl-4TEWJOTKrXRCB4YLBoDunA#/) organized
by our friends at Square. Good with languages? Help to [trans­late
bitcoin
core](https://bitcoin.org/en/bitcoin-core/contribute/translations) and
other open-source projects to your local language. If you're especially
ambitious you can try to create a [BIP39 word
list](https://github.com/bitcoin/bips/blob/master/bip-0039/bip-0039-wordlists.md) for
your local language. Not afraid of code? Partic­i­pate in the [Bitcoin
Core PR Review Club](https://bitcoincore.reviews/) and review [open pull
requests](https://bitcoinacks.com/). Onwards!
