#!/usr/bin/env bash
set -e

REPO_URL="https://github.com/jepotes/universal-ai-skills.git"
TARGET_DIR="ai-skills"

echo "Universal AI Skills installer"
echo "-----------------------------"

if ! command -v git >/dev/null 2>&1; then
  echo "Git is required. Install Git and run this installer again."
  exit 1
fi

mkdir -p .ai

if [ ! -d "$TARGET_DIR" ]; then
  git clone "$REPO_URL" "$TARGET_DIR"
else
  cd "$TARGET_DIR"
  git pull
  cd ..
fi

for file in CLAUDE.md AGENTS.md CODEX.md GEMINI.md WINDSURF.md; do
  if [ -f "$TARGET_DIR/$file" ]; then
    cp -f "$TARGET_DIR/$file" "$file"
  fi
done

cp -f "$TARGET_DIR/.ai/project.json" ".ai/project.json"

mkdir -p scripts
cp -f "$TARGET_DIR/scripts/update-project.sh" "scripts/update-project.sh"
cp -f "$TARGET_DIR/scripts/doctor.sh" "scripts/doctor.sh"
chmod +x scripts/update-project.sh scripts/doctor.sh || true

echo ""
echo "Installation completed."
echo "Open this folder with your AI assistant."
echo "Recommended first prompt:"
echo "Read CLAUDE.md, AGENTS.md and .ai/project.json before working. Use ./ai-skills when relevant."
