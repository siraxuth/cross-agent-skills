#!/bin/bash
set -e
TARGET="${1:-.}"
CODEX_DIR="$TARGET/.codex/skills"
mkdir -p "$CODEX_DIR"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
for skill in "$SCRIPT_DIR/skills"/*/; do
  name=$(basename "$skill")
  cp -r "$skill" "$CODEX_DIR/$name"
  echo "✅ $name"
done
echo "🎉 Done! Skills installed to $CODEX_DIR"
