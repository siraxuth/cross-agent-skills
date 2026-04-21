# Codex Repo Customization

Use this file when the user wants Codex to behave better inside a repository.

## Primary Repo Controls

### `AGENTS.md`

Use for persistent instructions Codex should follow while working:

- architecture boundaries
- naming rules
- build and test commands
- review expectations
- MCP usage preferences

Prefer one root file plus nested files only where subdirectories genuinely differ.

### Skills

Use skills when the repo has repeatable specialized work that benefits from:

- checklists
- scripts
- templates
- references

Typical examples:

- release workflows
- security reviews
- API migration playbooks

### MCP

Use MCP when Codex needs access to external systems:

- docs
- GitHub / issue trackers
- internal APIs
- browser or automation tools

Instructions do not replace tools. If the task requires real external capability, use MCP.

## OpenAI Docs MCP

If the user is working with OpenAI APIs or Codex itself:

- prefer the OpenAI Docs MCP over answering from memory
- if the repo already uses MCP, add a short instruction in `AGENTS.md` telling the agent to consult the OpenAI docs server for OpenAI-specific questions

## Sandboxing and Internet Access

Codex cloud tasks should follow least privilege:

- keep internet off unless necessary
- allowlist only required domains and methods
- review outputs carefully if external content was involved

If the user is configuring internet access, be explicit about the security tradeoff.

## Good Repo Pattern

Use this layering:

1. `AGENTS.md` for always-on repo guidance
2. skills for specialized procedures
3. MCP for external systems

Avoid putting all three layers' content into one file.

## Anti-Patterns

Do not:

- put long runbooks directly in `AGENTS.md`
- encode secrets or machine-specific paths in shared instructions
- use a skill for a one-line rule
- use MCP for content that belongs in a committed markdown file
