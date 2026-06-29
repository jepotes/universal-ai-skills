#!/usr/bin/env bash
set -e
ok=true
for item in ai-skills .ai/project.json CLAUDE.md AGENTS.md; do
  if [ -e "$item" ]; then
    echo "OK  $item"
  else
    echo "MISS $item"
    ok=false
  fi
done

if [ "$ok" = true ]; then
  echo "Universal AI Skills is ready."
else
  echo "Some files are missing. Run the installer again."
  exit 1
fi
