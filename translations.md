---
layout: page
title: Translations
subtitle: "How shall men meditate in that which they cannot understand?"
description: "How shall men meditate in that which they cannot understand?"
image: /assets/images/translations.png
---

If you want to translate or remix my work in any way, you are free to do so, as
long as you comply with the [terms of the license][license]. Feel free to reach
out to me if you have any questions or are working on a translation. I will
gladly link to it in the original article.

Find a list of translations below. If a translation is missing please [let me know][contact].

---

{% for post in site.categories.bitcoin %}
{% if post.translations %}
### {{ post.title }} [[en]({{ post.url }})]
{% include translations.html translations=post.translations hide_heading=true hide_link=true %}
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

---

> Translators are the shadow heroes of literature, the often forgotten instruments
> that make it possible for different cultures to talk to one another, who have
> enabled us to understand that we all, from every part of the world, live in one
> world.
>
> <cite>Paul Auster</cite>

---

[contact]: {{ '/contact' | absolute_url }}
[license]: {{ '/license' | absolute_url }}
