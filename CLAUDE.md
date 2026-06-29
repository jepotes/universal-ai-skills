# CLAUDE.md

This project uses Universal AI Skills.

## Claude Code instructions

Before answering or coding:

1. Read `.ai/project.json`.
2. Load selected skills from `./ai-skills/skills` when inside an installed project.
3. If this is the central skills repo, load from `./skills`.
4. Use `registry.json` to resolve skill ids.
5. Use `packs/*.json` to resolve packs.
6. Prefer concise, practical implementation.

## Active behavior

- Treat skills as project-level operating instructions.
- Use adapter files when available.
- Do not invent unavailable skills.
- If a skill is missing, say which one is missing and continue with the closest available generic behavior.
