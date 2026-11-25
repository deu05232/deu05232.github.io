---
layout: page
title: Blog
permalink: /blog/
nav: true
nav_order: 3
---

{% for post in site.posts %}
- [{{ post.title }}]({{ post.url | relative_url }}) · {{ post.date | date: "%Y-%m-%d" }}
{% else %}
No research notes have been published yet.
{% endfor %}
