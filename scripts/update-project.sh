#!/usr/bin/env bash
set -e

if [ ! -d "ai-skills" ]; then
  echo "ai-skills folder not found. Run the installer first."
  exit 1
fi

cd ai-skills
git pull
cd ..

echo "Universal AI Skills updated."
