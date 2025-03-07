# Laporan Tutorial 4 Gamedev

## Level 2 - Implementasi Dasar
Pada latihan di Level 2 ini saya melakukan seperti yang di tutorial:
- Membuat tilemap yang berbeda dengan Level 1
- Membuat spawner slime jatuh
- Membuat player terkena slime jatuh dan mati saat masuk jurang

## Fitur Tambahan
- **Sistem HP**: 
  - Player mempunyai 6 hp dan akan terkena damage ketika bersentuhan dengan musuh (tidak langsung mati)
  - Menggunakan signal untuk menghubungkan hp player dengan collision musuh
  - Menggunakan asset yang ada untuk hp bar dan ditaruh di canvas layer (UI)

- **Spawner Musuh Horizontal**: 
  - Implementasi musuh yang bergerak secara horizontal
  - Menggunakan prinsip yang sama seperti musuh yang berjatuhan

- **Sistem Key-Gate**: 
  - Gate akan terbuka saat mengambil kunci
  - Mengimplementasikan dengan menghapus tile gate saat player menyentuh kunci

- **Penambahan Visual**:
  - Menambah background dengan asset yang tersedia

- **Fitur Game Flow**:
  - Menambah fitur restart dengan menekan tombol 'R' saat berada di lose screen