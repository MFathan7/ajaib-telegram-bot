# 📈 Ajaib Bot Pro - Intelligent Stock Assistant

**Ajaib Bot Pro** adalah asisten trading pribadi berbasis Telegram yang membantu Anda menganalisa pasar saham Indonesia (IHSG) secara real-time. Dibangun dengan logika **Smart Insight** yang menggabungkan Analisa Teknikal dan Bandarmology.

# ⚠️ DISCLAIMER & KEAMANAN DATA (PENTING)

Harap baca poin berikut sebelum menggunakan bot ini:

1. **PRIVASI TOTAL:** Developer TIDAK PERNAH mengoleksi, menerima, atau menyimpan data login (Email, Password, PIN) akun Ajaib Anda di server manapun.

2. **PENYIMPANAN LOKAL:** Semua data sesi login disimpan secara LOKAL di dalam komputer/laptop Anda sendiri (user_data.json) dan diamankan dengan ENKRIPSI AES-256 menggunakan kunci pribadi Anda.

3. **TANGGUNG JAWAB:** Developer TIDAK BERTANGGUNG JAWAB atas segala bentuk kehilangan aset, kerugian trading (Loss), atau peretasan akun yang disebabkan oleh kelalaian pengguna dalam menjaga keamanan komputer (kena virus/malware) atau kebocoran file .env.

4. **BUKAN SARAN KEUANGAN:** Segala analisa yang dihasilkan bot hanyalah alat bantu statistik. Keputusan jual/beli sepenuhnya ada di tangan pengguna.

---

## ✨ Fitur Unggulan

### 🧠 1. Smart Insight Analysis
Bot tidak hanya menampilkan chart, tapi memberikan kesimpulan cerdas:
- **Trend Detection:** Uptrend, Downtrend, atau Sideways.
- **Bandarmology:** Mendeteksi Akumulasi atau Distribusi Big Money.
- **Signal:** Memberikan sinyal `STRONG BUY`, `BUY`, `WAIT`, atau `SELL`.

### 🥊 2. Battle Mode (`/vs`)
Bingung pilih saham A atau B? Adu keduanya!
- Bandingkan skor Trend, Bandar, dan Fundamental (ROE/PBV).
- Bot akan memilih pemenang berdasarkan scoring dari perhitungan robot.

### 🕵️‍♂️ 3. Watchlist Screener
Tidak perlu scan satu per satu. Bot akan memindai seluruh saham di Watchlist pribadi Anda dan memberi tahu mana yang sedang *potensial* hari ini.

### 🚨 4. Real-time Price Alerts
Memberikan notifikasi harga sesuai dengan keingan anda.
- Pasang alarm harga (Atas/Bawah).
- Notifikasi instan saat harga tersentuh.
- **Session Guard:** Bot akan mengingatkan jika sesi login Ajaib Anda habis.

### 🔐 5. Remote License Validation
Bot ini dilengkapi sistem pengecekan digital lisensi:
- **Real-time Check:** Bot secara berkala mengecek status lisensi ke file yang ada di Git Cloud (Developer).
- **Auto-Lock:** Jika status lisensi dinonaktifkan oleh developer atau masa berlaku habis, bot akan otomatis berhenti beroperasi.

---

## ⚙️ Persyaratan Sistem (Wajib)

Saat ini bot belum bisa dijalankan multi-platform. Pastikan sistem Anda memenuhi syarat:

- **OS:** Windows 10 / 11 (64-bit).
- **Python:** Versi 3.x (Disarankan Python 3.11 ke atas).
- **Koneksi Internet:** Stabil.

---

## 🚀 Cara Instalasi & Penggunaan

### Langkah 1: Persiapan Folder
1. Download file ZIP **ajaib-telegram-bot**.
2. Extract (unzip) ke sebuah folder di komputer Anda.

### Langkah 2: Konfigurasi Environment (.env)
Bot ini membutuhkan "Pass Key" untuk berjalan.
1. Buat file baru di dalam folder tersebut bernama `.env` (tanpa nama depan, hanya ekstensi .env).
2. Buka file `.env` dengan Notepad.
3. Isi dengan format berikut:

```env
BOT_TOKEN=123456:ABC-DefGhiJklmNoPqrStuVwxyz
ENCRYPTION_KEY=Isi_Key_Enkripsi_Disini
DB_FILE=user_data.json
```
**Cara Mendapatkan Data:**
- BOT_TOKEN: Pilih bot ke @BotFather di Telegram (Create New Bot).
- NCRYPTION_KEY: Buka terminal/CMD, ketik python lalu jalankan: `from cryptography.fernet import Fernet; print(Fernet.generate_key().decode())` Copy hasilnya dan paste ke .env.

### Langkah 3: Jalankan Bot
Klik 2x file `run.bat`. Script ini akan otomatis menginstall library yang dibutuhkan dan menjalankan bot.

## 🎮 Daftar Perintah (Commands)

| Perintah | Fungsi | Contoh |
| :--- | :--- | :--- |
| `/start` | Mulai bot & Login akun Ajaib | `/start` |
| `/saham [KODE]` | Cek Analisa Lengkap Saham | `/saham BBCA` |
| `/vs [KODE1] [KODE2]` | Adu score 2 atau lebih antar saham | `/vs BBRI BMRI BBCA` |
| `/alert [KODE] > [HRG]` | Pasang Alarm Harga Atas | `/alert TLKM > 4000` |
| `/alert [KODE] < [HRG]` | Pasang Alarm Harga Bawah | `/alert GOTO < 50` |
| `/myalerts` | Lihat & Hapus daftar alarm | `/myalerts` |
| `/addwatchlist [KODE]` | Tambah saham ke Watchlist | `/addwatchlist ASII` |
| `/watchlist` | Lihat daftar pantauan | `/watchlist` |
| `/screener` | Scan sinyal dari Watchlist | `/screener` |
