---
layout: page
title: Media Appearances
subtitle: Interviews, Movies, and more.
redirect_from: /interviews

---

Over the last couple of years, I had the pleasure of speaking on various
podcasts, conferences, and live shows to talk about Bitcoin and its
implications. While the conversations mostly revolve around Bitcoin, they
sometimes stray into other, related topics.

In the hectic world of today, it is often challenging to find the time to read
long articles and books, which is why I love podcasts and recorded conversations
of all kinds. If you do too, here are some
[conversations](#english-interviews-and-conversations) and [talks](#talks) where I share
my thoughts about Bitcoin. There are also some [guest posts](#guest-posts)
and popular [twitter threads](#twitter-threads) linked at
the bottom of this page.


---


[✨ All (no filter)][all] | [⭐ Favorites][favs] | [🇺🇸 English](#english-interviews-and-conversations) | [🇩🇪 German](#german-interviews-and-conversations)

[all]: '/media2'
[favs]: '/media2/favs'


{% assign sorted_sodes = site.episodes | sort: 'date' | reverse %}

<ul class="sodes">
{% for sode in sorted_sodes %}
  {% assign link = sode.youtube %}
  {% if sode.podlink %}{% assign link = sode.podlink %}{% endif %}
  {% if sode.link %}{% assign link = sode.link %}{% endif %}
  <li>
    <a href="{{ link }}" target="_blank" title="Released on {{ sode.date }} by {{ sode.host }}">
      {% if sode.star %} ⭐ {% endif %}
      {% case sode.lang %}
        {% when 'AT' %}🇦🇹
        {% when 'DE' %}🇩🇪
        {% when 'CH' %}🇨🇭
        {% else %}🇺🇸
      {% endcase %}
      {% if sode.youtube %}📺{% else %}🎧{% endif %}
      {{ sode.podname }}
      {% if sode.sode %}#{{ sode.sode }} {% endif %}
    </a>
    <small>
      {% if sode.podlink %}<a href="{{ sode.podlink }}" target="_blank"><i class="fab fa-podcast"></i></a>{% endif %}
      {% if sode.youtube %}<a href="{{ sode.youtube }}" target="_blank"><i class="fab fa-youtube"></i></a>{% endif %}
      {% if sode.archive %}<a href="{{ sode.archive }}" target="_blank"><i class="fab fa-archive"></i></a>{% endif %}
      <br/>
      {% if sode.topics %}on {{ sode.topics }},{% endif %}
      {% if sode.guests %}with {{ sode.guests }}{% endif %}
      {% if sode.host %}hosted by {{ sode.host }}{% endif %}
    </small>

  </li>
{% endfor %}
</ul>


[wir2]: https://anchor.fm/whatisreal/episodes/Gigi-Questions-Reality---WiR002-e120v63
[wir2-yt]: https://youtu.be/8ytMsyRAk5s


Want to talk? Feel free to [reach out to me][contact].


### German Interviews and Conversations

In 2021, the German movie [Human B][hb] was released, which I was fortunate
enough to play small role in.

{% capture absoluteVideoURL2 %}{{ 'assets/video/humanb.mp4' | absolute_url }}{% endcapture %}
{% include video.html file=absoluteVideoURL2 %}
Watch the full movie on [Vimeo][hbv] or [YouTube][hby].

---

[hb]: https://humanb-film.com/
[hbv]: https://vimeo.com/658711759
[hby]: https://youtu.be/RFSBWrAllzw

In [2019](https://www.blockstream.info/block-height/591121) a couple of
bitcoiners and I launched [🇩🇪 EINUNDZWANZIG](https://einundzwanzig.space/),
a German-speaking bitcoin podcast that I am still co-hosting from time to time.

---

### Videos

I had the immense pleasure of speaking to Jordan B. Peterson on his podcast
for [S4:E40][jbpS4E40], along with some fellow bitcoiners.
The [full interview][jbpS4E40yt] is on YouTube.

{% capture absoluteVideoURL %}{{ 'assets/video/jbp.mp4' | absolute_url }}{% endcapture %}
{% include video.html file=absoluteVideoURL %}


[jbpS4E40yt]: https://youtu.be/iVym9wtopqs
[jbpS4E40]: https://www.jordanbpeterson.com/podcast/s4e40/

### Talks

- **2021-07-15** - [🇩🇪 Presentation and Panel Discussion][frankfurt-school] at the Frankfurt School Blockchain Center
- **2020-06-02** - [Keynote: The Bitcoin Journey][vob-bitcoin-journey] at the Value of Bitcoin Conference Digital Europe
- **2020-05-11** - [Keynote: Competing With Free][vob-competing-with-free] at the Value of Bitcoin Conference Digital America

[vob-bitcoin-journey]: https://youtu.be/qVuFX0LkNDQ
[vob-competing-with-free]: https://youtu.be/JtzwTd9Ur5c
[frankfurt-school]: https://youtu.be/fx7qftuxyn8

### Videos and other Remixes

Some of my writing and speech was remixed as videos and memes and VR worlds.

- **2022-01-18** - [The Implications of Outlawing Bitcoin][till-law] by Till Musshoff
- **2022-01-18** - [🇩🇪 Die Konsequenzen eines Bitcoin-Verbots][till-law-de] by Till Musshoff
- **2021-12-21** - [🇩🇪 Weihnachtsgedicht][gedicht] by Einundzwanzig
- **2021-08-10** - [Bitcoin is Interstellar][interstellar] by Nakadai Mon
- **2021-07-31** - [Proof of Work][pow-video] by yungfi
- **2021-04-06** - [21 Lessons in VR][21lessons-vr] by BITPAINT
- **2021-03-15** - [Bitcoin is Time][till-time] by Till Musshoff


[till-law]: https://youtu.be/zmGKUflR6lc
[till-law-de]: https://youtu.be/AIkICEUrVwU
[gedicht]: https://youtu.be/cVVzy1J5PhM
[interstellar]: https://youtu.be/hka3fVJQL7U
[pow-video]: https://youtu.be/VfEnzaHAT-g
[21lessons-vr]: https://21lessons.com/vr/
[till-time]: https://youtu.be/uX06_g2c9DA

### Other

- **2020-12-23** - Cited in [Forbes][forbes]: The 'Beginning of the End' of Shitcoins
- **2020-10-24** - German interview: [Gigi im Interview][de-beincrypto]

[forbes]: https://www.forbes.com/sites/billybambrough/2020/12/23/the-beginning-of-the-end-for-ripple-and-xrp-as-coinbase-considers-its-options/
[de-beincrypto]: https://de.beincrypto.com/gigi-im-interview-es-gibt-noch-viel-mehr-lektionen-zu-lernen/

### Guest Posts

I have written various articles for the [Swan Bitcoin Blog][swan-blog] and
the [Bull Bitcoin][bull-bitcoin] publication. I have also contributed to
[Citadel 21][ctdl21] and the [21ism Art Collective][21ism].

- **2020-09-20** - [On Bitcoin's UX][swan-ux] on the Swan Signal blog
- **2020-08-18** - [Why I Joined Swan Bitcoin][swan-joined] on the Swan Signal blog
- **2020-07-21** - [True Names Not Required][ctdl21-true-names] for Citadel 21
- **2020-04-21** - [Dear Bitcoiners][ctdl21-dear-bitcoiners] for Citadel 21
- **2019-11-21** - [Bitcoin Boots on the Ground: Venezuela][bull-venezuela] on the Bull Bitcoin blog
- **2019-08-22** - [The Rise of the Sovereign Individual][bull-rise] on the Bull Bitcoin blog
- **2019-07-23** - [The World is Waking up to Bitcoin][bull-waking-up] on the Bull Bitcoin blog

<!-- 21ism -->
[21ism]: https://21ism.com/

<!-- Citadel 21 -->
[ctdl21-true-names]: https://www.citadel21.com/true-names-not-required
[ctdl21-dear-bitcoiners]: https://www.citadel21.com/dear-bitcoiners-an-optimistic-letter
[ctdl21]: https://www.citadel21.com/

<!-- Swan -->
[swan-ux]: https://www.swanbitcoin.com/on-bitcoins-ux
[swan-joined]: https://www.swanbitcoin.com/why-i-joined-swan-bitcoin
[swan-blog]: https://www.swanbitcoin.com/signal

<!-- Bull Bitcoin -->
[bull-venezuela]: https://medium.com/bull-bitcoin/bitcoin-boots-on-the-ground-venezuela-7ee01f966eff
[bull-rise]: https://medium.com/bull-bitcoin/the-rise-of-the-sovereign-individual-2201eee82f00
[bull-waking-up]: https://medium.com/bull-bitcoin/the-world-is-waking-up-to-bitcoin-5d532a1188ce
[bull-bitcoin]: https://bullbitcoin.com/

---

### Twitter Threads

I use twitter to share and distill my thoughts, which sometimes leads to
long-form twitter threads in which I try to flesh out certain ideas in a more
public format. Here are some threads that resonated most:

- **2021-12-12** - ["Why shitcoins are a waste of your time"][tw-shitcoins-waste-time] - A thread on the winner-takes-all dynamics of Bitcoin.
- **2021-11-06** - ["Money is a network"][tw-money-network] - A thread on network effects and the design space of money.
- **2021-08-10** - ["Memes vs The World"][tw-meme-world] - A thread on the difference of ideas and physical objects.
- **2021-05-13** - ["A failure to understand proof of work is a failure to understand Bitcoin"][tw-pow] - A thread on PoW.
- **2020-10-08** - ["GigaChad Thread"][tw-gigachad] - A thread on MicroStrategy's move to a Corporate Bitcoin Standard.
- **2020-09-21** - ["Bitcoin's UX"][tw-ux] - A thread on Bitcoin's UX and how it compares to the UX of the early internet.
- **2020-09-19** - ["Inflow/Balance/Outflow"][tw-balance] - A thread on inflows, outflows, balance sheets, and how a circular Bitcoin economy might resolve some points of contention around SoV and MoE.
- **2020-07-09** - ["Passports and Biometrics"][tw-passports] - A thread on digital passports, facial recognition, biometrics, and other shenanigans.
- **2020-07-03** - ["Sats are my numeraire"][tw-sats] - A thread on #satsthestandard and the sat symbol.
- **2020-07-02** - ["The Price of Tomorrow"][tw-price-tomorrow] - A quick thread on The Price of Tomorrow, a book by Jeff Booth.
- **2020-05-11** - ["Halving Memes 2020"][tw-halving2020] - A long thread of memes to celebrate the 3rd Bitcoin Halving.
- **2019-12-23** - ["Bitcoin's Eternal Struggle"][tw-struggle] - A thread on Bitcoin's struggle between order and chaos.
- **2019-10-30** - ["Circularity"][tw-circularity] - A thread about Bitcoin, religion, mirrors, my rabbit hole journey, and where Bitcoin (and bitcoiners) might go in the next couple of years.
- **2019-10-21** - ["Bitcoin is a religion"][tw-religion] - A meta-thread about Bitcoin as a base axiom for one's world view.
- **2019-10-12** - ["Conviction. Meaning. Truth."][tw-conviction] - A thread on the level of conviction Bitcoin instills in some bitcoiners.
- **2019-08-07** - ["Proof of Life"][tw-life] - A thread on viewing Bitcoin as a living organism.
- **2019-05-23** - ["Digital Hygiene"][tw-hygiene] - A thread on digital hygiene, freedom of speech, identity, privacy, and net neutrality.
- **2019-05-01** - ["Bitcoin's Gravity"][tw-gravity] - A thread on how idea-value-feedback loops are pulling people into Bitcoin.
- **2019-04-02** - ["Technological Teachings of Bitcoin"][tw-technology] - A thread on what I've learned about technology thanks to studying Bitcoin.
- **2019-01-12** - ["Economic Teachings of Bitcoin"][tw-economics] - A thread on what I've learned about economics thanks to studying Bitcoin.
- **2018-12-21** - ["Philosophical Teachings of Bitcoin"][tw-philosophy] - A thread on what I've learned about philosophy thanks to studying Bitcoin.

Some of the above are mirrored at [/threads][threads] for archive purposes.

[threads]: {{ '/threads' | absolute_url }}

[tw-shitcoins-waste-time]: https://twitter.com/dergigi/status/1469820940884262913?s=20
[tw-money-network]: https://twitter.com/dergigi/status/1456924393511211010
[tw-meme-world]: https://twitter.com/dergigi/status/1425202084782264326
[tw-pow]: https://twitter.com/dergigi/status/1392826448017346561
[tw-gigachad]: https://twitter.com/dergigi/status/1314292693179289602
[tw-ux]: https://twitter.com/dergigi/status/1308098052817903616
[tw-balance]: https://twitter.com/dergigi/status/1307397137572007939
[tw-passports]: https://twitter.com/dergigi/status/1148572041416708097
[tw-sats]: https://twitter.com/dergigi/status/1279015069280542721
[tw-price-tomorrow]: https://twitter.com/dergigi/status/1278627021082558465
[tw-halving2020]: https://twitter.com/dergigi/status/1259834736165388290
[tw-struggle]: https://twitter.com/dergigi/status/1209206478931927046
[tw-circularity]: https://twitter.com/dergigi/status/1189608467029516289
[tw-religion]: https://twitter.com/dergigi/status/1186350297645498368
[tw-conviction]: https://twitter.com/dergigi/status/1182871327931359233
[tw-life]: https://twitter.com/dergigi/status/1159152860258623495
[tw-hygiene]: https://twitter.com/dergigi/status/1142741744024469504
[tw-gravity]: https://twitter.com/dergigi/status/1123544885821366272
[tw-technology]: https://twitter.com/dergigi/status/1112960763361222656
[tw-economics]: https://twitter.com/dergigi/status/1083884324871643137
[tw-philosophy]: https://twitter.com/dergigi/status/1076241029576179712

---

[keyvan-english]: https://youtu.be/RrW2yhEY39Y
[keyvan-pod-en]: https://anchor.fm/keyvandavani/episodes/Interview-with-Gigi--Bitcoiner--Bitcoin-e3r65v
[ci7]: http://contrarianisland.buzzsprout.com/265373/1106735-contrarian-island-7-gigi-bitcoin-s-gravity
[cb38]: https://citizenbitcoin.world/episodes/gigi-21-lessons-from-down-the-bitcoin
[pov56]: https://medium.com/@TrustlessState/the-gravity-of-monetary-maximalism-cf968dd23268
[keyvan-privacy]: https://anchor.fm/keyvandavani/episodes/TheTotalConnector11-Interview-with-Aleks-Svetski--Gigi--and-Matt-Odell-on-Bitcoin-e4dq7a
[keyvan-privacy-yt]: https://www.youtube.com/watch?v=M58cq0bRwng
[bec22]: https://bitcoinechochamber.com/2019/06/24/paradigm-shift-with-gigi-bec022/
[twib]: https://anchor.fm/bitcoinmeister/episodes/This-week-in-Bitcoin--6-28-2019--Future-of-Altcoins--Gold--BTC-mining--21-Lessons--Coinbase-outage-e4fpnd
[twib-youtube]: https://youtu.be/VxG57es11kM
[fwc38]: https://www.funwithbitcoin.com/fun-with-bitcoin-e0038-with-dergigi
[takeover]: https://bitcoin-takeover.com/s3-e6-gigi-on-bitcoin-as-a-living-organism/
[takeover-youtube]: https://www.youtube.com/watch?v=rtmW4oIFs-w
[dykc47]: http://didyouknowcrypto.com/ep47/
[cryptochat20]: https://anchor.fm/thecryptoconomy/episodes/CryptoChat_020---ITS-ALIVE---Brandon-Quittem--Der-Gigi-on-the-Bitcoin-Organism-e522gb
[rf6-discussion]: https://anchor.fm/john-vallis/episodes/Further-Discussion-Gigi-e57fdh
[rf6-fire]: https://anchor.fm/john-vallis/episodes/Gigi-Down-the-Bitcoin-Rabbit-Hole-e57f8j
[cb54]: https://citizenbitcoin.world/episodes/gigi-rabbit-hole-revelations
[bec31]: https://bitcoinechochamber.com/2019/10/13/bitcoin-lives-with-gigi-bec031/
[slp140]: https://stephanlivera.com/episode/140/
[keyvan63]: https://anchor.fm/keyvandavani/episodes/TotalBitcoin-63-Gigi---Bitcoin-is-a-Marathon-eaa3ka
[keyvan63-yt]: https://youtu.be/H9skOpUVfIk
[twib2]: https://anchor.fm/bitcoinmeister/episodes/This-week-in-Bitcoin--1-24-2020--Centralized-time--Coinbase--Bcash--Fed-Coins--Venezuela--Insurance-eadkqf
[twib2-youtube]: https://youtu.be/vZcf5eRz-Gs
[once-bitten6]: https://anchor.fm/daniel-prince6/episodes/Bitcoin-Is-A-Harsh-Mistress-eapg7e
[fwb70]: https://anchor.fm/funwithbitcoin/episodes/Interviewdiscussion-with-DerGigi--definitive-shitcoin-dump-episode-eb8c6j
[ss1]: https://swansignal.simplecast.com/episodes/regrouping-after-a-bitcoin-price-crash-episode-1
[ss1-txt]: https://www.swanbitcoin.com/swan-roundtable-market-crash-coronavirus-bitcoin-price/
[once-bitten26]: https://anchor.fm/daniel-prince6/episodes/Dergigi-Just-Three-More-Halvings-ecinjv
[vob-panel]: https://youtu.be/D11bW2YlNJ8
[define-your-moon]: https://youtu.be/lx4Jlq1iIy4
[ss11]: https://swansignal.simplecast.com/episodes/knut-svanholm-and-gigi-e11
[ss11-yt]: https://youtu.be/ExzzQzh7BLU
[twib3]: https://anchor.fm/bitcoinmeister/episodes/This-week-in-Bitcoin--5-22-2020--Fake-Satoshi-coins--Pizza-day--Mempool--Lightning-Network--BTC-365-day-moving-average-eeeskd
[twib3-yt]: https://youtu.be/HtkJ_KRsY4M
[mrpseu]: https://pgibs.io/2020/06/15/143-secret-keys-with-dergigi/
[als]: https://youtu.be/9b2OdjXeC88
[vivek]: https://podcasts.google.com/feed/aHR0cHM6Ly9mZWVkcy50cmFuc2lzdG9yLmZtL3RoZS12aXZlay1wb2RjYXN0/episode/MzRiZWViMjktNTE0MC00MDg5LWI3NjYtZjE0OTIxMzg3ZjA4
[vivek-spotify]: https://open.spotify.com/episode/0rKlBKcG7N2KpRkWdoPcuT?si=yK_7acdqQVakAm3Om8VbmA
[ss16]: https://swansignal.simplecast.com/episodes/gigi-and-udi-wertheimer-e16
[ss16-yt]: https://youtu.be/K3l6-voNzSY
[anita67]: https://bitcoinundco.com/en/gigi/
[pov160]: http://povcryptopod.libsyn.com/160-bitcoin-and-ethereum-is-a-religion-organism-and-state
[twib4]: https://anchor.fm/bitcoinmeister/episodes/This-week-in-Bitcoin--9-11-2020--Blacklist--SushiSwap--Belarus--UBI--Yearn-finance--inflation--hyperbitcoinization-ejg3mj
[twib4-yt]: https://youtu.be/c2ESlD0FjSc


[contact]: {{ '/contact' | absolute_url }}
