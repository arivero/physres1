# Physics Research Notes (docs)

## How LaTeX Math Rendering Works (Minima + Kramdown + MathJax)

This site is built by Jekyll using the `minima` theme, with local include overrides.

### Rendering pipeline

1. Markdown source files (for example `action-angle-indeterminacy/main.md`) are parsed by Jekyll.
2. `_config.yml` sets `markdown: kramdown`, so Kramdown converts Markdown to HTML.
3. `kramdown.math_engine: mathjax` marks math for MathJax processing.
4. Minima loads the head include; this repo overrides it with `_includes/head.html`.
5. `_includes/head.html` loads MathJax v2 and delimiter config.
6. In the browser, MathJax turns TeX math in the HTML into rendered math.

### Current config in this repo

- `_config.yml`
  - `markdown: kramdown`
  - `kramdown.input: Kramdown`
  - `kramdown.math_engine: mathjax`
- `_includes/head.html`
  - Loads MathJax 2.7.7 from CDN
  - Enables these delimiters:
    - Inline: `$...$` and `\(...\)`
    - Display: `$$...$$` and `\[...\]`

### Important syntax distinction

- In markdown **source** parsed by kramdown, the documented math syntax is `$$...$$` (inline and block forms in kramdown syntax docs).
- With `math_engine: mathjax`, kramdown emits MathJax HTML wrappers using `\(...\)` and `\[...\]` in the **generated HTML**.
- Therefore, writing manuscript math directly as `\(...\)` / `\[...\]` in markdown can be fragile under Jekyll/kramdown parsing.

### Practical delimiter guidance

- For markdown files in this repo, prefer `$...$` and `$$...$$`.
- If math appears as raw text online, first check `_includes/head.html` and `_config.yml` on the deployed branch.

### Where to edit behavior

- Change parser/math engine behavior: `_config.yml`
- Change MathJax delimiters/CDN/version: `_includes/head.html`

### Primary references

- Kramdown syntax and math options: <https://kramdown.gettalong.org/syntax.html> and <https://kramdown.gettalong.org/options.html>
- Minima include extension point (`custom-head.html`): <https://raw.githubusercontent.com/jekyll/minima/master/_includes/head.html>
