#!/usr/bin/env bash
# Symlink every tracked file in this repo into $HOME at its mirrored path.
# Safe to re-run; existing correct links are left alone.
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET="${HOME}"

# Find all regular files except git metadata and this script.
find "$DOTFILES_DIR" \
  -type f \
  -not -path "$DOTFILES_DIR/.git/*" \
  -not -name install.sh \
  -not -name README.md \
  -print0 |
while IFS= read -r -d '' src; do
  rel="${src#"$DOTFILES_DIR"/}"
  dest="$TARGET/$rel"
  mkdir -p "$(dirname "$dest")"
  if [ -L "$dest" ] && [ "$(readlink "$dest")" = "$src" ]; then
    continue
  fi
  if [ -e "$dest" ] && [ ! -L "$dest" ]; then
    echo "backup: $dest -> $dest.bak"
    mv "$dest" "$dest.bak"
  fi
  ln -sfn "$src" "$dest"
  echo "linked: $dest"
done
