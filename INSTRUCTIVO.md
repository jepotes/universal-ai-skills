# Instructivo rápido

## Objetivo

Universal AI Skills permite preparar cualquier proyecto para que distintos asistentes de IA usen las mismas skills, reglas y configuraciones.

## Instalación rápida por sistema operativo

### Windows

Entrar a la carpeta del proyecto y ejecutar:

```powershell
powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/jepotes/universal-ai-skills/main/scripts/install-project.ps1 | iex"
```

### Linux / macOS

Entrar a la carpeta del proyecto y ejecutar:

```bash
curl -fsSL https://raw.githubusercontent.com/jepotes/universal-ai-skills/main/scripts/install-project.sh | bash
```

## Qué crea

```text
.ai/project.json
ai-skills/
CLAUDE.md
AGENTS.md
CODEX.md
GEMINI.md
WINDSURF.md
.cursor/rules/universal-ai-skills.mdc
```

## Cómo usarlo

Abrí el proyecto con tu IA y pedile:

```text
Lee las instrucciones del proyecto y usá las skills disponibles.
```

## Actualizar

### Windows

```powershell
powershell -ExecutionPolicy Bypass -File ai-skills/scripts/update-project.ps1
```

### Linux / macOS

```bash
bash ai-skills/scripts/update-project.sh
```

## Verificar instalación

### Windows

```powershell
powershell -ExecutionPolicy Bypass -File ai-skills/scripts/doctor.ps1
```

### Linux / macOS

```bash
bash ai-skills/scripts/doctor.sh
```
