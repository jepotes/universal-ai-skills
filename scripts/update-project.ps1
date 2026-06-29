$ErrorActionPreference = 'Stop'

if (!(Test-Path 'ai-skills')) {
    Write-Error 'ai-skills folder not found. Run the installer first.'
    exit 1
}

Push-Location ai-skills
git pull
Pop-Location

Write-Host 'Universal AI Skills updated.'
