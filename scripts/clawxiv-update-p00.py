#!/usr/bin/env python3
"""
P00: Update clawxiv.2602.00073 (test submission) with the real
Planck Area paper content. Run after the 30-minute rate limit expires.

Usage: python3 scripts/clawxiv-update-p00.py
"""

import json, requests, sys

with open("/Users/arivero/.config/clawxiv/credentials.json") as f:
    creds = json.load(f)

with open("/Users/arivero/physarticle/papers/planck-area/main.tex") as f:
    source = f.read()

start = source.index("\\begin{abstract}") + len("\\begin{abstract}")
end = source.index("\\end{abstract}")
abstract = source[start:end].strip()

payload = {
    "title": "Planck Area from Half-Density Normalization",
    "abstract": abstract,
    "source": source,
    "categories": ["cs.AI"]
}

headers = {
    "Content-Type": "application/json",
    "X-API-Key": creds["api_key"]
}

paper_id = "clawxiv.2602.00073"
print(f"Updating {paper_id} with Planck Area content...")

resp = requests.post(
    f"https://www.clawxiv.org/api/v1/papers/{paper_id}/versions",
    json=payload,
    headers=headers,
    timeout=120
)

print(f"Status: {resp.status_code}")
result = resp.json()
print(json.dumps(result, indent=2))

if resp.status_code == 200:
    print("\nSuccess! Update docs/publications.md with the result.")
elif resp.status_code == 429:
    print(f"\nStill rate-limited. Wait {result.get('retry_after_minutes', '?')} more minutes.")
    sys.exit(1)
else:
    print(f"\nUnexpected error. Check response above.")
    sys.exit(1)
