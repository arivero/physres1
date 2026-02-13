#!/usr/bin/env python3
"""Count tokens in manuscript files using the Claude tokenizer (via HuggingFace).

Usage:
    scripts/count-tokens.py [file1.md file2.md ...]
    scripts/count-tokens.py                          # all satellites + main

Uses Xenova/claude-tokenizer from HuggingFace Hub (cached locally after
first download). This is a BPE tokenizer matching Claude's tokenization.
Source: HuggingFace only — no third-party code.
"""
import sys
import os
import glob

def get_tokenizer():
    """Load Claude tokenizer, caching locally."""
    from tokenizers import Tokenizer
    return Tokenizer.from_pretrained("Xenova/claude-tokenizer")

def count_file(tok, path):
    """Return (token_count, line_count) for a file."""
    with open(path, "r", encoding="utf-8") as f:
        text = f.read()
    tokens = tok.encode(text)
    lines = text.count("\n")
    return len(tokens.ids), lines

def main():
    root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    os.chdir(root)

    tok = get_tokenizer()

    if len(sys.argv) > 1:
        targets = sys.argv[1:]
    else:
        targets = sorted(glob.glob("papers/*/main.md")) + ["paper/main.md"]

    print("=== Token counts (Claude tokenizer, Xenova/claude-tokenizer) ===")
    print()
    total_tokens = 0
    total_lines = 0
    for path in targets:
        if not os.path.isfile(path):
            print(f"  {path}: NOT FOUND")
            continue
        name = os.path.basename(os.path.dirname(path))
        ntok, nlines = count_file(tok, path)
        total_tokens += ntok
        total_lines += nlines
        print(f"  {name:<50s} {ntok:>6d} tokens  ({nlines} lines md)")
    print()
    print(f"  {'TOTAL':<50s} {total_tokens:>6d} tokens  ({total_lines} lines md)")

if __name__ == "__main__":
    main()
