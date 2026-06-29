# Instructivo rápido

Este instructivo es para usuarios que quieren instalar Universal AI Skills en un proyecto y empezar a usarlo con una IA.

## 1. Abrir la carpeta del proyecto

Entrá a la carpeta donde vas a trabajar.

Ejemplo en Windows:

```powershell
cd C:\xampp\htdocs\proyectosia\mi-proyecto
```

Ejemplo en Linux/macOS:

```bash
cd ~/proyectos/mi-proyecto
```

## 2. Instalar Universal AI Skills

### Windows

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

## 3. Abrir el proyecto con tu IA

Abrí esa carpeta con:

- Claude Code
- Codex CLI
- Cursor
- Gemini CLI
- Windsurf
- Otra IA compatible

## 4. Primer mensaje recomendado para la IA

```text
Lee primero CLAUDE.md, AGENTS.md y .ai/project.json. Usá las skills disponibles en ./ai-skills cuando correspondan.
```

## 5. Actualizar las skills

### Windows

```powershell
powershell -ExecutionPolicy Bypass -File scripts/update-project.ps1
```

### Linux/macOS

```bash
bash scripts/update-project.sh
```

## 6. Verificar instalación

### Windows

```powershell
powershell -ExecutionPolicy Bypass -File scripts/doctor.ps1
```

### Linux/macOS

```bash
bash scripts/doctor.sh
```

## Qué hace la instalación

La instalación:

1. Descarga el repo `https://github.com/jepotes/universal-ai-skills.git` dentro de `ai-skills/`.
2. Crea la carpeta `.ai/`.
3. Copia los archivos de instrucciones para distintas IA.
4. Deja el proyecto listo para usar skills compartidas.
