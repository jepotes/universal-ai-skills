# Universal AI Skills

**Install once. Use with any AI.**

Universal AI Skills is an open, simple and portable skill system for AI coding assistants.
It lets you define reusable skills once and load them into different tools such as Claude Code, Codex CLI, Cursor, Gemini CLI, Windsurf, Copilot, OpenCode and other AI agents.

## What this does

Most AI tools use different instruction formats. One tool reads `CLAUDE.md`, another uses rules, another uses agent files, and another needs prompts copied manually.

Universal AI Skills solves that by giving you:

- One standard skill format: `metadata.json` + `skill.md`.
- One project config: `.ai/project.json`.
- One local skill folder: `ai-skills/`.
- Cross-platform installers for Windows, Linux and macOS.
- Starter adapters for Claude, Codex, Cursor, Gemini, Windsurf and generic agents.
- Packs for common workflows like design, fullstack, marketing and automation.

## Quick install in any project

### Windows PowerShell

Open your project folder and run:

```powershell
irm https://raw.githubusercontent.com/jepotes/universal-ai-skills/main/scripts/install-project.ps1 | iex
```

### Windows CMD

```cmd
powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/jepotes/universal-ai-skills/main/scripts/install-project.ps1 | iex"
```

### Linux/macOS

```bash
curl -fsSL https://raw.githubusercontent.com/jepotes/universal-ai-skills/main/scripts/install-project.sh | bash
```

## What gets installed in your project

```text
my-project/
├── ai-skills/              # This repo cloned locally
├── .ai/
│   └── project.json        # Skills selected for this project
├── CLAUDE.md               # Instructions for Claude Code
├── AGENTS.md               # Generic instructions for agents
├── CODEX.md                # Instructions for Codex-style agents
├── GEMINI.md               # Instructions for Gemini-style agents
├── WINDSURF.md             # Instructions for Windsurf-style agents
└── .cursor/
    └── rules/
        └── universal-ai-skills.mdc
```

## How to use it with an AI

After installing, open the project with your AI assistant and tell it:

> Read `CLAUDE.md`, `AGENTS.md` and `.ai/project.json` first. Load the skills from `./ai-skills` before coding or answering.

The assistant should use the selected skills as project-level instructions.

## Skill format

Each skill follows this structure:

```text
skills/category/skill-name/
├── metadata.json
├── skill.md
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
  "version": "1.0.0",
  "category": "design",
  "description": "Advanced UI/UX design skill for product interfaces and design systems.",
  "entry": "skill.md",
  "tags": ["ui", "ux", "design-system", "frontend"],
  "adapters": ["claude", "codex", "cursor", "gemini", "windsurf", "generic"]
}
```

## Project config

`.ai/project.json` controls which packs and skills are active:

```json
{
  "name": "my-project",
  "packs": ["design"],
  "skills": ["design.ui-ux-pro-max"],
  "assistants": ["claude", "codex", "cursor", "gemini", "windsurf", "generic"]
}
```

## External repositories

External repositories are referenced in `sources.json`. They should be added as Git submodules or synced into `external/` while keeping attribution and licenses.

Current planned sources:

- `multica-ai/andrej-karpathy-skills`
- `DietrichGebert/ponytail`
- `vercel-labs/agent-skills`
- `garrytan/gstack`
- `github/spec-kit`
- `nextlevelbuilder/ui-ux-pro-max-skill`
- `rmyndharis/OpenWA`

## Repository layout

```text
universal-ai-skills/
├── apps/                  # Future docs/website apps
├── packages/              # Future CLI, registry, adapters, SDK
├── skills/                # Normalized skills
├── packs/                 # Skill packs
├── registry/              # Registry data
├── external/              # External repos as submodules/clones
├── scripts/               # Install and sync scripts
├── templates/             # Reusable templates
├── schemas/               # JSON schemas
├── docs/                  # Documentation
└── examples/              # Example projects
```

## Roadmap

- v1: simple cross-platform installers and standard files.
- v2: CLI command `uask`.
- v3: adapter generation for every major AI tool.
- v4: public catalog and community registry.

## License

MIT for this repository unless otherwise stated. External repositories keep their own licenses.
