# Gemini CLI

Use this file when the task is about the Gemini CLI rather than embedding Gemini in an application.

## Core Uses

- interactive terminal agent work
- non-interactive prompting
- JSON or streaming JSON output for scripts
- project-level context via `GEMINI.md`
- MCP integration

## `GEMINI.md`

Use `GEMINI.md` for durable project guidance:

- architecture notes
- coding conventions
- build/test commands
- repository quirks
- preferred workflows

Keep it concise and operational.

## Automation

Prefer non-interactive mode plus JSON output when:

- the CLI is inside scripts
- CI needs machine-readable output
- downstream tools parse the result

Do not rely on scraping plain text if the output format matters.
