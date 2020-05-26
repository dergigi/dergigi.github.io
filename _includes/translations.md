{% if page.translations %}
{% if include.hide_heading != true %}
### Translations
{% endif %}
{% for translation in page.translations %}
  - [{{ translation.language }} translation]({{ translation.url }}) by [{{ translation.author }}]({{ translation.author_url }})
{% endfor %}
{% endif %}
