# qBittorrent Backup and Restore Scripts

This guide provides two simple scripts to back up and restore your `qBittorrent` configuration and data files on Windows.

**[[বাংলায় readme পড়ুন]](https://github.com/almahmudbd/qBittorrentBackup/blob/main/README-bn.md)**

## Overview

The backup script will copy `qBittorrent` data files from your system’s `%localappdata%` and `%appdata%` folders and save them to a specified backup folder. The restore script will then copy these files back to the original locations if needed, restoring your `qBittorrent` settings and data.

## Files

- `backup_qBittorrent.bat` - Script to create a backup of `qBittorrent` data.
- `restore_qBittorrent.bat` - Script to restore `qBittorrent` data from the backup.

## Instructions

### Important Warning

⚠️ **Please ensure that your seeding/downloaded torrent files are in the same drive and location as before.**  
When you reinstall Windows, sometimes the drive letters (like D:, E:) can change. For example, if your seeding files were originally in `D:\Downloads`, make sure that `D:` is still `D:` after reinstalling Windows. You can adjust drive letters using Windows Disk Management (`diskmgmt.msc`) if needed.

### 1. Backup Process

1. Double-click or run `backup_qBittorrent.bat` from the Command Prompt.
   
2. The script will automatically save your `qBittorrent` data and configuration files to a backup folder (`D:\qBittorrentBackup` by default).

3. The backup is complete when you see "Backup complete" in the Command Prompt.
   
4. It will create the necessary backup directories and copy the qBittorrent data to the specified folder (D:\qBittorrentBackup). 

### 2. Restore Process

1. After installing qBittorrent, run at least once and then Close/Exit it, you may use `Ctrl+Q` to close.

2. Make sure `qBittorrent` is closed before restoring (confirm in Task Manager that it’s not running).

3. Double-click or run `restore_qBittorrent.bat` from the Command Prompt.

4. The script will restore the data from the backup folder back to the original locations.

5. When done, open `qBittorrent`, and it should recognize all your torrents and settings.

### Optional: Change Backup Path

If you want to change the backup location, you can do so by editing the following line in both `backup_qBittorrent.bat` and `restore_qBittorrent.bat` files:

*set backupPath=D:\qBittorrentBackup*

Replace `D:\qBittorrentBackup` with the path where you want to store or retrieve the backup.

## Troubleshooting

- If you see "Invalid path" errors, make sure the specified backup path exists and is correct.
- If you encounter permission issues, try running the scripts as an administrator.

---
## How Backup it Manually
follow this guide = [.../main/How-to-backup-qBittorrent-Manually.md](https://github.com/almahmudbd/qBittorrentBackup/blob/main/How-to-backup-qBittorrent-Manually.md)

---

### Example of Scripts

#### Backup Script (`backup_qBittorrent.bat`)

```batch
@echo off
set backupPath=D:\qBittorrentBackup

echo Creating backup directory if it doesn't exist...
mkdir "%backupPath%\localappdata"
mkdir "%backupPath%\appdata"

echo Backing up qBittorrent data...
xcopy "%localappdata%\qBittorrent" "%backupPath%\localappdata" /s /e /y
xcopy "%appdata%\qBittorrent" "%backupPath%\appdata" /s /e /y

echo Backup complete. Files have been saved to %backupPath%
pause
```

#### Restore Script (`restore_qBittorrent.bat`)

```batch
@echo off
set backupPath=D:\qBittorrentBackup

echo Restoring qBittorrent data...
xcopy "%backupPath%\localappdata" "%localappdata%\qBittorrent" /s /e /y
xcopy "%backupPath%\appdata" "%appdata%\qBittorrent" /s /e /y

echo Restore complete. Your qBittorrent data has been restored.
pause
```

## License

These scripts are provided "as-is" without any warranty. Use them at your own risk.
