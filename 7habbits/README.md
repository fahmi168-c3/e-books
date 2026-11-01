# The 7 Habits of Highly Effective People — Ringkasan dan Panduan Praktis

Penyusun ringkasan: **Fahmi**. Buku sumber ditulis oleh **Stephen R. Covey**.
Contoh kasus, jadwal, dan latihan merupakan ilustrasi penyusun.

## Berkas

- `ebook.md`: naskah dan sumber bacaan.
- `metadata.yaml`: sumber tunggal judul, penulis, bahasa, dan metadata EPUB.
- `style.css`: gaya tampilan isi.
- `cover.jpg`: sampul.
- `build-ebook.sh`: skrip pembuatan EPUB.
- `7-habits-ringkasan.epub`: hasil build.

## Membangun EPUB

Gunakan Bash dan Pandoc 3.7 atau versi kompatibel yang mendukung `--split-level`.
Calibre tidak diperlukan untuk build.

```bash
./build-ebook.sh
```

Skrip dapat dijalankan dari direktori mana pun dan akan mengganti EPUB hasil
sebelumnya. Setelah mengubah naskah, metadata, gaya, atau sampul, jalankan ulang
skrip agar hasil EPUB mengikuti sumber terbaru.

Untuk pemeriksaan standar EPUB yang lebih lengkap, gunakan EPUBCheck bila
tersedia, lalu periksa tampilan di aplikasi pembaca EPUB.

## Referensi

Daftar sumber ada di akhir `ebook.md`. Edisi buku sumber belum dicatat;
lengkapi informasi edisi sebelum menambahkan nomor halaman rujukan.
