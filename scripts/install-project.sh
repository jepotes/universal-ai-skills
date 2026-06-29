#!/usr/bin/env bash
set -euo pipefail

REPO_URL="${UASK_REPO_URL:-https://github.com/jepotes/universal-ai-skills.git}"
INSTALL_DIR="${UASK_INSTALL_DIR:-ai-skills}"

echo ""
echo "Universal AI Skills - Project Installer"
echo "--------------------------------------"

if ! command -v git >/dev/null 2>&1; then
  echo "Git is required but was not found."
  exit 1
fi

mkdir -p .ai

if [ ! -d "$INSTALL_DIR" ]; then
  echo "Cloning skills from $REPO_URL..."
  git clone "$REPO_URL" "$INSTALL_DIR"
else
  echo "Updating existing skills..."
  git -C "$INSTALL_DIR" pull
fi

cp -f "$INSTALL_DIR/CLAUDE.md" CLAUDE.md
cp -f "$INSTALL_DIR/AGENTS.md" AGENTS.md
cp -f "$INSTALL_DIR/CODEX.md" CODEX.md
cp -f "$INSTALL_DIR/GEMINI.md" GEMINI.md
cp -f "$INSTALL_DIR/WINDSURF.md" WINDSURF.md
cp -f "$INSTALL_DIR/.ai/project.json" .ai/project.json

mkdir -p .cursor/rules
cp -f "$INSTALL_DIR/adapters/cursor/universal-ai-skills.mdc" .cursor/rules/universal-ai-skills.mdc

echo ""
echo "Installation complete."
echo ""
echo "Next steps:"
echo "1. Open this folder with Claude Code, Cursor, Codex, Gemini, Windsurf or another AI assistant."
echo "2. Ask the AI: Read project instructions and load skills from .ai/project.json."
echo "3. To update later, run: bash ./ai-skills/scripts/update-project.sh"
echo ""
