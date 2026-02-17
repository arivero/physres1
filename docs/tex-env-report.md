# TeX Environment Report

- Generated (UTC): `2026-02-09 11:53:04Z`
- Host: `macOS-15.7.3-x86_64-i386-64bit`
- Python: `3.12.11`

## TeX Live Footprint

- `TEXMFROOT`: `/usr/local/texlive/2025basic`
- `TEXMFDIST`: `/usr/local/texlive/2025basic/texmf-dist`
- `tlmgr install root`: `/usr/local/texlive/2025basic`
- Detected profile: `BasicTeX/minimal`

## Binary Inventory

| Binary | Path | Version |
|---|---|---|
| `pdflatex` | `/Library/TeX/texbin/pdflatex` | `pdfTeX 3.141592653-2.6-1.40.27 (TeX Live 2025)` |
| `latex` | `/Library/TeX/texbin/latex` | `pdfTeX 3.141592653-2.6-1.40.27 (TeX Live 2025)` |
| `xelatex` | `/Library/TeX/texbin/xelatex` | `XeTeX 3.141592653-2.6-0.999997 (TeX Live 2025)` |
| `lualatex` | `/Library/TeX/texbin/lualatex` | `This is LuaHBTeX, Version 1.21.0 (TeX Live 2025)` |
| `bibtex` | `/Library/TeX/texbin/bibtex` | `BibTeX 0.99d (TeX Live 2025)` |
| `tlmgr` | `/Library/TeX/texbin/tlmgr` | `tlmgr revision 74241 (2025-02-24 00:10:34 +0100)` |
| `kpsewhich` | `/Library/TeX/texbin/kpsewhich` | `kpathsea version 6.4.1` |

## Package Availability (kpsewhich)

| File | Status |
|---|---|
| `article.cls` | `present` |
| `amsmath.sty` | `present` |
| `amssymb.sty` | `present` |
| `geometry.sty` | `present` |
| `hyperref.sty` | `present` |
| `natbib.sty` | `present` |
| `biblatex.sty` | `missing` |
| `tikz.sty` | `present` |
| `pgfplots.sty` | `missing` |
| `latexmk` | `missing` |

## Smoke Tests

| Engine | Status | Detail |
|---|---|---|
| `pdflatex` | `ok` | `compiled` |
| `xelatex` | `ok` | `compiled` |
| `lualatex` | `ok-with-TEXMFVAR` | `cache fixed via TEXMFVAR` |

## Notes

- Baseline compile works if `pdflatex` or `xelatex` smoke test passes.
- If `lualatex` fails in restricted environments, set `TEXMFVAR` to a writable directory.
- Missing packages can be installed later via `tlmgr install <package>`.
