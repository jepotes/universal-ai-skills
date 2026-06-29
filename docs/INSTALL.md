# Installation Guide

This guide explains how to install Universal AI Skills in any project.

## Requirements

You need:

- Git
- Internet access
- One shell:
  - PowerShell on Windows
  - Bash on Linux/macOS

## Install on Windows

Open PowerShell or CMD inside your project folder and run:

```powershell
powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/jepotes/universal-ai-skills/main/scripts/install-project.ps1 | iex"
```

## Install on Linux

```bash
curl -fsSL https://raw.githubusercontent.com/jepotes/universal-ai-skills/main/scripts/install-project.sh | bash
```

## Install on macOS

```bash
curl -fsSL https://raw.githubusercontent.com/jepotes/universal-ai-skills/main/scripts/install-project.sh | bash
```

## What the installer does

1. Creates `.ai/`.
2. Clones `https://github.com/jepotes/universal-ai-skills.git` into `ai-skills/`.
3. Copies assistant instruction files into your project.
4. Creates Cursor rules.
5. Prints next steps.

## After installation

Open the project with Claude Code, Cursor, Codex CLI, Gemini CLI, Windsurf or another assistant.

Tell the assistant:

```text
Read the project instructions and load the skills defined in .ai/project.json before working.
```
