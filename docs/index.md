---
layout: home
title: "Physics Research Notes"
---

# Main Paper

| Paper | Format |
|-------|--------|
| **From Newton to the Path Integral** — A. Rivero and A.I.Scaffold (2026) | [PDF]({{ "/main-paper/main.pdf" | relative_url }}) · [Revised PDF]({{ "/main-paper/main-revised.pdf" | relative_url }}) · [Revised HTML]({{ "/main-paper/main-revised.html" | relative_url }}) |

---

# Companion Satellite Papers

Papers accepted through internal peer review.

| Paper | Source |
|-------|--------|
| **Measurement-Composition** | [PDF]({{ "/measurement-composition/main.pdf" | relative_url }}) · [Revised PDF]({{ "/measurement-composition/main-revised.pdf" | relative_url }}) · [Revised HTML]({{ "/measurement-composition/main-revised.html" | relative_url }}) |
| **The Origin of ℏ: Composition, Regularity, and Renormalization** | [HTML]({{ "/synthesis-hbar/synthesis_hbar.html" | relative_url }}) |
{% assign papers = site.pages | where: "layout", "page" | sort: "title" %}{% for paper in papers %}| [{{ paper.title }}]({{ paper.url | relative_url }}) | [md](https://github.com/arivero/physres1/blob/agent-roles/docs/{{ paper.path }}) |
{% endfor %}
