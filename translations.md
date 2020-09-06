---
layout: page
title: Translations
---

{% include image.html path="/assets/images/cc-by-sa-400.svg.png" %}

All my writing is published under the [Creative Commons Attribution-ShareAlike
4.0 International (CC BY-SA 4.0) license][cc-by-sa] which means that you are
free to share and adapt the material as you see fit. The only requirement is
that you must distribute your contributions under the same license.

Thanks to this license - and many awesome individual bitcoiners - many of my
writings, including my book [21 Lessons](https://21lessons.com/translations), have been
translated to other languages.


{% for post in site.categories.bitcoin %}
{% if post.translations %}
### {{ post.title }} [[en]({{ post.url }})]
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


If you want to translate or remix my work in any way, you are free to do so, as
long as you comply with the [terms of the license][cc-by-sa]. Feel free to
[reach out to me][contact] if you have any questions or are working on a
translation. I will gladly link to it in the original article.

[contact]: {{ '/contact' | absolute_url }}
[cc-by-sa]: https://creativecommons.org/licenses/by-sa/4.0/
