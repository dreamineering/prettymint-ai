#!/usr/bin/env bash
set -euo pipefail

# Links all repository skills to ~/.claude/skills so the local Claude CLI can
# discover them.
REPO="$(cd "$(dirname "$0")/.." && pwd)"
DEST="$HOME/.claude/skills"

# This repo keeps .claude/skills as a compatibility symlink to ../skills. If the
# user's global destination resolves back into this repo, linking into it would
# write per-skill symlinks into the source tree.
if [ -L "$DEST" ]; then
  resolved="$(cd "$(dirname "$DEST")" && cd "$(readlink "$DEST")" && pwd -P)"
  case "$resolved" in
    "$REPO"|"$REPO"/*)
      echo "error: $DEST is a symlink into this repo ($resolved)." >&2
      echo "Remove it (rm \"$DEST\") and re-run; the script will recreate it as a real directory." >&2
      exit 1
      ;;
  esac
fi

mkdir -p "$DEST"

find "$REPO/skills" \
  -name SKILL.md \
  ! -path '*/node_modules/*' \
  ! -path '*/deprecated/*' \
  -print0 |
  while IFS= read -r -d '' skill_md; do
    src="$(dirname "$skill_md")"
    name="$(basename "$src")"
    target="$DEST/$name"

    rm -rf "$target"
    ln -s "$src" "$target"
    echo "linked $name -> $src"
  done
