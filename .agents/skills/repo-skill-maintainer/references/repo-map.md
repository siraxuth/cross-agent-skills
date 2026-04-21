# Repo Map

Use this file when the maintenance task involves multiple agent-facing surfaces.

## Core skill content

- `skills/<name>/SKILL.md`
- `skills/<name>/references/`

## Cross-agent shared surfaces

- `.agents/skills/`
- root `AGENTS.md`
- root `GEMINI.md`
- `frontend-setup-standards.md`

## GitHub Copilot surfaces

- `.github/copilot-instructions.md`
- `.github/instructions/`
- `.github/skills/`
- `.github/agents/`

## Windsurf surfaces

- `.windsurf/skills/`
- `.windsurf/workflows/`
- `.windsurf/rules/`

## Discovery

- `README.md`

## Use this map to decide scope

If the change is:

- cross-agent and portable -> update `.agents/skills/` first
- GitHub-native -> update `.github/`
- Windsurf-native -> update `.windsurf/`
- repo-wide behavior -> update `AGENTS.md` and possibly `GEMINI.md`
