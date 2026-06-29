# How Universal AI Skills works

Universal AI Skills uses a simple local project pattern.

## 1. Install in a project

The installer clones this repository into:

```text
ai-skills/
```

## 2. Generate assistant files

It creates or updates:

```text
CLAUDE.md
AGENTS.md
CODEX.md
GEMINI.md
WINDSURF.md
.cursor/rules/universal-ai-skills.mdc
.ai/project.json
```

These files tell each AI assistant where the skills are and how to use them.

## 3. Load active skills

The assistant reads:

```text
.ai/project.json
ai-skills/registry.json
```

Then it loads only the skills listed as active.

## 4. Work normally

You continue working inside your project. The AI assistant now has shared reusable instructions.
