#!/usr/bin/env bash
# Package the myst-editor checkout next to this repository into editor-dist/, the way its release
# pipeline packs a release, so this book runs that exact build. Usage: ./update-editor.sh [path-to-myst-editor]
set -euo pipefail
EDITOR_REPO="${1:-../myst-editor}"
HERE="$(cd "$(dirname "$0")" && pwd)"
(cd "$EDITOR_REPO" && npm run build >/dev/null)
# Same contents as a release: the editor without its demo pages and demo options.
tar --exclude="dist/options.js" --exclude="dist/myst-git/*" --exclude="dist/git.js" \
  -czf "$HERE/editor-dist/myst-editor.tar.gz" -C "$EDITOR_REPO" dist/
(cd "$EDITOR_REPO" && echo "$(node -p "require('./package.json').version") $(git rev-parse --short HEAD) $(git branch --show-current)") \
  > "$HERE/editor-dist/VERSION"
echo "Packaged myst-editor $(cat "$HERE/editor-dist/VERSION")"
