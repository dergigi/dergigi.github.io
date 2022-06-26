---
layout: page
title: Threads
subtitle: Early thoughts that might turn into something longer.
description: A collection of twitter threads on Bitcoin.
---

{% for thread in site.threads %}
  * [{{ thread.title }}]({{ thread.url }}) - {{ thread.subtitle }}
{% endfor %}

More threads are linked in the [/media][media] section.

[media]: {{ '/media#twitter-threads' | absolute_url }}
[contact]: {{ '/contact' | absolute_url }}
