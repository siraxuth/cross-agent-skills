# Sync Agent Surfaces

Description: Roll out a repository change consistently across cross-agent instruction surfaces so the examples for Codex, Copilot, Windsurf, Gemini CLI, and shared agents stay aligned.

## Steps

1. Determine the source-of-truth change.
2. List which surfaces are affected:
   - `.agents/skills/`
   - `AGENTS.md`
   - `GEMINI.md`
   - `.github/`
   - `.windsurf/`
   - `README.md`
3. Update only the affected surfaces.
4. Keep short instruction files short; keep workflow depth in skills and references.
5. Summarize what changed and note any surfaces intentionally left untouched.
