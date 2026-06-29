# Universal AI Skills

> **Install once. Use with any AI.**

Universal AI Skills is a simple, open system for installing reusable AI skills inside any project.

Instead of repeating the same instructions every time you start a new project, you install Universal AI Skills once per project and your AI assistant can read the same shared skill registry.

## What it does

Universal AI Skills:

- installs a local `ai-skills/` folder inside your project;
- creates `.ai/project.json` with the active skill configuration;
- creates assistant files such as `CLAUDE.md`, `AGENTS.md`, `CODEX.md`, `GEMINI.md` and `WINDSURF.md`;
- adds Cursor rules when Cursor is detected;
- lets Claude Code, Codex CLI, Cursor, Gemini CLI, Windsurf and other assistants understand what skills are available;
- works on Windows, Linux and macOS.

## Quick install

Run the command inside the project where you want to use the skills.

### Windows

```powershell
powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/jepotes/universal-ai-skills/main/scripts/install-project.ps1 | iex"
```

### Linux / macOS

```bash
curl -fsSL https://raw.githubusercontent.com/jepotes/universal-ai-skills/main/scripts/install-project.sh | bash
```

## Optional CLI usage

After installation, you can also use the local CLI:

```bash
node ai-skills/packages/cli/uask.js init
node ai-skills/packages/cli/uask.js doctor
node ai-skills/packages/cli/uask.js update
```

## How to use it in a project

1. Create or open any project folder.
2. Run the installer for your operating system.
3. Open the project with Claude Code, Cursor, Codex CLI, Gemini CLI, Windsurf or another AI assistant.
4. Tell the assistant: `Read the project instructions and use the available skills.`

The assistant will find the generated files and the `ai-skills/` folder.

## Supported assistants

| Assistant | Status |
|---|---|
| Claude Code | Supported |
| Codex CLI | Supported |
| Cursor | Supported |
| Gemini CLI | Supported |
| Windsurf | Supported |
| Generic agents | Supported |

## Project structure after install

```text
my-project/
├── ai-skills/
├── .ai/
│   └── project.json
├── CLAUDE.md
├── AGENTS.md
├── CODEX.md
├── GEMINI.md
└── WINDSURF.md
```

## What is a skill?

A skill is a reusable instruction package for AI assistants.

```text
skills/category/skill-name/
├── metadata.json
├── skill.md
├── README.md
└── examples/
```

## Roadmap

- `uask install fullstack`
- `uask install marketing`
- `uask install automation`
- online skill catalog
- remote registry
- plugin marketplace
- assistant auto-detection improvements
