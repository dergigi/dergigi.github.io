---
layout: page
title: Media Appearances
subtitle: Interviews, Movies, and more.
redirect_from: /interviews

---

[✨ Recent][home] | [✨ No Filter][all] | [⭐ Favorites][favs] | [🇺🇸 English][en] | **🇩🇪 German**

[home]: {{ '/media' | absolute_url }}
[all]: {{ '/media/all' | absolute_url }}
[favs]: {{ '/media/best' | absolute_url }}
[de]: {{ '/media/de' | absolute_url }}
[en]: {{ '/media/en' | absolute_url }}

{% capture absoluteVideoURL2 %}{{ 'assets/video/humanb.mp4' | absolute_url }}{% endcapture %}
{% include video.html file=absoluteVideoURL2 %}
[Human B][hb] / [Vimeo][hbv] / [YouTube][hby]

[hb]: https://humanb-film.com/
[hbv]: https://vimeo.com/658711759
[hby]: https://youtu.be/RFSBWrAllzw

{% assign sodes_de = site.episodes | where: 'lang', 'DE' %}
{% assign sodes_at = site.episodes | where: 'lang', 'AT' %}
{% assign sodes_ch = site.episodes | where: 'lang', 'CH' %}
{% assign all_sodes = sodes_de | concat: sodes_at | concat: sodes_ch %}
{% assign sorted_sodes = all_sodes | sort: 'date' | reverse %}

<ul class="sodes">
{% for sode in sorted_sodes %}
{% include sode.html sode=sode %}
{% endfor %}
</ul>
