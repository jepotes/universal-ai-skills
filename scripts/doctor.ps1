$ok = $true
$required = @('ai-skills', '.ai/project.json', 'CLAUDE.md', 'AGENTS.md')
foreach ($item in $required) {
    if (Test-Path $item) {
        Write-Host "OK  $item"
    } else {
        Write-Host "MISS $item"
        $ok = $false
    }
}

if ($ok) {
    Write-Host 'Universal AI Skills is ready.'
} else {
    Write-Host 'Some files are missing. Run the installer again.'
    exit 1
}
