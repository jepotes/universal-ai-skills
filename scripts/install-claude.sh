#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CLAUDE_SKILLS_DIR="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
mkdir -p "$CLAUDE_SKILLS_DIR"

link_if_exists() {
  local source="$1"
  local name="$2"
  if [ -e "$source" ]; then
    ln -sfn "$source" "$CLAUDE_SKILLS_DIR/$name"
    echo "Linked $name -> $source"
  else
    echo "Skipping $name; source not found: $source"
  fi
}

link_if_exists "$ROOT/external/andrej-karpathy-skills" "karpathy-principles"
link_if_exists "$ROOT/external/ponytail" "ponytail"
link_if_exists "$ROOT/external/agent-skills" "vercel-agent-skills"
link_if_exists "$ROOT/external/gstack" "gstack"
link_if_exists "$ROOT/external/spec-kit" "spec-kit"
link_if_exists "$ROOT/external/ui-ux-pro-max" "ui-ux-pro-max"

mkdir -p "$CLAUDE_SKILLS_DIR/universal-ai-registry"
cat > "$CLAUDE_SKILLS_DIR/universal-ai-registry/SKILL.md" <<CLAUDEEOF
---
name: universal-ai-registry
description: Carga y coordina skills desde Universal AI Skills Registry.
---

# Universal AI Registry

Cuando trabajes en un proyecto, revisa:

- .ai/project.json
- registry.json
- AGENTS.md
- CLAUDE.md

Carga las skills relevantes según la tarea y respeta licencias de fuentes externas.

Skills de diseño/frontend sugeridas:
- design.ui-ux-pro-max cuando haya UI/UX, design systems, branding, accesibilidad, React, Next.js o Tailwind.
CLAUDEEOF

echo "==> Claude skills installed in $CLAUDE_SKILLS_DIR"
