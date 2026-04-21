# Expand Skill Pack

Description: Deepen a skill in this repository by adding references, tightening its trigger description, updating shared agent-facing examples, and refreshing README discoverability if needed.

## Steps

1. Identify the target skill under `skills/<name>/`.
2. Read the target `SKILL.md` and only the relevant `references/*.md`.
3. If the main skill is too dense, move deep detail into `references/`.
4. Tighten frontmatter trigger wording so the skill is specific and useful.
5. If real-world usage changed, update the corresponding example surfaces:
   - `.agents/skills/`
   - `.github/`
   - `.windsurf/`
   - `AGENTS.md`
   - `GEMINI.md`
6. Update `README.md` if users need to discover the change.
7. Do a lightweight sanity check and report any validation gaps.
