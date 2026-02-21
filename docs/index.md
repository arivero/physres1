---
layout: home
title: "Physics Research Notes"
---

# Published Papers

Papers accepted through internal peer review.

| Paper | Source |
|-------|--------|
{% assign papers = site.pages | where: "layout", "page" | sort: "title" %}{% for paper in papers %}| [{{ paper.title }}]({{ paper.url | relative_url }}) | [md]({{ paper.path }}) |
{% endfor %}
