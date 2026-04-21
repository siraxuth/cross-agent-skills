# Copilot Instruction Surfaces

Use this file when deciding which GitHub Copilot customization file to create.

## `.github/copilot-instructions.md`

Use for broad repository guidance that should apply across most tasks.

Good for:

- general coding standards
- testing expectations
- project-wide conventions
- response style for the repository

## `.github/instructions/*.instructions.md`

Use for path-specific guidance.

These files can target globs with `applyTo` frontmatter.

Good for:

- frontend-only rules
- docs-only guidance
- generated-file handling
- API folder constraints

## `AGENTS.md`

Use when the instructions are meant for agentic workflows and you want cross-agent compatibility.

Good for:

- repo-wide agent behavior
- directory-scoped guidance
- shared instructions across Copilot, Codex, Windsurf, and Gemini-style agents

## Skills

Use when the task is reusable, specialized, and benefits from supporting resources.

Project locations may include:

- `.github/skills/`
- `.agents/skills/`

## Custom Agents

Use when the user wants a named specialist with a distinct prompt/tool scope.

Project location:

- `.github/agents/`

## Selection Shortcut

Use:

- `.github/copilot-instructions.md` for broad repo guidance
- `.github/instructions/*.instructions.md` for path-specific guidance
- `AGENTS.md` for cross-agent or location-scoped agent behavior
- skills for reusable procedures
- custom agents for named specialists
