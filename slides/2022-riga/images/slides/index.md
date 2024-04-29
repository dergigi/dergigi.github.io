---
layout: page
title: "Cryptography is Not Enough"
subtitle: "Slides"
image: /assets/images/brain.jpg
---

Slides from my talk [Cryptography is Not Enough][cryptography]. Also available as [PDF][pdf].

{% for image in site.static_files %}
{% if image.path contains '2022-riga/images/slides' and image.path contains '.png' %}
{% include image.html path=image.path width='100%' %}
{% endif %}
{% endfor %}

Make sure to watch the whole talk: [Cryptography is Not Enough][yt]

[« Back to /cryptography][cryptography]

[cryptography]: {{ '/cryptography' | absolute_url }}
[yt]: https://youtu.be/C7ynm0Zkwfk
[pdf]: {{ site.url }}/assets/files/Riga2022.pdf
