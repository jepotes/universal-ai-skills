#!/usr/bin/env bash
set -euo pipefail

echo "Universal AI Skills Doctor"

for item in ai-skills .ai/project.json CLAUDE.md AGENTS.md CODEX.md GEMINI.md WINDSURF.md; do
  if [ -e "$item" ]; then
    echo "OK   $item"
  else
    echo "MISS $item"
  fi
done

if command -v git >/dev/null 2>&1; then
  echo "OK   git"
else
  echo "MISS git"
fi
