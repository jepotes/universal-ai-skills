$checks = @("ai-skills", ".ai/project.json", "CLAUDE.md", "AGENTS.md")
$ok = $true
foreach ($c in $checks) {
  if (Test-Path $c) { Write-Host "OK $c" } else { Write-Host "MISSING $c"; $ok = $false }
}
if (!$ok) { exit 1 }
