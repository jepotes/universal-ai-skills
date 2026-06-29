#!/usr/bin/env python3
import json
from pathlib import Path

root = Path(__file__).resolve().parents[1]
registry = json.loads((root / "registry.json").read_text(encoding="utf-8"))
sources = json.loads((root / "sources.json").read_text(encoding="utf-8"))
source_ids = {s["id"] for s in sources["sources"]}

errors = []
ids = set()
for skill in registry.get("skills", []):
    sid = skill.get("id")
    if not sid:
        errors.append("Skill without id")
    elif sid in ids:
        errors.append(f"Duplicate skill id: {sid}")
    ids.add(sid)

    source_id = skill.get("source_id")
    if source_id not in source_ids:
        errors.append(f"Skill {sid} references missing source_id: {source_id}")

if errors:
    print("Registry validation failed:")
    for e in errors:
        print(f"- {e}")
    raise SystemExit(1)

print(f"Registry OK: {len(ids)} skills, {len(source_ids)} sources")
