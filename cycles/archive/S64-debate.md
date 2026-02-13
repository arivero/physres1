# S64 Debate: Table vs boxed list for the compatibility reader map

Date: 2026-02-11

## Question
Should the navigation aid be presented as a literal 3-row table (symbol / meaning / where), or as a compact boxed list?

## Decision
Use a compact boxed list (blockquote) rather than a table.

## Rationale
Pandoc/TeX tables are the easiest way to create overfull lines and layout brittleness in the PDF. A three-line boxed list preserves the “3 rows” intent while staying robust under minor wording changes and future section renumbering.

