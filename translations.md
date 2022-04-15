---
layout: page
title: Translations
description: "How shall men meditate in that which they cannot understand?"
image: /assets/images/bitcoin/translations.png
---

If you want to translate or remix my work in any way, you are free to do so, as
long as you comply with the [terms of the license][license]. Feel free to reach
out to me if you have any questions or are working on a translation. I will
gladly link to it in the original article.

How to go about doing translations:

1. [Read the license][license]
2. Choose what you want to translate
3. Translate it
4. Mention and link to the [CC BY-SA 4.0 license][cc-by-sa] in your work
5. Host your translation somewhere[^hosting]
6. [Notify me][contact]

[^hosting]: You can use Medium, or [Ghost](https://ghost.org/), or Wordpress, or Blogger, or [Jekyll](https://jekyllrb.com/), or [Telegra.ph](https://telegra.ph/), or [Write.as](https://write.as/), or one of the thousands of publishing solutions that surely exist. You can also just host a txt file on your web server or something.

Find a list of translations below. If a translation is missing please [let me know][contact].

---

> The plant must spring again from its seed, or it will bear no flower.
>
> <cite>Percy Bysshe Shelley</cite>

---

{% for post in site.categories.bitcoin %}
{% assign code = post.redirect_from | replace: '/', '' %}
{% assign translations = site.translations | where: "code", code %}
{% assign numTrans = translations | size %}
{% if numTrans > 0 %}
### [#]({{ post.url }}) {{ post.title }} ({{numTrans}})
{% include translations.html translations=translations hide_heading=true hide_link=true %}
{% endif %}
{% endfor %}

---

### Book: 21 Lessons [[en][21lessons]]

* [Multiple translations][21trans] by various translators

---

### Thank You 🧡

{% assign translators = site.translations | map: "author" %}

At least {{ translators | uniq | size }} people were involved in creating more
than {{ site.translations | size }} translations and remixes of my writing.
*Thank you* for providing your [time and talent][value]:

*{{ translators | uniq | join: ", " }}.*


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
[value]: {{ '/value' | absolute_url }}
[cc-by-sa]: https://creativecommons.org/licenses/by-sa/4.0/
[21lessons]: https://21lessons.com
[21trans]: https://21lessons.com/translations
