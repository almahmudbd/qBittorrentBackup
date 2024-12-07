# qBittorrent ব্যাকআপ এবং রিস্টোর স্ক্রিপ্টস

এই গাইডটি উইন্ডোজে `qBittorrent`-এর কনফিগারেশন এবং ডাটা ফাইল ব্যাকআপ ও রিস্টোর করার জন্য দুটি সহজ স্ক্রিপ্ট সরবরাহ করে।

## সংক্ষিপ্ত বিবরণ

ব্যাকআপ স্ক্রিপ্টটি আপনার সিস্টেমের `%localappdata%` এবং `%appdata%` ফোল্ডার থেকে `qBittorrent` ডাটা ফাইল কপি করে একটি নির্দিষ্ট ব্যাকআপ ফোল্ডারে সংরক্ষণ করবে। রিস্টোর স্ক্রিপ্টটি প্রয়োজনে এই ফাইলগুলো আবার মূল অবস্থানে ফিরিয়ে আনবে, ফলে আপনার `qBittorrent` সেটিংস এবং ডাটা পুনরুদ্ধার করা সম্ভব হবে।

## ফাইলসমূহ

- `backup_qBittorrent.bat` - `qBittorrent` ডাটার ব্যাকআপ তৈরি করার স্ক্রিপ্ট।
- `restore_qBittorrent.bat` - ব্যাকআপ থেকে `qBittorrent` ডাটা রিস্টোর করার স্ক্রিপ্ট।
আপনি জিপ ডাউনলোড করলে qBittorrentBackup ফোল্ডারটি D: ড্রাইভে রাখুন, তার মাঝে এই দুটি ফাইল রাখবেন।

## নির্দেশনা

### গুরুত্বপূর্ণ সতর্কতা

⚠️ **আপনার ডাউনলোড করা/সিড করা টরেন্ট ফাইলগুলো একই ড্রাইভ এবং অবস্থানে রয়েছে তা নিশ্চিত করুন।**  
উইন্ডোজ পুনরায় ইনস্টল করার সময় অনেক সময় ড্রাইভ লেটার (যেমন D:, E:) পরিবর্তিত হতে পারে। উদাহরণস্বরূপ, যদি আপনার সিড করা ফাইলগুলো আগে `D:\Downloads`-এ ছিল, তবে উইন্ডোজ পুনরায় ইনস্টল করার পর `D:` এখনও `D:` রয়েছে তা নিশ্চিত করুন। প্রয়োজন হলে, উইন্ডোজ ডিস্ক ম্যানেজমেন্ট (`diskmgmt.msc`) ব্যবহার করে ড্রাইভ লেটার অ্যাডজাস্ট করুন।

### ১. ব্যাকআপ প্রক্রিয়া

1. `backup_qBittorrent.bat` ফাইলটি ডাবল-ক্লিক বা কমান্ড প্রম্পট থেকে চালান।  
   
2. স্ক্রিপ্টটি স্বয়ংক্রিয়ভাবে `%localappdata%` এবং `%appdata%` ফোল্ডার থেকে `qBittorrent` ডাটা এবং কনফিগারেশন ফাইলগুলো কপি করে একটি নির্দিষ্ট ব্যাকআপ ফোল্ডারে (ডিফল্ট `D:\qBittorrentBackup`) সংরক্ষণ করবে।  

3. ব্যাকআপ সম্পূর্ণ হলে কমান্ড প্রম্পটে "Backup complete" বার্তাটি দেখা যাবে।  
   
4. এটি প্রয়োজনীয় ব্যাকআপ ডিরেক্টরি তৈরি করবে এবং `qBittorrent` ডাটা নির্ধারিত ফোল্ডারে কপি করবে।

### ২. রিস্টোর প্রক্রিয়া

1. `qBittorrent` ইনস্টল করুন এবং অন্তত একবার চালান। তারপর এটি বন্ধ/বের করুন। আপনি `Ctrl+Q` ব্যবহার করে বন্ধ করতে পারেন।

2. রিস্টোর করার আগে নিশ্চিত করুন যে `qBittorrent` বন্ধ রয়েছে (টাস্ক ম্যানেজারে চেক করে নিশ্চিত করুন যে এটি চলছে না)।

3. `restore_qBittorrent.bat` ফাইলটি ডাবল-ক্লিক বা কমান্ড প্রম্পট থেকে চালান।

4. স্ক্রিপ্টটি ব্যাকআপ ফোল্ডার থেকে ডাটা পুনরুদ্ধার করে মূল অবস্থানে ফিরিয়ে আনবে।

5. প্রক্রিয়া সম্পূর্ণ হলে `qBittorrent` চালান। আপনার সমস্ত টরেন্ট এবং সেটিংস পূর্বের অবস্থায় থাকবে।

### অতিরিক্ত: ব্যাকআপ লোকেশন পরিবর্তন করা

যদি আপনি ব্যাকআপ লোকেশন পরিবর্তন করতে চান, তবে নিম্নলিখিত লাইনটি উভয় স্ক্রিপ্ট (`backup_qBittorrent.bat` এবং `restore_qBittorrent.bat`) ফাইলে এডিট করুন:

*set backupPath=D:\qBittorrentBackup*

`D:\qBittorrentBackup`-এর পরিবর্তে আপনার ইচ্ছামতো লোকেশন দিন।

## সমস্যার সমাধান

- "Invalid path" ত্রুটি: যদি এই ত্রুটি দেখা যায়, তবে নিশ্চিত করুন যে ব্যাকআপ পাথটি সঠিক এবং বিদ্যমান।
- অনুমতি সংক্রান্ত সমস্যা: স্ক্রিপ্টগুলো প্রশাসকের অধিকার (Run as administrator) দিয়ে চালানোর চেষ্টা করুন।

---

## ম্যানুয়ালি ব্যাকআপ করার পদ্ধতি
এই গাইডটি অনুসরণ করুন = [.../main/How-to-backup-qBittorrent-Manually.md](https://github.com/almahmudbd/qBittorrentBackup/blob/main/How-to-backup-qBittorrent-Manually.md)

---

### স্ক্রিপ্ট উদাহরণ

#### ব্যাকআপ স্ক্রিপ্ট (`backup_qBittorrent.bat`)

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

#### রিস্টোর স্ক্রিপ্ট (`restore_qBittorrent.bat`)

```batch
@echo off
set backupPath=D:\qBittorrentBackup

echo Restoring qBittorrent data...
xcopy "%backupPath%\localappdata" "%localappdata%\qBittorrent" /s /e /y
xcopy "%backupPath%\appdata" "%appdata%\qBittorrent" /s /e /y

echo Restore complete. Your qBittorrent data has been restored.
pause
```

## লাইসেন্স

এই স্ক্রিপ্টগুলো "যেমন রয়েছে" ভিত্তিতে সরবরাহ করা হয়েছে, কোন প্রকার গ্যারান্টি ছাড়াই। নিজের ঝুঁকিতে ব্যবহার করুন।

