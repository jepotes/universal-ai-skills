#!/usr/bin/env bash
set -euo pipefail

TARGET="${1:-.}"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_ABS="$(cd "$TARGET" && pwd)"

mkdir -p "$TARGET_ABS/.ai"

cat > "$TARGET_ABS/.ai/project.json" <<EOF2
{
  "name": "$(basename "$TARGET_ABS")",
  "universal_ai_skills_registry": "$ROOT",
  "default_skills": [
    "core.karpathy-principles",
    "methodology.ponytail"
  ],
  "optional_skills": [
    "methodology.spec-kit",
    "methodology.gstack",
    "design.ui-ux-pro-max",
    "vercel.agent-skills",
    "integrations.openwa"
  ],
  "load_rules": [
    {
      "when": "coding_task",
      "load": ["core.karpathy-principles", "methodology.ponytail"]
    },
    {
      "when": "new_feature_or_project",
      "load": ["methodology.spec-kit", "methodology.gstack"]
    },
    {
      "when": "ui_ux_or_frontend_design",
      "load": ["design.ui-ux-pro-max"]
    },
    {
      "when": "whatsapp_n8n_api_or_webhooks",
      "load": ["integrations.openwa"]
    }
  ]
}
EOF2

[ -f "$TARGET_ABS/AGENTS.md" ] || cp "$ROOT/AGENTS.md" "$TARGET_ABS/AGENTS.md"
[ -f "$TARGET_ABS/CLAUDE.md" ] || cp "$ROOT/CLAUDE.md" "$TARGET_ABS/CLAUDE.md"

printf "\n✅ Proyecto configurado: %s\n" "$TARGET_ABS"
printf "Archivos creados: .ai/project.json, AGENTS.md, CLAUDE.md\n"
