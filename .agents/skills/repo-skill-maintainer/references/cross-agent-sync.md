# Cross-Agent Sync

Use this file when the same repository change should be reflected across multiple agent surfaces.

## Sync order

1. Update the source skill under `skills/`
2. Update `.agents/skills/` if the pattern should be portable
3. Update agent-native examples:
   - `.github/`
   - `.windsurf/`
4. Update root `AGENTS.md` / `GEMINI.md` if repo-wide behavior changed
5. Update `README.md` if users need to discover the new surface

## Avoid bad duplication

Do not copy the exact same long instructions into every surface.

Prefer this split:

- source of truth workflow -> `skills/`
- cross-agent reusable example -> `.agents/skills/`
- GitHub-native wiring -> `.github/`
- Windsurf-native wiring -> `.windsurf/`
- repo-wide behavioral summary -> `AGENTS.md` / `GEMINI.md`

## What should stay short

- `AGENTS.md`
- `GEMINI.md`
- `.github/copilot-instructions.md`

Those files should point behavior, not contain the full workflow pack.
