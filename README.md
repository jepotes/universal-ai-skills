# Universal AI Skills

> **Install once. Use with any AI.**

Universal AI Skills is a simple, open system for sharing reusable AI skills across projects and AI assistants.

Instead of rewriting the same instructions every time you start a project, install Universal AI Skills once inside the project and let your AI assistant load the right skills automatically.

## What it does

Universal AI Skills:

- Downloads the skills library into your project.
- Creates the basic AI configuration files.
- Adds instructions for common AI assistants.
- Keeps your skills updateable with one command.
- Works on Windows, Linux and macOS.

## Supported AI assistants

| Assistant | Status |
|---|---:|
| Claude Code | Supported |
| Codex CLI | Supported |
| Cursor | Supported |
| Gemini CLI | Supported |
| Windsurf | Supported |
| Generic AI agents | Supported |

## Quick install

Run the command inside the project folder where you want to use the skills.

### Windows PowerShell

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

## Alternative: clone manually

```bash
git clone https://github.com/jepotes/universal-ai-skills.git ai-skills
```

Then copy or reference the assistant files from the repository:

- `CLAUDE.md`
- `AGENTS.md`
- `CODEX.md`
- `GEMINI.md`
- `WINDSURF.md`
- `.ai/project.json`

## What gets installed in your project

After installation your project will contain:

```text
my-project/
├── ai-skills/              # Universal AI Skills library
├── .ai/
│   └── project.json        # Skills enabled for this project
├── CLAUDE.md               # Claude Code instructions
├── AGENTS.md               # Generic agent instructions
├── CODEX.md                # Codex CLI instructions
├── GEMINI.md               # Gemini CLI instructions
└── WINDSURF.md             # Windsurf instructions
```

## How to use it

1. Create or open a project folder.
2. Run the installer for your operating system.
3. Open the folder with Claude Code, Codex CLI, Cursor, Gemini CLI, Windsurf or another AI assistant.
4. Ask the assistant to read the project instructions if needed:

```text
Read CLAUDE.md, AGENTS.md and .ai/project.json before working. Use the skills from ./ai-skills when relevant.
```

## Update skills

### Windows

```powershell
powershell -ExecutionPolicy Bypass -File scripts/update-project.ps1
```

### Linux / macOS

```bash
bash scripts/update-project.sh
```

## Check installation

### Windows

```powershell
powershell -ExecutionPolicy Bypass -File scripts/doctor.ps1
```

### Linux / macOS

```bash
bash scripts/doctor.sh
```

## Available packs

| Pack | Description |
|---|---|
| `design` | UI/UX, design systems, accessibility and product interface guidance. |

More packs will be added over time.

## Skill format

Each skill follows a simple structure:

```text
skills/category/skill-name/
├── metadata.json
├── skill.md
├── README.md
└── examples/
```

## Project goal

Universal AI Skills aims to become a simple standard for reusable AI assistant skills:

- One skill format.
- Multiple AI assistants.
- Easy installation.
- Easy updates.
- Community-friendly structure.

## Repository

```text
https://github.com/jepotes/universal-ai-skills.git
```
