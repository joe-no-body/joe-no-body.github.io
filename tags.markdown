---
layout: page
title: Categories
permalink: /categories/
---

{% comment %}
## Categories
{% endcomment %}

{% for tag in site.categories %}
**{{ tag[0] }}**

  {% for post in tag[1] %}
  - [{{post.title}}]({{post.url}})
  {% endfor %}

{% endfor %}

{% comment %}
## Tags

{% for tag in site.tags %}
{{ tag[0] }}

  {% for post in tag[1] %}
  - [{{post.title}}]({{post.url}})
  {% endfor %}

{% endfor %}
{% endcomment %}