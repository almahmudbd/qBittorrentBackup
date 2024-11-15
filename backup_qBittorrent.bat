@echo off
set backupPath=D:\qBittorrentBackup

echo Creating backup directory if it doesn't exist...
mkdir "%backupPath%\localappdata"
mkdir "%backupPath%\appdata"

echo Backing up qBittorrent data...

REM Backup %localappdata% folder
xcopy "%localappdata%\qBittorrent" "%backupPath%\localappdata" /s /e /y

REM Backup %appdata% folder
xcopy "%appdata%\qBittorrent" "%backupPath%\appdata" /s /e /y

echo Backup complete. Files have been saved to %backupPath%
pause
