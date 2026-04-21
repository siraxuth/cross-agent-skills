# Surface Selection

Use this file when deciding which agent-facing files need updates.

## Update `.agents/skills/` when

- the pattern should be portable across tools
- the example is meant to be a shared central skill

## Update `AGENTS.md` when

- repo-wide instructions changed
- multiple agents should inherit a short shared summary

## Update `GEMINI.md` when

- Gemini CLI-specific repo context changed
- the workflow for Gemini CLI users changed materially

## Update `frontend-setup-standards.md` when

- the repository's default frontend stack changed
- version policy changed
- component source policy changed
- motion or client-JS performance rules changed

## Update `.github/` when

- Copilot repo instructions, skill examples, or custom agents changed

## Update `.windsurf/` when

- Windsurf skills or workflows should reflect the new behavior
- Windsurf rules should reflect always-on frontend/setup constraints

## Update `README.md` when

- discoverability changed
- a new prominent example surface was added
