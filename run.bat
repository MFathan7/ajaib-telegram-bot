@echo off
TITLE Ajaib Bot Launcher
color 0A

echo ==================================================
echo        ROBOT TRADING AJAIB - LAUNCHER
echo ==================================================
echo.
echo [DISCLAIMER PENTING - HARAP DIBACA]
echo.
echo 1. Developer TIDAK PERNAH mengoleksi, menerima, atau menyimpan data login
echo    (Email, Password, PIN) akun Ajaib yang Anda gunakan.
echo 2. Semua data sensitif tersimpan secara LOKAL di komputer ini dan
echo    terenkripsi dengan kunci pribadi Anda.
echo 3. Developer TIDAK BERTANGGUNG JAWAB atas segala bentuk kehilangan aset,
echo    kerugian trading, atau peretasan akun (hack) yang terjadi.
echo 4. Keamanan komputer dan data pribadi adalah tanggung jawab pengguna sepenuhnya.
echo.
echo ==================================================
echo.
echo Memulai sistem dalam 5 detik...
timeout /t 5 >nul
echo.

:: 1. Cek Python
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Python belum terinstall!
    echo Silakan download Python dulu di https://www.python.org/
    echo Jangan lupa centang "Add Python to PATH" saat install.
    pause
    exit
)

:: 2. Cek apakah library sudah ada, kalau belum install dulu
if not exist "venv" (
    echo [INFO] Menyiapkan environment bot untuk pertama kali...
    echo Mohon tunggu, sedang download library yang dibutuhkan...
    pip install -r requirements.txt
    echo.
    echo [SUKSES] Instalasi selesai!
)

:: 3. Cek File .env
if not exist ".env" (
    echo [WARNING] File .env tidak ditemukan!
    echo Silakan buat file .env dan isi dengan TOKEN BOT & KEY ENKRIPSI.
    echo.
)

:: 4. Jalankan Bot
echo [INFO] Menyalakan Bot...
echo Tekan CTRL+C untuk mematikan bot.
echo.
python main.py

pause