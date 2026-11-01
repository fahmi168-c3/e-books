#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

OUT="richest-man-ringkasan.epub"

command -v pandoc >/dev/null 2>&1 || {
  echo "Pandoc diperlukan untuk membangun EPUB." >&2
  exit 1
}

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

echo "📘 Build EPUB: $OUT"

pandoc ebook.md \
  --metadata-file=metadata.yaml \
  -o "$TMP_DIR/$OUT" \
  --toc \
  --toc-depth=2 \
  --css=style.css \
  --epub-cover-image=cover.jpg \
  --split-level=1

mv "$TMP_DIR/$OUT" "$OUT"

echo "✅ Selesai: $(pwd)/$OUT"
ls -lh "$OUT"
