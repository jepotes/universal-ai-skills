#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

mkdir -p external \
  skills/{core,methodology,design,frontend,backend,automation,business,marketing,content,testing,integrations,vercel} \
  adapters/{claude,codex,cursor,gemini,copilot,windsurf,aider,generic} \
  packs docs cli templates

git init >/dev/null 2>&1 || true
chmod +x scripts/*.sh || true

printf "\n✅ Universal AI Skills Hub inicializado\n"
printf "Siguiente paso: ./scripts/sync-sources.sh\n"
