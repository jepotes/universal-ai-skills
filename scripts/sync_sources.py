import json
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SOURCES = ROOT / "sources.json"

with SOURCES.open("r", encoding="utf-8") as f:
    data = json.load(f)

for source in data.get("sources", []):
    if not source.get("enabled", True):
        continue
    repo = source["repository"]
    target = ROOT / source["target"]
    if target.exists():
        print(f"Updating {source['id']}...")
        subprocess.run(["git", "-C", str(target), "pull"], check=True)
    else:
        target.parent.mkdir(parents=True, exist_ok=True)
        print(f"Cloning {source['id']}...")
        subprocess.run(["git", "clone", repo, str(target)], check=True)
