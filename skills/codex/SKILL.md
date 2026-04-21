---
name: codex
description: "Work effectively with OpenAI Codex and related OpenAI agentic coding surfaces. TRIGGER when: user mentions Codex, Codex CLI, Codex IDE extension, Codex cloud/web, AGENTS.md for Codex, OpenAI Docs MCP, GPT-5-Codex / GPT-5.x-Codex models, OpenAI Responses API for coding agents, OpenAI Agents SDK, OpenAI MCP/tool setup, Codex environment/internet/sandbox settings, or migrating coding workflows from Claude/Copilot/Windsurf into Codex. SKIP: non-OpenAI provider work with no Codex/OpenAI angle, generic coding with no agent/tooling customization, or provider-neutral abstractions unless the user explicitly wants OpenAI/Codex."
---

# Working with OpenAI Codex

Use this skill for two adjacent but distinct jobs:

1. **Using Codex as a coding agent** in the app, web, IDE, or CLI.
2. **Building software on OpenAI's platform** for coding and agentic workflows, typically with the Responses API, built-in tools, remote MCP, or the Agents SDK.

Treat those as separate surfaces. Do not mix product guidance with API code unless the user explicitly wants both.

## Hard Rules

- Use **official OpenAI surfaces** first: Codex product docs, OpenAI API docs, official SDKs, official model docs.
- For new OpenAI application code, prefer the **Responses API** unless the user explicitly asks for another surface or the project is already committed elsewhere.
- Do not invent:
  - model IDs
  - SDK method names
  - Codex CLI flags
  - config keys
  - MCP configuration shapes
- If the user asks for the **latest** model, feature, price, or capability, verify it from official OpenAI docs before writing code or docs.
- Keep **cloud Codex** and **local project changes** conceptually separate. Codex cloud runs in a remote environment; a repo patch in the current workspace is local work.

## First Classify the Request

Decide which bucket the task belongs to before doing anything else:

### 1. Codex Product / Workflow

Use this bucket when the user wants help with:

- Codex web or cloud tasks
- Codex CLI
- Codex IDE extension
- AGENTS.md for Codex behavior
- Codex MCP setup
- Codex environment, sandbox, internet access, approvals, or task design

### 2. OpenAI API Integration

Use this bucket when the user wants help with:

- `openai` SDK code
- Responses API
- tool calling / function calling
- built-in tools like web search, file search, computer use
- remote MCP servers in the API
- structured outputs
- background jobs
- conversation state or compaction
- choosing a Codex-optimized model in application code

### 3. Agents SDK / Multi-Agent Orchestration

Use this bucket when the user wants:

- delegated sub-agents
- handoffs
- tracing
- guardrails
- sandbox agents
- durable agent workflows beyond one raw model call

### 4. Migration / Cleanup

Use this bucket when the user wants to:

- migrate from Chat Completions or Assistants to Responses
- replace legacy OpenAI model names
- move a workflow from another coding agent into Codex
- standardize AGENTS.md / skills / MCP across tools

## Surface Selection

Pick the smallest surface that solves the job.

### Use Codex Product When

- The user wants a coding agent to work on a repo directly.
- They want background coding tasks, PR drafting, code review, or environment-level agent behavior.
- The task is about Codex cloud sandboxes, internet access, worktrees, review flows, or IDE usage.

### Use the Responses API When

- The user is building their own application.
- They need deterministic request/response code.
- They want tool use, structured output, web search, file search, remote MCP, or conversation state in app code.
- They need a coding-capable model but not the Codex product UX.

### Use the Agents SDK When

- They want multi-agent orchestration, handoffs, or richer agent lifecycle control.
- They need traces, tool scoping, or multi-step agent composition in code.
- The task is more than "call a model with tools."

## Repository Control Surfaces

When the request is about making Codex behave better in a repo, choose the right control surface:

### `AGENTS.md`

Use for repository or directory-level instructions that Codex should read while working:

- coding conventions
- architecture boundaries
- build/test commands
- file ownership rules
- review checklists
- "always use MCP X when working on Y"

Prefer:

- one root `AGENTS.md` for repo-wide expectations
- extra nested `AGENTS.md` files only when directory-specific guidance is materially different

Do not bloat `AGENTS.md` with long runbooks that are better expressed as a skill.

### Skills

Use skills when the task is specialized, repeatable, and benefits from:

- scripts
- templates
- checklists
- reference docs
- multi-step workflows

Good examples:

- release procedure
- PR review workflow
- OpenAI API migration workflow
- security audit workflow

### MCP

Use MCP when Codex needs external tools or data:

- documentation search
- GitHub / Jira / Linear access
- design systems
- internal services

For OpenAI docs specifically, prefer the **OpenAI Docs MCP** instead of telling the model to guess from memory.

## Codex-Specific Defaults

Unless the user explicitly asks otherwise:

- Prefer the **current stable non-preview Codex coding model** from the official model docs.
- Prefer **official OpenAI SDKs** over raw HTTP when a maintained SDK exists for the language.
- Prefer **background mode** for long-running API jobs that may outlive a single request timeout.
- Prefer **strict schemas** for function calling / structured outputs when the output must be machine-consumable.
- Prefer **conversation state** or a durable conversation object when the app is truly multi-turn.
- Use **compaction** only when the conversation window is genuinely large and you need to keep the workflow alive.

If the exact best model matters, verify it first. Do not hardcode "latest" from memory.

## OpenAI API Guidance

### Preferred Stack for New Work

- SDK: official OpenAI SDK for the project language
- Primary endpoint: `responses`
- Tooling: built-in tools, function tools, or remote MCP as needed
- State: `conversation` objects or previous response chaining

### When to Reach for Built-In Tools

Use built-in tools when the application needs hosted capabilities like:

- web search
- file search / retrieval
- computer use

If the user needs a capability from their own system, use **function calling** or **remote MCP**, not a fake built-in tool.

### Function Calling Rules

- Use JSON-schema-defined tools.
- Keep schemas small and explicit.
- Prefer strict validation when downstream code depends on correctness.
- Disable or constrain parallel calls only when sequencing matters.

### Long-Running Jobs

For long reasoning or multi-step app tasks:

- use **background mode**
- poll until the response reaches a terminal state
- do not assume synchronous completion for large coding tasks

### Context Management

Use:

- regular conversation state for normal multi-turn work
- compaction only when context growth is the problem

Do not compact early just because the feature exists.

## Agents SDK Guidance

Use the Agents SDK when the user wants explicit agent architecture, not just a single model request.

Typical signals:

- "planner + executor"
- "delegate to specialist agents"
- "handoff between agents"
- "trace everything"
- "sandboxed agent runs"

When using the Agents SDK:

- define clear tool boundaries
- scope each agent narrowly
- keep handoffs intentional
- preserve traceability
- avoid building a multi-agent system when one agent plus tools is enough

## Language Detection

Before writing OpenAI code, infer the project language from the repo:

- `*.py`, `pyproject.toml`, `requirements.txt` -> Python
- `*.ts`, `*.tsx`, `package.json`, `tsconfig.json` -> TypeScript
- `*.js`, `*.jsx` with no TS -> JavaScript using the TS/JS SDK surface
- `*.go`, `go.mod` -> Go
- `*.java`, `pom.xml`, `build.gradle` -> Java
- `*.cs`, `*.csproj` -> C#
- `*.rb`, `Gemfile` -> Ruby
- `*.php`, `composer.json` -> PHP

If multiple languages are present, anchor on the file the user is editing or the integration they named.

## Reference Files

Read only the files needed for the current task:

- `references/surfaces.md` -> choose between Codex product, Responses API, and Agents SDK
- `references/repo-customization.md` -> `AGENTS.md`, skills, MCP, docs MCP, repo control surfaces
- `references/implementation-patterns.md` -> model/tool/state/background-mode implementation choices

## Reading Guide

Use the official OpenAI docs and only load what is relevant:

### User wants Codex setup or usage help

Read Codex product docs for:

- app / web overview
- CLI or IDE features
- environment settings
- internet access and sandboxing
- integrations
- plus `references/surfaces.md` if the user is mixing product and API language

### User wants OpenAI coding model app code

Read:

- model docs for the current Codex model
- Responses API reference
- tools guide
- function calling guide
- conversation state guide
- background mode guide if the work may be long-running
- `references/implementation-patterns.md`

### User wants doc lookup inside the editor or agent

Use:

- OpenAI Docs MCP
- and `references/repo-customization.md` if they also need repo instructions for it

### User wants orchestration or sub-agents

Read:

- Agents SDK overview
- agent definitions / running agents
- guardrails
- results and state
- sandbox agents if execution environments matter
- plus `references/surfaces.md` so you do not accidentally answer with plain Responses guidance

## Implementation Heuristics

- If the request is repo customization, update files like `AGENTS.md`, skill folders, or MCP config examples.
- If the request is application code, patch the real source files and wire the official SDK cleanly.
- If the request is migration, remove obsolete patterns instead of layering a second abstraction on top.
- If the request is documentation, separate product usage from API usage clearly so the user does not confuse Codex with the Responses API.

## Anti-Patterns

Do not:

- recommend Assistants API for new implementations when Responses covers the use case
- guess the newest Codex model
- write provider-neutral wrappers when the user explicitly asked for Codex/OpenAI-specific behavior
- pack secrets or volatile machine-specific details into `AGENTS.md`
- tell users to use MCP when a plain repo file or skill is the right tool
- use a skill for a one-line permanent rule that belongs in `AGENTS.md`

## Final Checklist

Before you finish:

- Did you distinguish Codex product guidance from OpenAI API guidance?
- Did you verify unstable model/version facts if they mattered?
- Did you choose the smallest surface that solves the task?
- Did you use official SDKs and docs instead of guessed APIs?
- Did you put persistent repo behavior in the right place (`AGENTS.md`, skill, or MCP)?
