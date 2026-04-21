---
name: repo-skill-maintainer
description: Maintain and expand the my-skills repository across agents. Use this whenever the task is to add a new skill, deepen an existing skill with references, improve trigger descriptions, add or sync AGENTS.md / GEMINI.md / Copilot / Windsurf example files, or update README discoverability for this repository.
---

# Repo Skill Maintainer

This is the cross-agent version of the repository maintenance skill.

Use it when working inside the `my-skills` repository and the task touches one or more of:

- `skills/<name>/SKILL.md`
- `skills/<name>/references/`
- root `AGENTS.md`
- root `GEMINI.md`
- `.github/`
- `.windsurf/`
- `.agents/`
- `README.md`

## Primary workflow

1. Identify the target skill or agent surface
2. Read the relevant `SKILL.md` and only the necessary `references/*.md`
3. Keep the main skill concise; move depth into references
4. Update agent-facing example files if the change affects real-world usage
5. Update discovery docs such as `README.md` if the public surface changed

## Read These Files As Needed

- `references/repo-map.md` -> where each agent-facing surface lives in this repo
- `references/edit-checklist.md` -> execution checklist for skill maintenance work
- `references/cross-agent-sync.md` -> how to keep `.agents`, `.github`, `.windsurf`, `AGENTS.md`, and `GEMINI.md` aligned without duplicating responsibilities badly

## Working rules

- Treat `skills/<name>/SKILL.md` as decision logic, not a dumping ground
- Add `references/*.md` when depth is needed
- Prefer `.agents/skills` for examples that should travel across agents
- Prefer `.github/` and `.windsurf/` for agent-native examples
- Avoid unrelated edits
- If validators cannot run locally, do a manual structural sanity check and say so explicitly
