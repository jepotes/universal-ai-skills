$ErrorActionPreference = 'Stop'
$RepoUrl = 'https://github.com/jepotes/universal-ai-skills.git'
$TargetDir = 'ai-skills'

Write-Host 'Universal AI Skills installer'
Write-Host '-----------------------------'

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Error 'Git is required. Install Git and run this installer again.'
    exit 1
}

if (!(Test-Path '.ai')) {
    New-Item -ItemType Directory -Path '.ai' | Out-Null
}

if (!(Test-Path $TargetDir)) {
    git clone $RepoUrl $TargetDir
} else {
    Push-Location $TargetDir
    git pull
    Pop-Location
}

$files = @('CLAUDE.md', 'AGENTS.md', 'CODEX.md', 'GEMINI.md', 'WINDSURF.md')
foreach ($file in $files) {
    $source = Join-Path $TargetDir $file
    if (Test-Path $source) {
        Copy-Item $source $file -Force
    }
}

Copy-Item "$TargetDir\.ai\project.json" '.ai\project.json' -Force

if (!(Test-Path 'scripts')) {
    New-Item -ItemType Directory -Path 'scripts' | Out-Null
}

Copy-Item "$TargetDir\scripts\update-project.ps1" 'scripts\update-project.ps1' -Force
Copy-Item "$TargetDir\scripts\doctor.ps1" 'scripts\doctor.ps1' -Force

Write-Host ''
Write-Host 'Installation completed.'
Write-Host 'Open this folder with your AI assistant.'
Write-Host 'Recommended first prompt:'
Write-Host 'Read CLAUDE.md, AGENTS.md and .ai/project.json before working. Use ./ai-skills when relevant.'
