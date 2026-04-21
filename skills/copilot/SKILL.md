---
name: copilot
description: "Customize and build workflows around GitHub Copilot. TRIGGER when: user mentions GitHub Copilot, Copilot CLI, Copilot cloud agent, agent mode in VS Code, `.github/copilot-instructions.md`, `.github/instructions/*.instructions.md`, `AGENTS.md` for Copilot, Copilot skills, custom agents, `.github/agents`, Copilot MCP, GitHub Models, or wants repo customizations that should work well in Copilot. SKIP: non-GitHub tooling with no Copilot angle, ordinary coding questions, or provider/API work that belongs to OpenAI/Claude/Gemini instead."
---

# Working with GitHub Copilot

Use this skill when the task is about **Copilot behavior, customization, agent workflows, or Copilot-adjacent GitHub AI tooling**.

The main Copilot surfaces are:

- repository custom instructions
- agent instructions
- skills
- custom agents
- MCP
- Copilot CLI / cloud agent / IDE agent mode

Pick the smallest surface that matches the request.

## Hard Rules

- Distinguish **Copilot Chat**, **Copilot CLI**, **Copilot cloud agent**, and **IDE agent mode**. They are related, but not identical.
- Do not invent repository file names. Use the official supported locations.
- Prefer **repo-scoped customizations** over machine-local settings when the behavior should be shared with the team.
- When exact feature support differs by client, state that explicitly.
- For Copilot cloud agent, remember that MCP support is narrower than local clients: cloud agent supports **MCP tools**, not MCP resources/prompts.

## First Classify the Request

### 1. Repo-Wide Behavior

Use when the user wants Copilot to generally behave differently across a repository.

Primary file:

- `.github/copilot-instructions.md`

Use this for:

- language/style preferences
- build/test expectations
- review expectations
- team conventions

### 2. Path-Specific Behavior

Use when the instructions should apply only to some files.

Primary location:

- `.github/instructions/*.instructions.md`

These files can use `applyTo` frontmatter to target globs.

Use this for:

- frontend-only conventions
- generated file policies
- API folder constraints
- docs-only guidance

### 3. Agent Instructions

Use when the user wants instructions aimed at AI agents specifically.

Primary files:

- `AGENTS.md`
- sometimes `CLAUDE.md` / `GEMINI.md` for compatible tools

For Copilot CLI, `AGENTS.md` is supported and can coexist with `.github/copilot-instructions.md`.

### 4. Skills

Use a skill when Copilot should be able to load a packaged workflow with supporting resources.

Supported project locations include:

- `.github/skills/`
- `.agents/skills/`
- `.claude/skills/`

Use skills for:

- release procedures
- specialized code reviews
- migration runbooks
- repo-specific audit workflows

### 5. Custom Agents

Use custom agents when the user wants a named specialist teammate with a distinct prompt/tool scope.

Typical locations:

- `.github/agents/`
- `~/.copilot/agents/`

Custom agents are markdown agent profiles with YAML frontmatter.

### 6. MCP

Use MCP when Copilot needs external tools or systems.

For Copilot CLI:

- config file: `~/.copilot/mcp-config.json`
- interactive command: `/mcp add`

Copilot CLI ships with the **GitHub MCP server** built in. Additional MCP servers are for non-GitHub capabilities.

## Choosing the Right Copilot Surface

### Use `.github/copilot-instructions.md` When

- the guidance is broad
- every repo task should see it
- the text is short and stable

Example:

- "Run targeted tests for touched packages before proposing completion."

### Use `.github/instructions/*.instructions.md` When

- only some paths need the guidance
- instructions differ materially across subtrees
- the repo has frontend/backend/docs/tests with different expectations

Example:

- apply React rules only to `apps/web/**`

### Use `AGENTS.md` When

- the guidance is specifically for agentic workflows
- you want location-based scoping
- the repo already uses cross-agent `AGENTS.md`

This is often the best choice when you want one instruction system to work across Copilot, Codex, Windsurf, Claude Code, and similar tools.

### Use Skills When

- the task is multi-step
- the agent needs scripts/templates/checklists
- you want progressive disclosure

### Use Custom Agents When

- the user wants a named specialist such as:
  - `refactor-agent`
  - `readme-agent`
  - `security-review-agent`
- tool restrictions or MCP attachments should differ by agent
- the user wants agent selection explicitly rather than relying only on prompt wording

## Copilot Client Differences

### Copilot CLI

Best for:

- terminal-native workflows
- autonomous task execution
- local repo work
- custom agents, skills, and MCP

Notes:

- supports autopilot-style workflows
- supports custom agents
- supports skills
- supports local and remote MCP servers

### Copilot Cloud Agent

Best for:

- GitHub-hosted background coding tasks
- assigning issues or PR work to Copilot
- repository-level automation on GitHub

Notes:

- supports skills
- supports custom agents
- supports repository custom instructions
- supports MCP, but **tools only**

### IDE Agent Mode

Best for:

- interactive local coding in VS Code and related IDE flows
- combining editor context with agent actions

Treat repository instructions and skills as first-class when improving IDE behavior.

## Custom Agents Guidance

Custom agents are the right tool when the user wants an explicit specialist instead of a generic prompt.

Agent profiles can define:

- name
- description
- prompt
- tools
- MCP servers

Use custom agents when:

- tool access should be narrower than the default
- the repo benefits from multiple named specialists
- the user wants explicit invocation by agent name or slash selection

Do not use a custom agent when a repo instruction file would solve the problem with less surface area.

## Skills Guidance

Copilot supports the agent skills standard. Use it well:

- write a clear `description` so Copilot knows when to invoke the skill
- keep the skill focused on one specialized job
- add supporting scripts or docs when they materially improve execution
- prefer `.agents/skills` when the user wants cross-agent compatibility
- prefer `.github/skills` when the repo is primarily tuned for Copilot / GitHub workflows

## MCP Guidance

Use MCP when Copilot needs capabilities beyond what instructions can provide.

Good examples:

- docs search
- browser automation
- issue tracker access
- internal developer platform tools

For Copilot CLI:

- use `/mcp add` for interactive setup
- or edit `~/.copilot/mcp-config.json`

Keep server names short, descriptive, and obviously relevant so the agent can select them correctly.

## GitHub Models

Use GitHub Models only when the request is actually about:

- storing prompts in the repo
- evaluating or comparing models in GitHub
- shipping an AI feature through GitHub's model tooling

Do not confuse GitHub Models with Copilot customization. They are adjacent, not the same product surface.

## Reference Files

Read only the files relevant to the task:

- `references/instruction-surfaces.md` -> choose between `.github/copilot-instructions.md`, `.github/instructions`, `AGENTS.md`, skills, and custom agents
- `references/custom-agents-and-skills.md` -> when to reach for skills vs custom agents
- `references/clients-and-mcp.md` -> CLI vs cloud agent vs IDE differences, plus MCP behavior

## Reading Guide

Only load the documents you need:

### User wants Copilot to follow repo conventions

Read:

- repository custom instructions docs
- agent instruction docs if `AGENTS.md` is relevant
- `references/instruction-surfaces.md`

### User wants path-specific behavior

Read:

- `.instructions.md` guidance and `applyTo` usage
- `references/instruction-surfaces.md`

### User wants specialized reusable capability

Read:

- agent skills docs
- `references/custom-agents-and-skills.md`

### User wants named specialists

Read:

- custom agents docs
- `references/custom-agents-and-skills.md`

### User wants extra tools

Read:

- Copilot MCP docs
- `references/clients-and-mcp.md`

## Implementation Heuristics

- If the user wants cross-agent compatibility, favor `AGENTS.md` and `.agents/skills`.
- If the user wants GitHub-native repo behavior, favor `.github/copilot-instructions.md`, `.github/instructions`, `.github/skills`, and `.github/agents`.
- If the behavior is broad and stable, keep it in instructions.
- If the behavior is procedural and reusable, move it into a skill.
- If the behavior requires a distinct persona/toolset, use a custom agent.

## Anti-Patterns

Do not:

- duplicate the same instruction in `.github/copilot-instructions.md`, `AGENTS.md`, and a skill without a clear reason
- create a custom agent when a one-page instruction file is enough
- use MCP to store plain guidance that belongs in the repo
- assume cloud agent and CLI support the exact same MCP surface
- bury critical repo conventions only in personal `~/.copilot` config when the whole team needs them

## Final Checklist

Before you finish:

- Did you choose the correct Copilot surface?
- Did you keep shared behavior in repo files?
- Did you distinguish Copilot CLI, IDE agent mode, and cloud agent where relevant?
- Did you use skills/custom agents only when the added complexity is justified?
- Did you avoid inventing unsupported file locations or config shapes?
