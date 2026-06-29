# Universal AI Skills Hub

**Una biblioteca simple para instalar y reutilizar skills de IA en cualquier proyecto.**

Sirve para trabajar con Claude Code, Codex, Cursor, Gemini, Copilot, Windsurf, Aider u otros asistentes sin tener que copiar prompts manualmente cada vez.

## Qué hace

Este repo centraliza skills, metodologías, comandos e integraciones de distintos autores en un solo lugar.

En vez de explicar lo mismo en cada proyecto, instalás este hub una vez y después cada proyecto declara qué skills necesita en `.ai/project.json`.

Ejemplos de uso:

- Mejorar cómo una IA programa y revisa código.
- Cargar reglas de diseño UI/UX automáticamente.
- Usar flujos de especificación antes de implementar features.
- Reutilizar metodologías de QA, seguridad, revisión y shipping.
- Integrar herramientas como WhatsApp, n8n, Docker o APIs cuando el proyecto lo necesite.

## Por qué es interesante

Los agentes de IA funcionan mejor cuando tienen contexto, reglas y métodos claros. Este repo permite:

- instalar skills una sola vez;
- reutilizarlas en todos tus proyectos;
- mantener fuentes originales como submódulos Git;
- respetar licencias y autores;
- tener una estructura compatible con varias IA;
- crear packs por tipo de trabajo: `core`, `design`, `fullstack`, `automation`, `marketing`, etc.

## Instalación rápida

```bash
unzip universal-ai-skills.zip
cd universal-ai-skills
chmod +x scripts/*.sh
./scripts/bootstrap.sh
./scripts/sync-sources.sh
```

## Subirlo a GitHub

Creá un repo vacío en GitHub, por ejemplo:

```text
github.com/TU_USUARIO/universal-ai-skills
```

Luego ejecutá:

```bash
git init
git add .
git commit -m "Initial Universal AI Skills Hub"
git branch -M main
git remote add origin https://github.com/TU_USUARIO/universal-ai-skills.git
git push -u origin main
```

## Usarlo en todos tus proyectos

Desde cualquier proyecto:

```bash
/path/to/universal-ai-skills/scripts/install-project.sh .
```

Eso crea:

```text
.ai/project.json
AGENTS.md
CLAUDE.md
```

Después editás `.ai/project.json` y elegís las skills que ese proyecto usará.

## Instalar para Claude Code

```bash
./scripts/install-claude.sh
```

Instala vínculos en:

```text
~/.claude/skills/
```

## Instalar para Codex / agentes tipo AGENTS.md

```bash
./scripts/install-codex.sh
```

Genera un adaptador simple basado en `AGENTS.md`.

## Estructura

```text
universal-ai-skills/
├── README.md
├── registry.json              # Índice universal de skills
├── sources.json               # Repos externos y autores
├── AGENTS.md                  # Instrucciones para agentes compatibles
├── CLAUDE.md                  # Instrucciones para Claude Code
├── .ai/project.json           # Configuración de este repo
├── adapters/                  # Adaptadores por IA
├── external/                  # Repos externos como submódulos
├── packs/                     # Packs de skills listas para usar
├── scripts/                   # Instalación y sincronización
├── skills/                    # Skills propias o normalizadas
└── templates/                 # Plantillas para nuevas skills
```

## Fuentes externas incluidas

| Fuente | Uso |
|---|---|
| `multica-ai/andrej-karpathy-skills` | Principios para programar mejor con IA |
| `DietrichGebert/ponytail` | Pack de skills/comandos para agentes |
| `vercel-labs/agent-skills` | Colección de Agent Skills |
| `garrytan/gstack` | QA, seguridad, review, shipping y metodología |
| `github/spec-kit` | Desarrollo guiado por especificaciones |
| `nextlevelbuilder/ui-ux-pro-max-skill` | UI/UX, design systems, branding y frontend visual |
| `rmyndharis/OpenWA` | Integración WhatsApp/API/n8n, no como skill pura |

## Packs recomendados

```text
core        → reglas base para cualquier agente
design      → UI/UX, accesibilidad, branding y frontend visual
methodology → specs, QA, review, seguridad y shipping
automation  → n8n, WhatsApp, webhooks, APIs y flujos automáticos
fullstack   → desarrollo web completo
marketing   → copywriting, SEO, ads, contenido y conversión
```

## Crear una nueva skill

```bash
cp -R templates/skill-template skills/mi-categoria/mi-skill
```

O usar la plantilla mínima:

```text
skills/mi-categoria/mi-skill/
├── skill.md
├── metadata.json
├── prompts/
├── examples/
└── templates/
```

## Licencias

Este repo no se apropia de las skills originales. Los repos en `external/` pertenecen a sus autores y conservan sus licencias. Revisá cada licencia antes de redistribuir o modificar contenido externo.
