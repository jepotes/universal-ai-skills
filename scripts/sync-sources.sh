#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

add_or_update() {
  local url="$1"
  local path="$2"

  if [ -d "$path/.git" ] || git config --file .gitmodules --get-regexp "submodule\.$path\.path" >/dev/null 2>&1; then
    echo "==> Updating $path"
    git submodule update --init --recursive "$path" || true
    git -C "$path" pull --ff-only || true
  else
    echo "==> Adding $path"
    git submodule add "$url" "$path"
  fi
}

add_or_update "https://github.com/multica-ai/andrej-karpathy-skills.git" "external/andrej-karpathy-skills"
add_or_update "https://github.com/DietrichGebert/ponytail.git" "external/ponytail"
add_or_update "https://github.com/vercel-labs/agent-skills.git" "external/agent-skills"
add_or_update "https://github.com/garrytan/gstack.git" "external/gstack"
add_or_update "https://github.com/github/spec-kit.git" "external/spec-kit"
add_or_update "https://github.com/rmyndharis/OpenWA.git" "external/openwa"
add_or_update "https://github.com/nextlevelbuilder/ui-ux-pro-max-skill.git" "external/ui-ux-pro-max"

git submodule update --init --recursive

echo "==> Sources synced"
