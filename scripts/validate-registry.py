#!/usr/bin/env python3
import json
from pathlib import Path

root = Path(__file__).resolve().parents[1]
registry = json.loads((root / "registry.json").read_text(encoding="utf-8"))
errors = []

for skill in registry.get("skills", []):
    path = root / skill["path"]
    entry = path / skill.get("entry", "skill.md")
    metadata = path / skill.get("metadata", "metadata.json")
    if not path.exists():
        errors.append(f"Missing skill path: {path}")
    if not entry.exists():
        errors.append(f"Missing skill entry: {entry}")
    if not metadata.exists():
        errors.append(f"Missing metadata: {metadata}")

if errors:
    print("Registry validation failed:")
    for error in errors:
        print(f"- {error}")
    raise SystemExit(1)

print("Registry OK")
