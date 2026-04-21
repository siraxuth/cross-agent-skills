# Sync Rules

Use this file when a change must be reflected across multiple agent ecosystems.

## Preferred sync order

1. `skills/`
2. `.agents/skills/` if the pattern should be portable
3. `.github/`
4. `.windsurf/`
5. `AGENTS.md` / `GEMINI.md` if repo-wide summaries changed
6. `README.md` if discoverability changed

## Duplication policy

Do not copy a long workflow verbatim into every surface.

Use:

- skill + references for depth
- short agent-native instruction files for wiring
- README for discovery only
