# Windsurf Repo Patterns

Use this file when creating practical repo setups for Windsurf.

## Good Layering

### Base layer

Root `AGENTS.md`:

- repo purpose
- default build/test commands
- editing constraints
- documentation expectations

### Directory layer

Nested `AGENTS.md`:

- frontend/backend/docs distinctions
- path-local file structure rules
- local commands

### Specialized layer

Skills:

- release process
- deep review flows
- codebase migration procedures

### Manual ops layer

Workflows:

- `/deploy-preview`
- `/triage-pr-comments`
- `/prepare-release`

### Integration layer

MCP:

- external docs and services

## Anti-Patterns

Do not:

- store permanent conventions only in global user config
- use Workflows for always-on behavior
- duplicate the same guidance in Rules and `AGENTS.md` unless the scopes differ
- bury build/test commands inside a long skill if they are always relevant
