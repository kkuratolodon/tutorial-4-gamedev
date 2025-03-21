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

## Tutorial 6

Pada Tutorial 6, saya melanjutkan pekerjaan dari Tutorial 4 dengan penambahan fitur-fitur sebagai berikut:

- **Main Menu:**  
  Saya mengikuti langkah-langkah di tutorial, yaitu dengan membuat container (HBoxContainer/VBoxContainer), label, dan button. Button *New Game* dan *Stage Select* dihubungkan ke scene masing-masing menggunakan signal.

- **GUI Life Counter:**  
  Implementasi GUI Life Counter telah diterapkan di Tutorial 4 dengan menggunakan tiga `TextureRect` untuk menampilkan nyawa.

- **Layar Game Over:**  
  Saya telah membuat scene Game Over yang terdiri dari button *Restart* dan *Main Menu*.  
  - Pada button *Restart*, jika restart dari Level 1 atau Level 2, maka scene yang diload sesuai dengan variabel `last_level`.
  - Button *Main Menu* diarahkan kembali ke scene main menu.  
  Proses implementasinya meliputi penggunaan signal untuk menangani event button yang ditekan pada Game Over Scene.

- **Fitur Select Stage:**  
  Fitur ini terdiri dari 2 button (Level 1 dan Level 2) yang sudah dikoneksikan dengan signal sehingga jika ditekan, akan beralih ke level yang diinginkan.

- **Transisi antar Level:**  
  Transisi antar level diimplementasikan dengan panel hitam yang menggunakan `AnimationPlayer` untuk membuat efek fade out selama 1 detik (dari transparansi 0 hingga full).

- **Pause Menu:**  
  Fitur pause menu diimplementasikan dengan `get_tree().paused = true` dan penanganan variabel static pada spawner agar scene ikut ter-pause. Pada pause menu, player dapat melanjutkan (continue) atau kembali ke main menu.

**Referensi:**
- https://www.youtube.com/watch?v=5Hog6a0EYa0&t=570s