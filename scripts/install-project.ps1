$ErrorActionPreference = "Stop"

$RepoUrl = "https://github.com/jepotes/universal-ai-skills.git"
$TargetDir = "ai-skills"

Write-Host "Installing Universal AI Skills..." -ForegroundColor Cyan

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Error "Git is required. Install Git and run this installer again."
    exit 1
}

if (-not (Test-Path ".ai")) {
    New-Item -ItemType Directory -Path ".ai" | Out-Null
}

if (-not (Test-Path $TargetDir)) {
    git clone $RepoUrl $TargetDir
} else {
    Push-Location $TargetDir
    git pull
    Pop-Location
}

Copy-Item "$TargetDir\CLAUDE.md" "CLAUDE.md" -Force
Copy-Item "$TargetDir\AGENTS.md" "AGENTS.md" -Force
Copy-Item "$TargetDir\CODEX.md" "CODEX.md" -Force
Copy-Item "$TargetDir\GEMINI.md" "GEMINI.md" -Force
Copy-Item "$TargetDir\WINDSURF.md" "WINDSURF.md" -Force
Copy-Item "$TargetDir\.ai\project.json" ".ai\project.json" -Force

if (-not (Test-Path ".cursor\rules")) {
    New-Item -ItemType Directory -Path ".cursor\rules" -Force | Out-Null
}
Copy-Item "$TargetDir\templates\cursor-rule.mdc" ".cursor\rules\universal-ai-skills.mdc" -Force

Write-Host ""
Write-Host "Universal AI Skills installed successfully." -ForegroundColor Green
Write-Host "Open this folder with your AI assistant."
Write-Host "The assistant should read CLAUDE.md, AGENTS.md and .ai/project.json first."
