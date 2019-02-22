---
title: "[linux] How to use nfs with synology on the Debian9 (Stretch)"
categories: linux
last_modified_at: 2018-12-04 09:00:00
use_math: false
tags: NFS Debian mount
toc: true
---

```
sudo mount -t nfs XXXX.synology.me:/volume1/nfs_directory /media/bme_synology -v -o vers=4
```

```
sudo umount /media/bme_synology
```

```
sudo showmount -e XXXX.synology.me
```

```
Export list for XXXX.synology.me:
/voulume1/bme_synology xxx.xxx.xxx.xxx
