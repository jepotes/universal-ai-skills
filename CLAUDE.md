# Claude Code Instructions

This project uses Universal AI Skills.

Before answering or coding:

1. Read `.ai/project.json`.
2. Locate the skills repository:
   - Use `./ai-skills` if it exists.
   - Otherwise use the current repository root.
3. Read `registry.json` and `sources.json`.
4. Load all packs and skills declared in `.ai/project.json`.
5. Apply the loaded skills before making implementation decisions.

## Claude-specific behavior

- Treat each loaded `skill.md` as persistent project instruction.
- Use `metadata.json` to understand skill purpose, category, tags and adapters.
- If multiple skills apply, combine them in this order: core, methodology, design, frontend, backend, automation, marketing, business, testing.
- Keep changes simple, auditable and easy to maintain.

## When working in a new project

If the user asks to initialize Universal AI Skills, run the installer appropriate to the OS or create the following files manually:

```text
.ai/project.json
CLAUDE.md
AGENTS.md
CODEX.md
GEMINI.md
WINDSURF.md
.cursor/rules/universal-ai-skills.mdc
```
