$RepoUrl = "https://github.com/jepotes/universal-ai-skills.git"
Write-Host "Installing Universal AI Skills..."
if (!(Test-Path ".ai")) { New-Item -ItemType Directory -Path ".ai" | Out-Null }
if (!(Test-Path "ai-skills")) { git clone $RepoUrl ai-skills } else { git -C ai-skills pull }
Copy-Item "ai-skills\CLAUDE.md" "CLAUDE.md" -Force
Copy-Item "ai-skills\AGENTS.md" "AGENTS.md" -Force
Copy-Item "ai-skills\CODEX.md" "CODEX.md" -Force
Copy-Item "ai-skills\GEMINI.md" "GEMINI.md" -Force
Copy-Item "ai-skills\WINDSURF.md" "WINDSURF.md" -Force
Copy-Item "ai-skills\.ai\project.json" ".ai\project.json" -Force
if (!(Test-Path ".cursor\rules")) { New-Item -ItemType Directory -Path ".cursor\rules" | Out-Null }
if (Test-Path "ai-skills\adapters\cursor\universal-ai-skills.mdc") { Copy-Item "ai-skills\adapters\cursor\universal-ai-skills.mdc" ".cursor\rules\universal-ai-skills.mdc" -Force }
Write-Host "Universal AI Skills installed."
Write-Host "Open this folder with your AI assistant."
