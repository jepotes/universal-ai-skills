#!/usr/bin/env bash
set -euo pipefail

if [ ! -d "ai-skills" ]; then
  echo "ai-skills folder not found. Run the installer first."
  exit 1
fi

git -C ai-skills pull
cp -f ai-skills/CLAUDE.md CLAUDE.md
cp -f ai-skills/AGENTS.md AGENTS.md
cp -f ai-skills/CODEX.md CODEX.md
cp -f ai-skills/GEMINI.md GEMINI.md
cp -f ai-skills/WINDSURF.md WINDSURF.md
cp -f ai-skills/.ai/project.json .ai/project.json

echo "Universal AI Skills updated."
