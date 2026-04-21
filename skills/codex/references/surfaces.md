# Codex Surfaces

Use this file when the user mentions Codex but it is unclear which OpenAI surface they actually need.

## Surface Map

### Codex product

Use when the user wants Codex itself to do work on a repository:

- Codex cloud / web tasks
- Codex CLI
- Codex IDE extension
- Codex environment setup
- Codex review flows
- Codex internet / sandbox controls

This is about configuring or using OpenAI's coding agent product, not embedding a model in the user's application.

### Responses API

Use when the user is building application code and needs:

- model calls
- conversation state
- function calling
- built-in tools
- remote MCP
- structured outputs
- background execution

This is the default API surface for new OpenAI app integrations.

### Agents SDK

Use when the user needs more than a single model request:

- multiple agents
- handoffs
- scoped tools
- traces
- guardrails
- sandbox agents

Use it when the user is intentionally building agent architecture, not just "call the model and maybe a tool."

## Quick Decision Rules

Choose **Codex product** when:

- the output is code changes in a repo
- the user talks about PRs, worktrees, review, or Codex settings
- they want OpenAI's hosted coding agent UX

Choose **Responses API** when:

- the user is shipping an application feature
- they want programmatic access to models
- the agent is inside their product rather than the Codex app

Choose **Agents SDK** when:

- one model call plus tools is no longer enough
- the user explicitly wants planner/executor patterns or agent composition

## Common Confusions

### "I want Codex in my app"

This usually means one of two things:

- They want a Codex-optimized model in app code -> use Responses API plus the current Codex model.
- They want the Codex product workflow embedded -> explain that this is different from the raw API.

### "I need an agent"

Clarify whether they mean:

- OpenAI-hosted coding workflow -> Codex product
- application-level tool calling -> Responses API
- multi-agent orchestration -> Agents SDK

### "I need repository instructions"

This is usually not an API problem.

Use:

- `AGENTS.md` for persistent repo instructions
- skills for reusable specialized workflows
- MCP for external tool access

## Output Guidance

When answering, explicitly separate:

1. product usage guidance
2. API code guidance
3. repo customization guidance

Do not collapse them into one blended explanation unless the user asked for an end-to-end setup.
