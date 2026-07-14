#!/usr/bin/env bash
set -euo pipefail

REPO="$(cd "$(dirname "$0")/.." && pwd)"

cd "$REPO"

find . -name SKILL.md ! -path '*/node_modules/*' | sed 's|^\./||' | sort
