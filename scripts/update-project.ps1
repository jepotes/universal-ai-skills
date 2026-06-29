$ErrorActionPreference = "Stop"

if (!(Test-Path "ai-skills")) {
    Write-Host "ai-skills folder not found. Run the installer first." -ForegroundColor Red
    exit 1
}

Push-Location ai-skills
git pull
Pop-Location

Copy-Item "ai-skills\CLAUDE.md" "CLAUDE.md" -Force
Copy-Item "ai-skills\AGENTS.md" "AGENTS.md" -Force
Copy-Item "ai-skills\CODEX.md" "CODEX.md" -Force
Copy-Item "ai-skills\GEMINI.md" "GEMINI.md" -Force
Copy-Item "ai-skills\WINDSURF.md" "WINDSURF.md" -Force
Copy-Item "ai-skills\.ai\project.json" ".ai\project.json" -Force

Write-Host "Universal AI Skills updated." -ForegroundColor Green
