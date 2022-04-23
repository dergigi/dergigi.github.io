---
layout: page
title: Media Appearances
subtitle: Interviews, Movies, and more.
redirect_from: /interviews

---

[🏠 Home][home] | [✨ No Filter][all] | **⭐ Favorites** | [🇺🇸 English][en] | [🇩🇪 German][de]

[home]: {{ '/media' | absolute_url }}
[all]: {{ '/media/all' | absolute_url }}
[favs]: {{ '/media/best' | absolute_url }}
[de]: {{ '/media/de' | absolute_url }}
[en]: {{ '/media/en' | absolute_url }}

{% capture absoluteVideoURL %}{{ 'assets/video/jbp.mp4' | absolute_url }}{% endcapture %}
{% include video.html file=absoluteVideoURL %}
Jordan B. Peterson Podcast [S4:E40][jbpS4E40] / [YouTube][jbpS4E40yt]

[jbpS4E40yt]: https://youtu.be/iVym9wtopqs
[jbpS4E40]: https://www.jordanbpeterson.com/podcast/s4e40/

I had the immense pleasure of speaking to Jordan B. Peterson on his podcast
for [S4:E40][jbpS4E40], along with some fellow bitcoiners.
The [full interview][jbpS4E40yt] is on YouTube.

---

{% assign sorted_sodes = site.episodes | where: 'star', true | sort: 'date' | reverse %}

<ul class="sodes">
{% for sode in sorted_sodes %}
{% include sode.html sode=sode %}
{% endfor %}
</ul>

---

In 2021, the German movie [Human B][hb] was released, which I was fortunate
enough to play small role in. The full movie is available on [Vimeo][hbv] and
[YouTube][hby].

{% capture absoluteVideoURL2 %}{{ 'assets/video/humanb.mp4' | absolute_url }}{% endcapture %}
{% include video.html file=absoluteVideoURL2 %}

[hb]: https://humanb-film.com/
[hbv]: https://vimeo.com/658711759
[hby]: https://youtu.be/RFSBWrAllzw
