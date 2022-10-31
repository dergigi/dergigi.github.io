---
layout: page
title: "Cryptography is Not Enough"
subtitle: "Act 3 background images (generated with Midjourney)"
---

Images used in ACT 3 of [Cryptography is Not Enough][cryptography].

{% for image in site.static_files %}
{% if image.path contains '2022-riga/images/used' and image.path contains '.webp' %}
{% assign highres = image.path | replace: 'used', 'highres' %}
{% assign md_file = image.name | replace: '.webp', '.md' %}
{% assign rel_path_to_md = 'used/' | append: md_file %}
---
{% include image.html path=image.path width='100%' link=highres %}
{% include_relative {{ rel_path_to_md }} %}
{% endif %}
{% endfor %}

### Unused Images

Images that I generated and liked somewhat, but didn't make the cut:

{% for image in site.static_files %}
{% if image.path contains '2022-riga/images/unused' %}
{% assign highres = image.path | replace: 'unused', 'highres' %}
{% include image.html path=image.path width='100%' link=highres %}
{% endif %}
{% endfor %}


Make sure to watch the whole talk: [Cryptography is Not Enough][cryptography]

[cryptography]: {{ '/cryptography' | absolute_url }}
