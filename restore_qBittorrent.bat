@echo off
set backupPath=D:\qBittorrentBackup

echo Restoring qBittorrent data...

REM Restore %localappdata% folder
xcopy "%backupPath%\localappdata" "%localappdata%\qBittorrent" /s /e /y

REM Restore %appdata% folder
xcopy "%backupPath%\appdata" "%appdata%\qBittorrent" /s /e /y

echo Restore complete. Your qBittorrent data has been restored.
pause
