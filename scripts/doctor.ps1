Write-Host "Universal AI Skills Doctor" -ForegroundColor Cyan

$checks = @(
    "ai-skills",
    ".ai\project.json",
    "CLAUDE.md",
    "AGENTS.md",
    "CODEX.md",
    "GEMINI.md",
    "WINDSURF.md"
)

foreach ($check in $checks) {
    if (Test-Path $check) {
        Write-Host "OK  $check" -ForegroundColor Green
    } else {
        Write-Host "MISS $check" -ForegroundColor Yellow
    }
}

if (Get-Command git -ErrorAction SilentlyContinue) {
    Write-Host "OK  git" -ForegroundColor Green
} else {
    Write-Host "MISS git" -ForegroundColor Red
}
