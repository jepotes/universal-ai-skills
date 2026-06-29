#!/usr/bin/env bash
set -e
missing=0
for p in ai-skills .ai/project.json CLAUDE.md AGENTS.md; do
  if [ -e "$p" ]; then echo "OK $p"; else echo "MISSING $p"; missing=1; fi
done
exit $missing
