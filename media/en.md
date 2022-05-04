---
layout: page
title: Media Appearances
subtitle: Interviews, Movies, and more.
redirect_from: /interviews

---

[✨ Recent][home] | [🧹 All][all] | [⭐ Best][favs] | **🇺🇸 English** | [🇩🇪 German][de]

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

{% assign sorted_sodes = site.episodes | where: 'lang', 'EN' | sort: 'date' | reverse %}

<ul class="sodes">
{% for sode in sorted_sodes %}
{% include sode.html sode=sode %}
{% endfor %}
</ul>
