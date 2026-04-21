# Windsurf Control Surfaces

Use this file when deciding whether the user needs Modes, Rules, `AGENTS.md`, Skills, Workflows, or MCP.

## Modes

Modes affect how Cascade should work right now.

- **Code**: autonomous file edits and command execution
- **Plan**: investigate and produce an implementation plan before code changes
- **Ask**: read-only exploration and questions

Choose a mode based on the current task, not as a repository-wide customization.

## Rules

Rules are persistent behavioral instructions.

Best for:

- coding conventions
- tool preferences
- safety constraints
- team policies

Use small focused rules instead of one large omnibus rule.

## `AGENTS.md`

`AGENTS.md` is for directory-scoped repo guidance.

Best for:

- local architecture rules
- per-directory test commands
- naming and file structure conventions
- subproject-specific expectations

Use it when scope should follow file location automatically.

## Skills

Skills are reusable specialized workflows with progressive disclosure.

Best for:

- complex multi-step procedures
- tasks needing scripts, templates, or references
- repeatable engineering processes

## Workflows

Workflows are manual slash-command runbooks.

Best for:

- deploys
- release procedures
- PR triage
- one-shot operational routines

If the behavior should auto-trigger, use a skill instead.

## MCP

MCP is for external tools and data.

Best for:

- GitHub
- docs
- databases
- internal services

## Selection Shortcut

Use:

- Mode -> "how should Cascade behave right now?"
- Rule -> "what always-on behavior should it follow?"
- `AGENTS.md` -> "what guidance should apply in this directory?"
- Skill -> "what reusable specialized task should Cascade auto-load?"
- Workflow -> "what manual slash command should run a known sequence?"
- MCP -> "what real external capability does Cascade need?"
