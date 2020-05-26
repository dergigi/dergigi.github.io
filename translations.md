---
layout: page
title: Translations
---

{% for post in site.categories.bitcoin %}
{% if post.translations %}
### {{ post.title }}
{% include translations.html translations=post.translations hide_heading=true %}
{% endif %}
{% endfor %}

---

### Translations wanted!

The following articles haven't been translated yet:

{% for post in site.categories.bitcoin %}
{% if post.translations %}
{% else %}
- [{{ post.title }}]({{ post.url }})
{% endif %}
{% endfor %}
