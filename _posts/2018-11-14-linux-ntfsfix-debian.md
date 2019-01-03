---
title: "[linux] How to fix a corrupted NTFS filesystem which commonly can be mounted read-only on Debian9 (Stretch)"
categories: linux
last_modified_at: 2018-11-14 09:00:00
use_math: false
tags: NTFS,Debian,ntfsfix
toc: true
---

So I am using Debian9, but i found that my NTFS partitions (sdc2) are mounted as read-only.

Following is the messgae I got.

```
The disk contains an unclean file system (0, 0).
Metadata kept in Windows cache, refused to mount.
Falling back to read-only mount because the NTFS partition is in an
unsafe state. Please resume and shutdown Windows fully (no hibernation
or fast restarting.)
```

After all, I can correct this problem by using `ntfsfix`

```
dsaint31@dsaint31:/mnt/g_drv$ sudo ntfsfix /dev/sdc2
Mounting volume... The disk contains an unclean file system (0, 0).
Metadata kept in Windows cache, refused to mount.
FAILED
Attempting to correct errors... 
Processing $MFT and $MFTMirr...
Reading $MFT... OK
Reading $MFTMirr... OK
Comparing $MFTMirr to $MFT... OK
Processing of $MFT and $MFTMirr completed successfully.
Setting required flags on partition... OK
Going to empty the journal ($LogFile)... OK
Checking the alternate boot sector... OK
NTFS volume version is 3.1.
NTFS partition /dev/sdc2 was processed successfully.
int31@dsaint31:/mnt/g_drv$ echo "test" > test_echo.txt
```
