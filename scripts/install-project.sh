#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/jepotes/universal-ai-skills.git"
TARGET_DIR="ai-skills"

echo "Installing Universal AI Skills..."

if ! command -v git >/dev/null 2>&1; then
  echo "Git is required. Install Git and run this installer again."
  exit 1
fi

mkdir -p .ai
mkdir -p .cursor/rules

if [ ! -d "$TARGET_DIR" ]; then
  git clone "$REPO_URL" "$TARGET_DIR"
else
  git -C "$TARGET_DIR" pull
fi

cp -f "$TARGET_DIR/CLAUDE.md" CLAUDE.md
cp -f "$TARGET_DIR/AGENTS.md" AGENTS.md
cp -f "$TARGET_DIR/CODEX.md" CODEX.md
cp -f "$TARGET_DIR/GEMINI.md" GEMINI.md
cp -f "$TARGET_DIR/WINDSURF.md" WINDSURF.md
cp -f "$TARGET_DIR/.ai/project.json" .ai/project.json
cp -f "$TARGET_DIR/templates/cursor-rule.mdc" .cursor/rules/universal-ai-skills.mdc

echo ""
echo "Universal AI Skills installed successfully."
echo "Open this folder with your AI assistant."
echo "The assistant should read CLAUDE.md, AGENTS.md and .ai/project.json first."
