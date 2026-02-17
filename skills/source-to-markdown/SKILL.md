---
name: source-to-markdown
description: Convert PDF or HTML sources (local files or URLs) into Markdown for bibliography and notes capture, including batch ingestion into a local `sources/` folder. Use when collecting research material and normalizing downloaded sources into `.md` files for citation, indexing, or paper drafting workflows.
---

# Source to Markdown

Convert sources into Markdown using a deterministic pipeline with Python 3.12.

## Workflow

1. Convert one source (output defaults to `sources/`):

```bash
python3.12 skills/source-to-markdown/scripts/source_to_md.py <input>
```

2. Convert one source to an explicit path:

```bash
python3.12 skills/source-to-markdown/scripts/source_to_md.py <input> bibliography/sources/my-paper.md
```

3. Batch ingest many sources:

```bash
python3.12 skills/source-to-markdown/scripts/ingest_sources.py --list bibliography/urls.txt --sources-dir sources
```

4. If auto-detection is wrong, force type:

```bash
python3.12 skills/source-to-markdown/scripts/source_to_md.py <input> --kind pdf
python3.12 skills/source-to-markdown/scripts/source_to_md.py <input> --kind html
```

5. Keep generated sources untracked:

```bash
echo "sources/" >> .gitignore
```

## Tool Requirements

- For PDF: `pdftotext` required.
- For HTML: `pandoc` preferred; falls back to built-in HTML text extraction if unavailable.

## Notes

- Output includes source metadata frontmatter.
- Markdown is normalized for readable archival notes, not exact typographic fidelity.
- INSPIRE (`inspirehep.net`) and KEK domains are treated as first-class bibliography sources.
- For INSPIRE/KEK record pages, the converter tries to resolve a direct PDF link before conversion.
- ArXiv `abs` URLs are automatically resolved to direct `pdf` URLs.
- HTTP fetches now use an explicit user-agent header to reduce provider-side blocking.
- Use only lawful/open-access sources. The converter blocks known piracy-host domains.

## OA Triage Pattern

When a source is missing, use this order:
1. ArXiv direct PDF (`https://arxiv.org/pdf/<id>.pdf`).
2. INSPIRE record/API and follow legal PDF/URL fields.
3. KEK records (if reachable from current network).
4. Publisher page (only if open/legal access works).
5. If unavailable, create a `sources/pending-<key>.md` note with attempted URLs and status.
