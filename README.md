# cross-agent-skills

Production-ready skills for Claude Code, Codex, Cursor, Windsurf, Copilot, Cline, and 40+ agents.

One install. Every agent. Zero setup.

[Thai / ภาษาไทย](./README.th.md)

---

## Install

Pick your agent. One command. Done.

| Agent | Command |
|---|---|
| Claude Code | `claude plugin marketplace add siraxuth/cross-agent-skills && claude plugin install all-skills@cross-agent-skills` |
| Codex | `npx skills add siraxuth/cross-agent-skills -a codex` |
| Cursor | `npx skills add siraxuth/cross-agent-skills -a cursor` |
| Windsurf | `npx skills add siraxuth/cross-agent-skills -a windsurf` |
| Copilot | `npx skills add siraxuth/cross-agent-skills -a github-copilot` |
| Cline | `npx skills add siraxuth/cross-agent-skills -a cline` |
| Gemini CLI | `npx skills add siraxuth/cross-agent-skills -a gemini-cli` |
| OpenCode | `npx skills add siraxuth/cross-agent-skills -a opencode` |
| Roo Code | `npx skills add siraxuth/cross-agent-skills -a roo` |
| Any other | `npx skills add siraxuth/cross-agent-skills` |

> Install once. Available every session.

---

## Quick Start

### Install the repo policy pack into your current project

This is the easiest way to get `AGENTS.md`, `GEMINI.md`, frontend/setup standards, Copilot files, Windsurf files, and shared `.agents/skills/` examples into another repo.

The commands below:

1. download this repository into a temporary folder
2. install the project pack into the current directory

#### npm

```bash
npx degit siraxuth/cross-agent-skills .cross-agent-skills
bash .cross-agent-skills/install-project-pack.sh .
```

#### pnpm

```bash
pnpm dlx degit siraxuth/cross-agent-skills .cross-agent-skills
bash .cross-agent-skills/install-project-pack.sh .
```

#### yarn

```bash
yarn dlx degit siraxuth/cross-agent-skills .cross-agent-skills
bash .cross-agent-skills/install-project-pack.sh .
```

#### bun

```bash
bunx --bun degit siraxuth/cross-agent-skills .cross-agent-skills
bash .cross-agent-skills/install-project-pack.sh .
```

If you want to overwrite existing files:

```bash
bash .cross-agent-skills/install-project-pack.sh --force .
```

Optional cleanup:

```bash
rm -rf .cross-agent-skills
```

### Or use package scripts after cloning

If you've already cloned this repository, you can use the built-in scripts:

#### npm

```bash
npm run install:project-pack
npm run install:project-pack:force
npm run install:skills
```

#### pnpm

```bash
pnpm install:project-pack
pnpm install:project-pack:force
pnpm install:skills
```

#### yarn

```bash
yarn install:project-pack
yarn install:project-pack:force
yarn install:skills
```

#### bun

```bash
bun run install:project-pack
bun run install:project-pack:force
bun run install:skills
```

### Install the skills pack for Codex-style local skill loading

This copies the repository's `skills/` directory into `.codex/skills/`.

```bash
bash .cross-agent-skills/install.sh .
```

### Start using it immediately

After installing the project pack, open your agent in the target repo and prompt normally:

- `Set up a new Next.js app following frontend-setup-standards.md`
- `Build a landing page and follow AGENTS.md plus frontend-setup-standards.md`
- `Refactor this page into clean components and reduce client JavaScript`
- `Audit this frontend for shadcn/ui, motion performance, and bundle hygiene`

### What gets installed

The project pack installs:

- `AGENTS.md`
- `GEMINI.md`
- `frontend-setup-standards.md`
- `.github/copilot-instructions.md`
- `.github/instructions/*.md`
- `.github/skills/repo-skill-maintainer/`
- `.github/agents/skill-maintainer.md`
- `.agents/skills/*`
- `.windsurf/skills/repo-skill-maintainer/`
- `.windsurf/rules/frontend-setup-standards.md`
- `.windsurf/workflows/*.md`

---

## What's Inside

### 🎨 Design & Creative
| Skill | What it does |
|---|---|
| `frontend-design` | Build production-grade UIs with bold, distinctive aesthetics — no generic AI slop |
| `algorithmic-art` | Generate creative visual art through code |
| `canvas-design` | Design and compose visual layouts on canvas |
| `theme-factory` | Create cohesive design systems and color themes |

### 📄 Document Skills
| Skill | What it does |
|---|---|
| `pdf` | Read, extract, and work with PDF files |
| `docx` | Create and edit Word documents |
| `pptx` | Build PowerPoint presentations |
| `xlsx` | Work with Excel spreadsheets and data |

### 🛠️ Development & Technical
| Skill | What it does |
|---|---|
| `claude-api` | Build apps with the Claude API and SDKs |
| `codex` | Work effectively with OpenAI Codex, Codex customization, and OpenAI coding-agent workflows |
| `copilot` | Customize GitHub Copilot with instructions, skills, custom agents, CLI workflows, and MCP |
| `gemini` | Build and migrate Gemini API and Gemini CLI apps with the Google GenAI SDKs |
| `mcp-builder` | Scaffold and generate MCP servers |
| `windsurf` | Customize Windsurf with modes, rules, AGENTS.md, skills, workflows, and MCP |
| `webapp-testing` | Automated end-to-end web app testing |
| `web-artifacts-builder` | Build interactive web artifacts and components |

### 🏢 Enterprise & Communication
| Skill | What it does |
|---|---|
| `brand-guidelines` | Apply brand rules consistently across outputs |
| `internal-comms` | Write internal announcements and communications |
| `doc-coauthoring` | Collaborate on documents with structured workflows |
| `slack-gif-creator` | Generate and post animated GIFs to Slack |

### ⚙️ Meta
| Skill | What it does |
|---|---|
| `skill-creator` | Build new skills from scratch |

---

## What are Skills?

Skills are `SKILL.md` files — plain Markdown with a YAML header — that tell your AI agent how to do a specific task, repeatably and well.

No config. No API keys. No setup. Just drop in and use.

---

## Repo-Ready Examples

This repository now also includes ready-to-use agent customization examples:

| Surface | Path |
|---|---|
| Cross-agent repo instructions | `AGENTS.md` |
| Gemini CLI repo context | `GEMINI.md` |
| Shared frontend/setup policy | `frontend-setup-standards.md` |
| GitHub Copilot repo instructions | `.github/copilot-instructions.md` |
| GitHub Copilot frontend/setup instructions | `.github/instructions/frontend.instructions.md` |
| GitHub Copilot path-specific instructions | `.github/instructions/skills.instructions.md` |
| GitHub Copilot project skill | `.github/skills/repo-skill-maintainer/` |
| GitHub Copilot custom agent | `.github/agents/skill-maintainer.md` |
| Cross-agent shared skills | `.agents/skills/` |
| Windsurf workspace skill | `.windsurf/skills/repo-skill-maintainer/` |
| Windsurf rules | `.windsurf/rules/` |
| Windsurf workflow pack | `.windsurf/workflows/` |
| Project pack installer | `install-project-pack.sh` |
| Codex skills installer | `install.sh` |
| Package manager scripts | `package.json` |

---

## Source

Core skills are sourced from [anthropics/skills](https://github.com/anthropics/skills), with additional cross-agent skills authored in this repository.

Licensed under Apache 2.0 (example skills) and source-available (document skills).
