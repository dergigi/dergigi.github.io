---
layout: page
title: Media Appearances
subtitle: Interviews, Movies, and more.
redirect_from: /interviews

---

[🏠 Home][home] | [✨ No Filter][all] | **⭐ Favorites** | [🇺🇸 English][en] | [🇩🇪 German][de]

[home]: {{ '/media' | absolute_url }}
[all]: {{ '/media/all' | absolute_url }}
[favs]: {{ '/media/best' | absolute_url }}
[de]: {{ '/media/de' | absolute_url }}
[en]: {{ '/media/en' | absolute_url }}


{% assign sorted_sodes = site.episodes | where: 'star', true | sort: 'date' | reverse %}

<ul class="sodes">
{% for sode in sorted_sodes %}
  {% assign link = sode.youtube %}
  {% if sode.podlink %}{% assign link = sode.podlink %}{% endif %}
  {% if sode.link %}{% assign link = sode.link %}{% endif %}
  <li>
    <a href="{{ link }}" target="_blank" title="Released on {{ sode.date }} by {{ sode.host }}">
      {% if sode.star %} ⭐ {% endif %}
      {% case sode.lang %}
        {% when 'AT' %}🇦🇹
        {% when 'DE' %}🇩🇪
        {% when 'CH' %}🇨🇭
        {% else %}🇺🇸
      {% endcase %}
      {% if sode.youtube %}📺{% else %}🎧{% endif %}
      {{ sode.podname }}
      {% if sode.sode %}#{{ sode.sode }} {% endif %}
    </a>
    <small>
      {% if sode.podlink %}<a href="{{ sode.podlink }}" target="_blank"><i class="fab fa-podcast"></i></a>{% endif %}
      {% if sode.youtube %}<a href="{{ sode.youtube }}" target="_blank"><i class="fab fa-youtube"></i></a>{% endif %}
      {% if sode.archive %}<a href="{{ sode.archive }}" target="_blank"><i class="fab fa-archive"></i></a>{% endif %}
      <br/>
      {% if sode.topics %}on {{ sode.topics }},{% endif %}
      {% if sode.guests %}with {{ sode.guests }}{% endif %}
      {% if sode.host %}hosted by {{ sode.host }}{% endif %}
    </small>

  </li>
{% endfor %}
</ul>

---

I had the immense pleasure of speaking to Jordan B. Peterson on his podcast
for [S4:E40][jbpS4E40], along with some fellow bitcoiners.
The [full interview][jbpS4E40yt] is on YouTube.

{% capture absoluteVideoURL %}{{ 'assets/video/jbp.mp4' | absolute_url }}{% endcapture %}
{% include video.html file=absoluteVideoURL %}

[jbpS4E40yt]: https://youtu.be/iVym9wtopqs
[jbpS4E40]: https://www.jordanbpeterson.com/podcast/s4e40/

---

In 2021, the German movie [Human B][hb] was released, which I was fortunate
enough to play small role in. The full movie is available on [Vimeo][hbv] and
[YouTube][hby].

{% capture absoluteVideoURL2 %}{{ 'assets/video/humanb.mp4' | absolute_url }}{% endcapture %}
{% include video.html file=absoluteVideoURL2 %}

[hb]: https://humanb-film.com/
[hbv]: https://vimeo.com/658711759
[hby]: https://youtu.be/RFSBWrAllzw
