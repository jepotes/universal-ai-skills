# AGENTS.md

Este proyecto usa **Universal AI Skills Hub**.

## Qué debe hacer cualquier agente

1. Leer `.ai/project.json` antes de trabajar.
2. Revisar `registry.json` para identificar las skills disponibles.
3. Cargar solo las skills necesarias para la tarea.
4. No copiar contenido externo sin revisar licencia.
5. Hacer cambios simples, verificables y bien justificados.
6. Para features nuevas, usar flujo: objetivo → alcance → plan → tareas → implementación → verificación.

## Carga recomendada

- Código general: `core.karpathy-principles`, `methodology.ponytail`.
- Feature o proyecto nuevo: `methodology.spec-kit`, `methodology.gstack`.
- UI/UX, landing, frontend visual o design system: `design.ui-ux-pro-max`.
- QA, seguridad, review o shipping: `methodology.gstack`.
- Web/automatizaciones: `vercel.agent-skills` cuando aplique.
- WhatsApp, n8n, webhooks o API: `integrations.openwa` solo como integración técnica.

## Regla principal

Usar las skills para mejorar el trabajo, no para complicarlo. Si una skill agrega complejidad innecesaria, aplicar la solución más simple que cumpla el objetivo.
