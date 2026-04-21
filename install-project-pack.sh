#!/bin/bash
set -euo pipefail

FORCE=0

if [ "${1:-}" = "--force" ]; then
  FORCE=1
  shift
fi

TARGET="${1:-.}"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

copy_file() {
  local src="$1"
  local dest="$2"
  mkdir -p "$(dirname "$dest")"

  if [ -e "$dest" ] && [ "$FORCE" -ne 1 ]; then
    echo "⏭️  Skipped existing file: $dest"
    return
  fi

  cp "$src" "$dest"
  echo "✅ $dest"
}

copy_dir() {
  local src="$1"
  local dest="$2"
  mkdir -p "$(dirname "$dest")"

  if [ -e "$dest" ] && [ "$FORCE" -ne 1 ]; then
    echo "⏭️  Skipped existing directory: $dest"
    return
  fi

  rm -rf "$dest"
  cp -r "$src" "$dest"
  echo "✅ $dest"
}

copy_file "$SCRIPT_DIR/AGENTS.md" "$TARGET/AGENTS.md"
copy_file "$SCRIPT_DIR/GEMINI.md" "$TARGET/GEMINI.md"
copy_file "$SCRIPT_DIR/frontend-setup-standards.md" "$TARGET/frontend-setup-standards.md"

copy_file "$SCRIPT_DIR/.github/copilot-instructions.md" "$TARGET/.github/copilot-instructions.md"
copy_file "$SCRIPT_DIR/.github/instructions/frontend.instructions.md" "$TARGET/.github/instructions/frontend.instructions.md"
copy_file "$SCRIPT_DIR/.github/instructions/skills.instructions.md" "$TARGET/.github/instructions/skills.instructions.md"
copy_dir "$SCRIPT_DIR/.github/skills/repo-skill-maintainer" "$TARGET/.github/skills/repo-skill-maintainer"
copy_file "$SCRIPT_DIR/.github/agents/skill-maintainer.md" "$TARGET/.github/agents/skill-maintainer.md"

copy_dir "$SCRIPT_DIR/.agents/skills/repo-skill-maintainer" "$TARGET/.agents/skills/repo-skill-maintainer"
copy_dir "$SCRIPT_DIR/.agents/skills/agent-surface-rollout" "$TARGET/.agents/skills/agent-surface-rollout"

copy_dir "$SCRIPT_DIR/.windsurf/skills/repo-skill-maintainer" "$TARGET/.windsurf/skills/repo-skill-maintainer"
copy_file "$SCRIPT_DIR/.windsurf/rules/frontend-setup-standards.md" "$TARGET/.windsurf/rules/frontend-setup-standards.md"
copy_file "$SCRIPT_DIR/.windsurf/workflows/expand-skill-pack.md" "$TARGET/.windsurf/workflows/expand-skill-pack.md"
copy_file "$SCRIPT_DIR/.windsurf/workflows/sync-agent-surfaces.md" "$TARGET/.windsurf/workflows/sync-agent-surfaces.md"
copy_file "$SCRIPT_DIR/.windsurf/workflows/audit-skill-repo.md" "$TARGET/.windsurf/workflows/audit-skill-repo.md"

echo "🎉 Done! Project pack installed to $TARGET"
if [ "$FORCE" -ne 1 ]; then
  echo "Tip: re-run with --force to overwrite existing files."
fi
