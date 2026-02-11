# D06 Debate: Table vs figure for the compatibility chain

Date: 2026-02-11

## Question
Should the reader-navigation aid be a true figure (TikZ/graphic) or a plain table/boxed block in Markdown?

## Decision
Start with a plain table/boxed block in Markdown.

## Rationale
It is robust under pandoc conversion, avoids LaTeX figure/layout fragility, and can be promoted quickly. If later needed, it can be upgraded to a figure without changing content.

