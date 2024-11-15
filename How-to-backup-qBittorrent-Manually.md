# How to backup/restore qBittorrent datas?

## Backup Process:

Press windows logo key+R and type ``%localappdata%\qBittorrent`` in the run command box and hit enter.

Again repeat the same process but this time type ``%appdata%\qBittorrent`` and hit enter.

Now you should have two qBittorrent folders open.

Select and copy everything from these two folders to new separate folders on a partition/drive other than C:

Also note down your drive letters(D: , E:, F: etc.) on which you've kept your seeding files.

## Restore Process:

After reinstalling windows, **first confirm that your drive letters (D: E: F: etc) haven't changed.**
If they changed then correct them through diskmgmt.msc or any other partitioning tool.

Install qBittorrent once your drive letters have been sorted out.

After installing, run qBittorrent at least once and then close by pressing Ctrl+Q.
Confirm using task manager that the process has ended.

Follow the previous steps again to open ``%localappdata%\qBittorrent`` folder.

Delete everything from that folder and copy everything from the backup we kept earlier for that folder.

Repeat same process for ``%appdata%\qbittorrent`` folder too.

Once done, open qBittorrent and it should detect all your torrents.
