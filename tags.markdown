---
layout: page
title: Tags & Categories
permalink: /tags/
---

## Categories

{% for tag in site.categories %}
{{ tag[0] }}

  {% for post in tag[1] %}
  - [{{post.title}}]({{post.url}})
  {% endfor %}

{% endfor %}

## Tags

{% for tag in site.tags %}
{{ tag[0] }}

  {% for post in tag[1] %}
  - [{{post.title}}]({{post.url}})
  {% endfor %}

{% endfor %}