param(
    [string]$RepoUrl = "https://github.com/jepotes/universal-ai-skills.git",
    [string]$InstallDir = "ai-skills"
)

$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host "Universal AI Skills - Project Installer" -ForegroundColor Cyan
Write-Host "--------------------------------------" -ForegroundColor Cyan

if (!(Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "Git is required but was not found." -ForegroundColor Red
    exit 1
}

if (!(Test-Path ".ai")) {
    New-Item -ItemType Directory -Path ".ai" | Out-Null
}

if (!(Test-Path $InstallDir)) {
    Write-Host "Cloning skills from $RepoUrl..."
    git clone $RepoUrl $InstallDir
} else {
    Write-Host "Updating existing skills..."
    Push-Location $InstallDir
    git pull
    Pop-Location
}

Copy-Item "$InstallDir\CLAUDE.md" "CLAUDE.md" -Force
Copy-Item "$InstallDir\AGENTS.md" "AGENTS.md" -Force
Copy-Item "$InstallDir\CODEX.md" "CODEX.md" -Force
Copy-Item "$InstallDir\GEMINI.md" "GEMINI.md" -Force
Copy-Item "$InstallDir\WINDSURF.md" "WINDSURF.md" -Force
Copy-Item "$InstallDir\.ai\project.json" ".ai\project.json" -Force

if (!(Test-Path ".cursor\rules")) {
    New-Item -ItemType Directory -Path ".cursor\rules" -Force | Out-Null
}
Copy-Item "$InstallDir\adapters\cursor\universal-ai-skills.mdc" ".cursor\rules\universal-ai-skills.mdc" -Force

Write-Host ""
Write-Host "Installation complete." -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:"
Write-Host "1. Open this folder with Claude Code, Cursor, Codex, Gemini, Windsurf or another AI assistant."
Write-Host "2. Ask the AI: Read project instructions and load skills from .ai/project.json."
Write-Host "3. To update later, run: .\ai-skills\scripts\update-project.ps1"
Write-Host ""
