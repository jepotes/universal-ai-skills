import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
registry = json.loads((ROOT / "registry.json").read_text(encoding="utf-8"))
errors = []

for skill in registry.get("skills", []):
    path = ROOT / skill["path"]
    if not path.exists():
        errors.append(f"Missing skill path: {skill['id']} -> {path}")
    if not (path / skill.get("entry", "skill.md")).exists():
        errors.append(f"Missing entry file for {skill['id']}")
    if not (path / skill.get("metadata", "metadata.json")).exists():
        errors.append(f"Missing metadata file for {skill['id']}")

if errors:
    print("Registry validation failed:")
    for error in errors:
        print(f"- {error}")
    raise SystemExit(1)

print("Registry validation passed.")
