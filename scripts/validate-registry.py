import json
from pathlib import Path

registry = Path('registry.json')
if not registry.exists():
    raise SystemExit('registry.json not found')

data = json.loads(registry.read_text(encoding='utf-8'))
errors = []
for skill in data.get('skills', []):
    path = Path(skill.get('path', ''))
    if not path.exists():
        errors.append(f"Missing skill path: {path}")
    if not (path / 'metadata.json').exists():
        errors.append(f"Missing metadata.json: {path}")
    if not (path / 'skill.md').exists():
        errors.append(f"Missing skill.md: {path}")

if errors:
    print('\n'.join(errors))
    raise SystemExit(1)

print('Registry OK')
