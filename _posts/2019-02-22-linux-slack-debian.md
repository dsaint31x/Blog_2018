---
title:  "[slack] Linux 설치(for debian9.0)"
last_modified_at:   2019-02-22
author: dsaint31
categories: 
  - slack
use_math: false
tags: 
  - Linux 
  - slack
---

# Slack Client 설치하기.

slack의 경우, 크롬과 같은 브라우저에서도 사용가능하지만, 기능을 100%활용하려면 클라이언트 설치가 낫다. 
현재, slack의 경우 거의 대부분의 OS와 디바이스를 지원한다.
이 문서는 linux (그중에서 Debian 9)에서의 설치 과정에 대한 로그이다.

> 현재(2019.2.22) linux의 경우엔 beta버전임.

### Download

아래 링크가 다운로드 URL임.

* [Slack for Linux](https://slack.com/downloads/linux)

Debian에 설치하므로 deb 파일을 선택한다.(Ubuntu도 마찬가지.)
Redhat계열(Fedora 등)일 경우, rpm파일을 선택.

### Install

1) 다운로드한 deb파일이 있는 디렉토리로 이동.

2) dpkg로 설치.
```bash
dsaint31@dsaint31:~/ToClear$ sudo dpkg -i ./slack-desktop-3.3.7-amd64.deb 
[sudo] dsaint31의 암호: 
Selecting previously unselected package slack-desktop.
(데이터베이스 읽는중 ...현재 292763개의 파일과 디렉터리가 설치되어 있습니다.)
Preparing to unpack .../slack-desktop-3.3.7-amd64.deb ...
Unpacking slack-desktop (3.3.7) ...
slack-desktop (3.3.7) 설정하는 중입니다 ...
Processing triggers for gnome-menus (3.13.3-9) ...
Processing triggers for desktop-file-utils (0.23-1) ...
Processing triggers for mime-support (3.60) ...
dsaint31@dsaint31:~/ToClear$ 
```

3) 만약, 의존성 검사에 문제가 일어날 경우 아래를 수행.
```bash
sudo apt --fix-broken install
```

4) Debian9의 경우, x-window 데스크탑의 분류 중 Internet에 설치된 slack이 보였음.

### Other approache

[다른 방법](https://packagecloud.io/slacktechnologies/slack/install)

