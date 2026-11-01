#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

OUT="7-habits-ringkasan.epub"

command -v pandoc >/dev/null 2>&1 || {
  echo "Pandoc belum tersedia. Instal Pandoc untuk membangun EPUB." >&2
  exit 1
}

echo "📘 Build EPUB: $OUT"

pandoc ebook.md \
  --metadata-file=metadata.yaml \
  -o "$OUT" \
  --toc \
  --toc-depth=2 \
  --css=style.css \
  --epub-cover-image=cover.jpg \
  --split-level=1

echo "✅ Selesai: $(pwd)/$OUT"
ls -lh "$OUT"
