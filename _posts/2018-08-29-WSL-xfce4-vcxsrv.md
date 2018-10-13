---
title:  "[Computer] WSL에서 window manager사용하기"
author: dsaint31

last_modified_at:   2018-08-29 15:33:59
categories: 
  - Computer
use_math: true
tags: 
  - ipTime 
  - Remote 
  - Windows10
---

# WSL + xfce4 + vcxsrv 

@(Computer)[#iptime, #remote]

## xfce4 설치

* 다음과 같이 설치가 가능

```
apt-get install xfce4
```

* terminal에서 `tab`자동완성이 안되는 문제 해결
   * `~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml` 을 편집
   * 다음 라인을 `<property name="&lt;Super&gt;Tab" type="string" value="switch_window_key" />`
   * 다음과 같이 수정 `<property name="&lt;Super&gt;Tab" type="empty" />`

## xrdp 설치.

* 다음과 같이 xrdp설처
```
sudo apt-get install xrdp
```
* window manager를 xfce4로 변경하기 위해 startwm.sh을 변경
```
sudo vi /etc/xrdp/startwm.sh
```

* `startwm.sh`의 내용은 다음과 같음.

```
#!/bin/sh

if [ -r /etc/default/locale ]; then
  . /etc/default/locale
  export LANG LANGUAGE
fi

#xrdp multiple users configuration
#xfce4-session
#. /etc/X11/Xsession

. /usr/bin/startxfce4
```
  * 주석처리한 경우도 동작은 하지만 로그아웃이 한번에 이뤄지지 않는 경우 발생.(포트변경시)
  
* xrdp 설정 변경은 `/etc/xrdp/xrdp.ini`에서 이뤄짐.
   * port변경 등등. 3398의 경우 이미 다른 원격에서 사용하는 경우 많음. 4000과 같은 것으로 변경시 편집 필요.
* xrdp 재시작하기 `sudo service xrdp restart` or `sudo /etc/init.d/xrdp restart`

## fcitx-hangul

* xfce4에 rdp로 접속시 한글이 안되는 문제 해결 위해.
* Ubutu16.04의 WSL에 fcitx-hangul 입력기를 설치.
* fcitx-hangul 설치하기.
```
sudo apt-get install fcitx-hangul
```
* 실행하기 : 우클릭 > 어플리케이션 > 시스템 > fcitx
* 이경우, 오른쪽 상단에 키보드 모양이 뜸.
* 문제는 gui기반 프로그램에서만 한글입력이 됨. terminal들은 먹통.==;

