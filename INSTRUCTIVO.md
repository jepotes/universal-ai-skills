# Instructivo Universal AI Skills

Este instructivo explica cómo subir, instalar y usar Universal AI Skills.

## 1. Subir esta versión al repo

Tu repo local está en:

```text
C:\xampp\htdocs\proyectosia\universal-ai-skills
```

Tu repo remoto es:

```text
https://github.com/jepotes/universal-ai-skills.git
```

Pasos:

1. Descomprimir el ZIP.
2. Copiar el contenido de `universal-ai-skills-pro` dentro de:

```text
C:\xampp\htdocs\proyectosia\universal-ai-skills
```

3. Ejecutar en CMD:

```cmd
cd /d C:\xampp\htdocs\proyectosia\universal-ai-skills
git add .
git commit -m "Upgrade Universal AI Skills professional installers"
git push
```

## 2. Instalar en un proyecto nuevo en Windows

```cmd
mkdir C:\xampp\htdocs\proyectosia\mi-proyecto
cd /d C:\xampp\htdocs\proyectosia\mi-proyecto
powershell -ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/jepotes/universal-ai-skills/main/scripts/install-project.ps1 | iex"
code .
```

## 3. Instalar en Linux

```bash
mkdir mi-proyecto
cd mi-proyecto
curl -fsSL https://raw.githubusercontent.com/jepotes/universal-ai-skills/main/scripts/install-project.sh | bash
```

## 4. Instalar en macOS

```bash
mkdir mi-proyecto
cd mi-proyecto
curl -fsSL https://raw.githubusercontent.com/jepotes/universal-ai-skills/main/scripts/install-project.sh | bash
```

## 5. Cómo usarlo con la IA

Después de instalar, abrir el proyecto con Claude Code, Cursor, Codex, Gemini, Windsurf u otra IA y escribir:

```text
Lee CLAUDE.md, AGENTS.md y .ai/project.json. Carga las skills seleccionadas desde ./ai-skills/skills antes de trabajar.
```

## 6. Qué archivos crea

```text
mi-proyecto/
├── ai-skills/
├── .ai/project.json
├── CLAUDE.md
├── AGENTS.md
├── CODEX.md
├── GEMINI.md
├── WINDSURF.md
└── .cursor/rules/universal-ai-skills.mdc
```

## 7. Actualizar skills

Windows:

```powershell
.\ai-skills\scripts\update-project.ps1
```

Linux/macOS:

```bash
bash ./ai-skills/scripts/update-project.sh
```

## 8. Verificar instalación

Windows:

```powershell
.\ai-skills\scripts\doctor.ps1
```

Linux/macOS:

```bash
bash ./ai-skills/scripts/doctor.sh
```
