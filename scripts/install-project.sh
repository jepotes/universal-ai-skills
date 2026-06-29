#!/usr/bin/env bash
set -e
REPO_URL="https://github.com/jepotes/universal-ai-skills.git"
echo "Installing Universal AI Skills..."
mkdir -p .ai
if [ ! -d "ai-skills" ]; then
  git clone "$REPO_URL" ai-skills
else
  git -C ai-skills pull
fi
cp -f ai-skills/CLAUDE.md CLAUDE.md
cp -f ai-skills/AGENTS.md AGENTS.md
cp -f ai-skills/CODEX.md CODEX.md
cp -f ai-skills/GEMINI.md GEMINI.md
cp -f ai-skills/WINDSURF.md WINDSURF.md
cp -f ai-skills/.ai/project.json .ai/project.json
mkdir -p .cursor/rules
cp -f ai-skills/adapters/cursor/universal-ai-skills.mdc .cursor/rules/universal-ai-skills.mdc || true
echo "Universal AI Skills installed."
echo "Open this folder with your AI assistant."
