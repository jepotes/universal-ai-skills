# Universal AI Skills — Agent Instructions

This project uses Universal AI Skills.

Before working, every AI assistant must:

1. Read `.ai/project.json`.
2. Read `registry.json` and `sources.json`.
3. Load every skill declared in `.ai/project.json`.
4. If a pack is declared, load all skills listed in that pack.
5. Use the corresponding adapter guidance when available.
6. Prefer the project-local `./ai-skills` folder when this repo is installed inside another project.

## Skill loading order

1. Core project instructions.
2. Packs.
3. Individual skills.
4. Tool-specific adapter instructions.
5. User request.

## Behavior

- Do not invent skills that are not present.
- Do not copy external repository content without respecting license and attribution.
- When a requested capability is missing, suggest creating or adding a skill.
- Keep responses practical and action-oriented.
- Prefer simple installation and repeatable workflows.

## Active skill roots

When this repo is used directly:

```text
./skills
./packs
./registry.json
./sources.json
```

When installed inside another project:

```text
./ai-skills/skills
./ai-skills/packs
./ai-skills/registry.json
./ai-skills/sources.json
```
