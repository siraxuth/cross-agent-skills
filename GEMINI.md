# Gemini CLI Context

This repository packages reusable cross-agent skills. When working here:

- treat `skills/` as the source of truth
- use `references/` files for depth instead of growing `SKILL.md` indefinitely
- keep edits surgical and preserve existing folder names
- update `README.md` if you add/remove prominently exposed skills
- when doing frontend or setup work, follow `frontend-setup-standards.md`

## Preferred workflow

1. Inspect the target skill folder first
2. Read only the relevant `references/*.md` files
3. Edit `SKILL.md` and bundled resources together when the workflow changes
4. If the request is about real-world usage, update the example files under `.agents/`, `.github/`, `.windsurf/`, or root instruction files

## Frontend defaults

For frontend/setup tasks in this repository's examples:

- use the latest stable React, Next.js, and Tailwind CSS releases compatible with the current Node.js LTS
- use shadcn/ui as the baseline component system
- use Magic UI, React Bits, Aceternity UI, and 21st.dev selectively
- keep motion performant and respect reduced motion
- avoid over-hydrating the client
- split implementations into clean components

## Repo-specific cautions

- This worktree may already contain unrelated user changes
- validation helpers may not run if local dependencies are missing
- document any verification gap instead of claiming a full validation run
