# Copilot Clients and MCP

Use this file when the task depends on which Copilot client the user is using.

## Copilot CLI

Best for:

- terminal-native autonomous work
- local repo execution
- custom agents
- skills
- local and remote MCP

MCP details:

- config file: `~/.copilot/mcp-config.json`
- interactive setup: `/mcp add`
- GitHub MCP server is built in

## Copilot Cloud Agent

Best for:

- GitHub-hosted background coding tasks
- issue/PR assignment workflows

Important limitation:

- cloud agent supports MCP **tools**
- it does not support MCP resources or prompts

## IDE Agent Mode

Best for:

- iterative local coding
- working with editor context and repository instructions

## Practical Guidance

If the user wants a repo checked in with team-shared Copilot behavior:

- prefer repo files under `.github/`
- add MCP config examples only when the workflow truly needs external tools
