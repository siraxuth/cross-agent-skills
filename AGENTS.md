# Repository Agent Guide

This repository is a cross-agent skill library. Treat it as a content-and-structure repo, not a normal application.

## What lives where

- `skills/<name>/` contains the main distributable skills
- `skills/<name>/references/` contains deep reference material that should be read only when needed
- `.github/` contains GitHub Copilot-ready examples for immediate repo use
- `.windsurf/` contains Windsurf-ready examples for immediate repo use, including workflow packs
- `.agents/skills/` contains central cross-agent skill examples
- root `AGENTS.md` and `GEMINI.md` provide shared repo behavior for agents that support them
- `frontend-setup-standards.md` defines the mandatory frontend/setup standards for agent examples in this repository

## When editing skills

- Keep `SKILL.md` focused on decision logic and workflow
- Push deeper detail into `references/` instead of bloating the main file
- Prefer task-oriented references over generic notes
- Keep trigger text in frontmatter specific enough to avoid accidental over-triggering
- If you add or remove a top-level skill, update `README.md`

## Editing rules

- Use ASCII unless an existing file already uses non-ASCII for a clear reason
- Preserve repo structure; do not move or rename skill folders casually
- Do not revert unrelated user changes in the worktree
- If validation tooling is missing from the environment, do a lightweight manual check and say so explicitly

## Frontend and Setup Rules

When an agent is doing frontend implementation or project setup, it must follow `frontend-setup-standards.md`.

That includes:

- using the latest stable releases compatible with the current Node.js LTS
- using shadcn/ui as the primary UI foundation
- using Magic UI, React Bits, Aceternity UI, and 21st.dev selectively as source material
- using Dribbble as inspiration only
- keeping motion polished but lightweight
- minimizing client JavaScript
- splitting work into clean components instead of one large file

## Example surfaces in this repo

- For Codex and other cross-agent systems, use this `AGENTS.md`
- For Gemini CLI, also check root `GEMINI.md`
- For GitHub Copilot, check `.github/copilot-instructions.md`, `.github/instructions/`, `.github/skills/`, and `.github/agents/`
- For Windsurf, check `.windsurf/skills/`, `.windsurf/workflows/`, and `.windsurf/rules/`
- For portable examples across agents, check `.agents/skills/`

## Good outputs

Good changes in this repo usually include:

- the skill change itself
- supporting references if the skill got deeper
- example agent-facing files if the change affects real-world usage
- README updates when discoverability changed
