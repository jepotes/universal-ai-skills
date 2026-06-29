# Usage

After installation, open the project with your AI assistant.

Recommended first prompt:

```text
Read CLAUDE.md, AGENTS.md and .ai/project.json before working. Use the skills from ./ai-skills when relevant.
```

## Update

Windows:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/update-project.ps1
```

Linux/macOS:

```bash
bash scripts/update-project.sh
```

## Check

Windows:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/doctor.ps1
```

Linux/macOS:

```bash
bash scripts/doctor.sh
```
