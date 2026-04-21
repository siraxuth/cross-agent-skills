---
name: repo-skill-maintainer
description: Maintain and expand the skills in this repository. Use this whenever the task is to add a new skill, deepen an existing skill with references, improve trigger descriptions, add cross-agent example files, or update README/discoverability for the my-skills repository.
---

# Repo Skill Maintainer

This skill is for working inside the `my-skills` repository.

## Primary goals

When invoked:

1. Identify which skill or example surface is being changed
2. Keep `SKILL.md` concise and move depth into `references/`
3. Update example agent files when the change affects real-world usage
4. Update `README.md` if discovery changed

## Repository map

- `skills/` -> primary distributable skills
- `.github/skills/` -> Copilot-ready project skills
- `.windsurf/skills/` -> Windsurf-ready workspace skills
- `.agents/skills/` -> cross-agent reusable examples
- root `AGENTS.md` / `GEMINI.md` -> shared agent behavior

## Editing checklist

- Read the target skill folder first
- Read `references/` in this skill when the task spans multiple agent surfaces or needs a repeatable checklist
- Add `references/*.md` when the main skill is getting dense
- Keep frontmatter `description` sharp and trigger-oriented
- Avoid editing unrelated skills
- Mention verification limits if local validators cannot run

## Bundled References

- `references/repo-map.md` -> where each agent-facing surface lives
- `references/workflow-checklist.md` -> execution checklist for repo skill maintenance tasks
- `references/sync-rules.md` -> how to sync `.agents`, `.github`, `.windsurf`, `AGENTS.md`, `GEMINI.md`, and `README.md`
