# Codex Implementation Patterns

Use this file when writing OpenAI application code for coding or agentic workflows.

## Defaults

- prefer the official OpenAI SDK
- prefer the Responses API for new work
- prefer strict tool schemas when downstream code depends on structure
- use background mode for long-running tasks

## Model Selection

Do not hardcode "latest" from memory.

When the exact model matters:

- verify the current stable Codex model from official docs
- prefer stable non-preview models unless the user explicitly wants preview or the feature is preview-only

## Tools

### Built-in tools

Use when OpenAI hosts the capability:

- web search
- file search / retrieval
- computer use

### Function calling

Use when the user's application provides the capability.

Good for:

- internal APIs
- business actions
- database access
- deterministic integration points

### Remote MCP

Use when the tool source is already exposed through an MCP server.

## State

Use normal conversation state for ordinary multi-turn interactions.

Use compaction only when:

- the context is large
- the workflow is long-running
- you actually need to shrink the carried history

## Background Mode

Use when:

- the task may take minutes
- network timeouts are a concern
- the result can be polled asynchronously

Do not force synchronous flows for inherently long agentic jobs.

## Output Discipline

If the user wants machine-consumable results:

- use structured outputs or strict function tools
- avoid prose-only parsing if the application needs reliable fields
