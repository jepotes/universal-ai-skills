#!/usr/bin/env bash
set -e
if [ ! -d "ai-skills" ]; then
  echo "ai-skills not found. Run install first."
  exit 1
fi
git -C ai-skills pull
echo "Universal AI Skills updated."
