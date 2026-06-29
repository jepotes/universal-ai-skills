if (!(Test-Path "ai-skills")) { Write-Host "ai-skills not found. Run install first."; exit 1 }
git -C ai-skills pull
Write-Host "Universal AI Skills updated."
