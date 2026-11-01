#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

OUT="psychology-of-money-ringkasan.epub"
command -v pandoc >/dev/null || { echo "Pandoc diperlukan untuk build EPUB." >&2; exit 1; }
# Metadata hanya dikelola melalui metadata.yaml agar atribusi tidak tertimpa.
# Bangun ke file sementara; ganti hasil hanya jika proses berhasil.
TMP_OUT="$(mktemp "./.ebook-build-XXXXXX.epub")"
trap 'rm -f "$TMP_OUT"' EXIT
pandoc ebook.md \
  --metadata-file=metadata.yaml \
  -o "$TMP_OUT" \
  --toc --toc-depth=2 \
  --metadata=toc-title:"Daftar Isi" \
  --css=style.css \
  --epub-cover-image=cover.jpg \
  --split-level=1
mv "$TMP_OUT" "$OUT"
echo "Selesai: $(pwd)/$OUT"
ls -lh "$OUT"
