# Copilot Custom Agents and Skills

Use this file when the user wants more than plain instructions.

## Skills

Skills are best when:

- the task is specialized
- the agent needs templates, references, or scripts
- the behavior should auto-trigger when relevant

Examples:

- release preparation
- review comment triage
- API migration
- security review

## Custom Agents

Custom agents are best when:

- the user wants a named specialist
- tool access should be narrower or more intentional
- the workflow benefits from explicit agent selection

Examples:

- `skill-maintainer`
- `docs-reviewer`
- `security-auditor`

## When Not to Use Them

Do not create a custom agent or skill when a short repository instruction file would solve the problem cleanly.

Use the smallest surface that works.
