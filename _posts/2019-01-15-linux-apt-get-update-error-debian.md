---
title: "[Debian] `apt-get update error1 on the Debian9 (Stretch)"
categories: linux
last_modified_at: 2019-01-15 13:51:00
use_math: false
tags: Debian 
toc: true
---

# [Debian] apt-get update error 해결
@(Linux)

### 문제점

카카오톡이랑 프린터 잡다가, repo. 리스트가 너무 엉망이 되어버림.
`sudo apt-get update`수행시 아래와 같은 에러가 잔뜩 나옴.
```
...상단 에러 생략...
W: Target Translations (main/i18n/Translation-en_US) is configured multiple times in /etc/apt/sources.list:7 and /etc/apt/sources.list:22
W: Target Translations (main/i18n/Translation-en) is configured multiple times in /etc/apt/sources.list:7 and /etc/apt/sources.list:22
W: Target Translations (main/i18n/Translation-ko) is configured multiple times in /etc/apt/sources.list:7 and /etc/apt/sources.list:22
W: Target DEP-11 (main/dep11/Components-amd64.yml) is configured multiple times in /etc/apt/sources.list:7 and /etc/apt/sources.list:22
W: Target DEP-11 (main/dep11/Components-all.yml) is configured multiple times in /etc/apt/sources.list:7 and /etc/apt/sources.list:22
W: Target DEP-11-icons (main/dep11/icons-64x64.tar) is configured multiple times in /etc/apt/sources.list:7 and /etc/apt/sources.list:22
W: Target DEP-11-icons-hidpi (main/dep11/icons-128x128.tar) is configured multiple times in /etc/apt/sources.list:7 and /etc/apt/sources.list:22
Error executing command, exiting
```

### 해결책.

이런 이유로 정리에 돌입. ==;;
바쁠 때 꼭 이런 문제 생김.
귀찮아서 일단, root계정으로 작업을 수행함.

`/etc/apt/sources.list` 목록 확인.
```
deb http://ftp.kr.debian.org/debian/ stretch main contrib non-free
deb http://security.debian.org/debian-security stretch/updates main contrib non-free
deb http://ftp.kr.debian.org/debian/ stretch-updates main contrib non-free



deb http://ftp.kr.debian.org/debian/ stretch main
deb-src http://ftp.kr.debian.org/debian/ stretch main

deb http://security.debian.org/debian-security stretch/updates main
deb-src http://security.debian.org/debian-security stretch/updates main

deb http://ftp.kr.debian.org/debian/ stretch-updates main
deb-src http://ftp.kr.debian.org/debian/ stretch-updates main
deb https://dl.winehq.org/wine-builds/debian/ stretch main
deb https://dl.winehq.org/wine-builds/ubuntu/ stretch main

deb http://www.bchemnet.com/suldr/ debian extra
```

debian 버전 체크
```
root@dsaint31:/etc/apt# lsb_release -a
No LSB modules are available.
Distributor ID:	Debian
Description:	Debian GNU/Linux 9.6 (stretch)
Release:	9.6
Codename:	stretch
```

충돌이 나고 있는 `sources.list.d` 의 내용을 확인
```
root@dsaint31:/etc/apt# cd /etc/apt/sources.list.d/
root@dsaint31:/etc/apt/sources.list.d# ls
docker.list		 
nvidia-docker.list	  
virtualbox.list.save
docker.list.save	 
nvidia-docker.list.save  
wine-ubuntu-wine-builds-disco.list
google-chrome.list	 
playonlinux.list	  
wine-ubuntu-wine-builds-disco.list.save
google-chrome.list.save  
virtualbox.list
```

충돌을 해결하기 위해 `/etc/apt/sources.list`를 편집하기로 함.
그전에 일단 백업
```
root@dsaint31:/etc/apt# cp sources.list sources.list.20180115
```

이후 `sources.list` 편집하여 `repo` 리스트를 초기화..
```
root@dsaint31:/etc/apt# vi sources.list
```
새 `sources.list` 의 내용은 다음과 같음.
```
#---------------------------------------------
# deb cdrom:[Debian GNU/Linux 9.5.0 _Stretch_ - Official amd64 NETINST 20180714-10:25]/ stretch main

# deb cdrom:[Debian GNU/Linux 9.5.0 _Stretch_ - Official amd64 NETINST 20180714-10:25]/ stretch main

deb http://ftp.kr.debian.org/debian/ stretch main
deb-src http://ftp.kr.debian.org/debian/ stretch main

deb http://security.debian.org/debian-security stretch/updates main
deb-src http://security.debian.org/debian-security stretch/updates main

# stretch-updates, previously known as 'volatile'
deb http://ftp.kr.debian.org/debian/ stretch-updates main
deb-src http://ftp.kr.debian.org/debian/ stretch-updates main
```

충돌이 나는 `sources.list.d`를 초기화하기 전에 일단 백업.
```
root@dsaint31:/etc/apt# cd sources.list.d/
root@dsaint31:/etc/apt/sources.list.d# cd ..
root@dsaint31:/etc/apt# cp -r sources.list.d sources.list.d.20180115
```

드디어 `sources.list.d` 초기화
```
root@dsaint31:/etc/apt# cd sources.list.d
root@dsaint31:/etc/apt/sources.list.d# rm *
root@dsaint31:/etc/apt/sources.list.d# ls
root@dsaint31:/etc/apt/sources.list.d# cd ..
```

`/var/cache/apt/archives/`에 캐쉬된 모든 패키지 삭제하고 `/etc/apt/sources.list`를 참조로 사용할 수 있는 패키지 DB를 업데이트

```
root@dsaint31:/etc/apt# sudo apt clean
root@dsaint31:/etc/apt# sudo apt update
Hit:1 http://security.debian.org/debian-security stretch/updates InRelease
Ign:2 http://ftp.kr.debian.org/debian stretch InRelease        
Hit:3 http://ftp.kr.debian.org/debian stretch-updates InRelease
Hit:4 http://ftp.kr.debian.org/debian stretch Release
Reading package lists... Done
Building dependency tree       
Reading state information... Done
1 package can be upgraded. Run 'apt list --upgradable' to see it.
root@dsaint31:/etc/apt# apt list --upgradable
Listing... Done
libzmq5/stable 4.2.1-4+deb9u1 amd64 [upgradable from: 4.2.1-4]
N: There is 1 additional version. Please use the '-a' switch to see it
root@dsaint31:/etc/apt# 
```

업그레이드할 패키지 존재한다고 해서 잠시 확인하고 업그레이드함.
```
root@dsaint31:/etc/apt# apt list --upgradable -a
Listing... Done
libzmq5/stable 4.2.1-4+deb9u1 amd64 [upgradable from: 4.2.1-4]
libzmq5/stable,now 4.2.1-4 amd64 [installed,upgradable to: 4.2.1-4+deb9u1]
root@dsaint31:/etc/apt# cd /var/cache/apt/
root@dsaint31:/var/cache/apt# exit
exit
dsaint31@dsaint31:/var/cache/apt$ sudo apt upgrade libzmq5
패키지 목록을 읽는 중입니다... 완료
의존성 트리를 만드는 중입니다       
상태 정보를 읽는 중입니다... 완료
업그레이드를 계산하는 중입니다... 완료
다음 패키지가 자동으로 설치되었지만 더 이상 필요하지 않습니다:
  libuv1
Use 'sudo apt autoremove' to remove it.
다음 패키지를 업그레이드할 것입니다:
  libzmq5
1개 업그레이드, 0개 새로 설치, 0개 제거 및 0개 업그레이드 안 함.
201 k바이트 아카이브를 받아야 합니다.
이 작업 후 0 바이트의 디스크 공간을 더 사용하게 됩니다.
계속 하시겠습니까? [Y/n] y
받기:1 http://security.debian.org/debian-security stretch/updates/main amd64 libzmq5 amd64 4.2.1-4+deb9u1 [201 kB]
내려받기 201 k바이트, 소요시간 0초 (211 k바이트/초)
Reading changelogs... Done
(데이터베이스 읽는중 ...현재 276691개의 파일과 디렉터리가 설치되어 있습니다.)
Preparing to unpack .../libzmq5_4.2.1-4+deb9u1_amd64.deb ...
Unpacking libzmq5:amd64 (4.2.1-4+deb9u1) over (4.2.1-4) ...
libzmq5:amd64 (4.2.1-4+deb9u1) 설정하는 중입니다 ...
Processing triggers for libc-bin (2.24-11+deb9u3) ...
dsaint31@dsaint31:/var/cache/apt$ 
```

다시 업데이트해보고 정상적으로 나옴을 확인함.
```
root@dsaint31:/etc/apt# apt-get update
Ign:1 http://ftp.kr.debian.org/debian stretch InRelease
Hit:2 http://ftp.kr.debian.org/debian stretch-updates InRelease
Hit:3 http://ftp.kr.debian.org/debian stretch Release                                                   
Hit:5 http://security.debian.org/debian-security stretch/updates InRelease                              
Reading package lists... Done
root@dsaint31:/etc/apt# 
```




