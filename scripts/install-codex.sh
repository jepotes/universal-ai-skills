#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
mkdir -p "$ROOT/adapters/codex"
cat > "$ROOT/adapters/codex/AGENTS.generated.md" <<'EOF2'
# Codex Adapter

Use this repo as a universal skills registry.

Before coding:
1. Read `.ai/project.json`.
2. Load relevant entries from `registry.json`.
3. Apply the smallest safe change.
4. Verify with tests, lint, build or explicit acceptance criteria.
EOF2

echo "==> Codex adapter generated: adapters/codex/AGENTS.generated.md"
