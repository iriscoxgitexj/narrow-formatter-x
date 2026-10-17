#!/usr/bin/env bash
# narrow-formatter-x — Rewriting small tools for developers in my spare time
# 周末做的小玩意
set -euo pipefail

tmp=$(mktemp)
trap 'rm -f "$tmp"' EXIT

cat > "$tmp"

sort "$tmp" | uniq -c | sort -rn
echo "---"
echo "$(sort -u "$tmp" | wc -l | tr -d ' ') unique"
