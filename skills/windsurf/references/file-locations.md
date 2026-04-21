# Windsurf File Locations

Use this file when the user wants concrete file placement for Windsurf customization.

## Skills

Workspace skills:

- `.windsurf/skills/<skill-name>/SKILL.md`

Global skills:

- `~/.codeium/windsurf/skills/<skill-name>/SKILL.md`

Cross-agent compatible locations Windsurf can also discover:

- `.agents/skills/`
- `~/.agents/skills/`

## Workflows

Workspace workflows:

- `.windsurf/workflows/*.md`

Global workflows:

- `~/.codeium/windsurf/global_workflows/*.md`

## Rules

Workspace rules:

- `.windsurf/rules/*.md`

Global rules:

- `~/.codeium/windsurf/memories/global_rules.md`

## `AGENTS.md`

Put `AGENTS.md` directly in the directory whose scope you want.

Examples:

- `AGENTS.md` -> repo-wide
- `frontend/AGENTS.md` -> `frontend/**`
- `backend/payments/AGENTS.md` -> `backend/payments/**`

## Recommendation

If the user wants one reusable setup that works across multiple agents, prefer:

- root `AGENTS.md`
- `.agents/skills/...`

If they want Windsurf-native configuration first, prefer `.windsurf/...`.
