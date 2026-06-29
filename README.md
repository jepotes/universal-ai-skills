# Universal AI Skills

**Install once. Use with any AI.**

Universal AI Skills is a simple, portable skill system for AI coding assistants. It helps every new project load the same reusable instructions, workflows, adapters and skill packs across tools like Claude Code, Codex CLI, Cursor, Gemini CLI, Windsurf, OpenCode and other AI assistants.

> One skill library. Any project. Any AI assistant.

---

## Why this exists

Every AI assistant has its own way of reading project instructions. Claude uses `CLAUDE.md`, many agents read `AGENTS.md`, Cursor uses rules, Codex can read project docs, and other tools use their own conventions.

Universal AI Skills gives you one standard structure and generates the files each AI needs.

---

## What it does

- Downloads your shared skill library into a project.
- Creates `.ai/project.json` with the active skills.
- Creates `CLAUDE.md`, `AGENTS.md`, `CODEX.md`, `GEMINI.md` and `WINDSURF.md`.
- Adds adapter files for different AI assistants.
- Supports Windows, Linux and macOS.
- Includes update and doctor scripts.
- Keeps each project connected to your central skills repository.

---

## Supported assistants

| Assistant | Status | Generated files |
|---|---:|---|
| Claude Code | ✅ | `CLAUDE.md`, `.claude/skills` ready path |
| Codex CLI | ✅ | `CODEX.md`, `AGENTS.md` |
| Cursor | ✅ | `.cursor/rules` |
| Gemini CLI | ✅ | `GEMINI.md` |
| Windsurf | ✅ | `WINDSURF.md` |
| Generic agents | ✅ | `AGENTS.md`, `.ai/project.json` |

---

## Install in a project

Run one of these commands inside any project folder.

### Windows PowerShell

```powershell
irm https://raw.githubusercontent.com/jepotes/universal-ai-skills/main/scripts/install-project.ps1 | iex
```

If Windows blocks scripts:

```powershell
powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/jepotes/universal-ai-skills/main/scripts/install-project.ps1 | iex"
```

### Linux

```bash
curl -fsSL https://raw.githubusercontent.com/jepotes/universal-ai-skills/main/scripts/install-project.sh | bash
```

### macOS

```bash
curl -fsSL https://raw.githubusercontent.com/jepotes/universal-ai-skills/main/scripts/install-project.sh | bash
```

---

## Quick start

```bash
mkdir my-new-project
cd my-new-project
curl -fsSL https://raw.githubusercontent.com/jepotes/universal-ai-skills/main/scripts/install-project.sh | bash
```

Then open the folder with your AI assistant and say:

```text
Read the project instructions and load the skills defined in .ai/project.json before working.
```

---

## Windows quick start

```cmd
mkdir C:\xampp\htdocs\proyectosia\my-new-project
cd /d C:\xampp\htdocs\proyectosia\my-new-project
powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/jepotes/universal-ai-skills/main/scripts/install-project.ps1 | iex"
code .
```

---

## Files created in each project

```text
my-project/
├── ai-skills/              # cloned central skill library
├── .ai/
│   └── project.json        # active skill config
├── CLAUDE.md               # Claude Code instructions
├── AGENTS.md               # generic agent instructions
├── CODEX.md                # Codex instructions
├── GEMINI.md               # Gemini instructions
├── WINDSURF.md             # Windsurf instructions
└── .cursor/
    └── rules/
        └── universal-ai-skills.mdc
```

---

## Update skills in a project

### Windows

```powershell
.\ai-skills\scripts\update-project.ps1
```

### Linux/macOS

```bash
bash ./ai-skills/scripts/update-project.sh
```

---

## Check installation

### Windows

```powershell
.\ai-skills\scripts\doctor.ps1
```

### Linux/macOS

```bash
bash ./ai-skills/scripts/doctor.sh
```

---

## Skill format

Each skill uses a universal format:

```text
skills/category/skill-name/
├── skill.md
├── metadata.json
├── README.md
├── prompts/
├── examples/
└── templates/
```

Example `metadata.json`:

```json
{
  "id": "design.ui-ux-pro-max",
  "name": "UI UX Pro Max",
  "category": "design",
  "version": "1.0.0",
  "entry": "skill.md",
  "tags": ["ui", "ux", "design-system", "frontend"],
  "adapters": ["claude", "codex", "cursor", "gemini", "windsurf", "generic"]
}
```

---

## Recommended project prompt

After installation, tell your AI:

```text
Before coding, read CLAUDE.md, AGENTS.md and .ai/project.json. Load the matching skills from ./ai-skills/skills and use the adapters for this assistant.
```

---

## Roadmap

- CLI command: `uask init`, `uask install`, `uask update`.
- Marketplace/catalog website.
- Skill validation and publishing.
- More adapters.
- Skill packs for fullstack, design, automation, marketing and SaaS.

---

## Repository

Main repository:

```text
https://github.com/jepotes/universal-ai-skills.git
```
