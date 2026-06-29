# Usage Guide

## Basic usage

After running the installer in a project, the AI assistant should read:

- `CLAUDE.md`
- `AGENTS.md`
- `.ai/project.json`
- the skill files under `ai-skills/skills`

## How to select skills

Edit `.ai/project.json` inside your project:

```json
{
  "skills": [
    "design.ui-ux-pro-max"
  ],
  "packs": [
    "design"
  ]
}
```

## How to ask the AI to use them

Use this prompt:

```text
Before answering, read .ai/project.json and load all selected skills from ./ai-skills. Use those skills as project rules.
```

## Updating skills

Windows:

```powershell
.\ai-skills\scripts\update-project.ps1
```

Linux/macOS:

```bash
bash ./ai-skills/scripts/update-project.sh
```
