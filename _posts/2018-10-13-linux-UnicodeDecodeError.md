---
title: "[Linux] UnicodeDecodeError"
categories: 
  - Linux
last_modified_at: 2018-10-13

toc: true
---

# [Linux] UnicodeDecodeError 

@(Linux)

###  UnicodeDecodeError with Python [Debian]

* 발생 일시 : 2018.10.12

#### 경과

* 과제 진행 중 처리했던 TSV파일이 index계산에 버그가 있었음.
* 수정을 하려고 docker로 운영중인 새 환경에서 열었더니 다음과 같은 에러발생.
* `Python UnicodeDecodeError: ‘ascii’ codec can’t …`
* Docker에 Debian으로 구축한 새 환경에선 한글이나 한문 등의 문자 데이터 처리를 안 했던터라...
* 간단한 버그 수정이었는데... 갑자기 Debian의 한글 관련 처리를 하게됨.

#### 해결법

* python2.x의 경우, 한글관련 문제에 대한 글이 있었으나 현재 환경이 다음과 같아 관련성이 없었음.
  * conda 4.5.11 
  * python 3.6.6
  * debian 9.5 (stretch)
* docker의 이미지에서 설치할 때, machine learning관련 패키지만 신경써서 아예 한글을 위한 locale이 설치안된 게 문제였음.
  * `apt-get install locales` 을 수행해서 locales패키지 설치.
  * `sudo dpkg-reconfigure locales` 를 수행해서 `ko_KR.UTF-8`을 설치.(`ko_KR.EUC-KR`을 설치해도 될 듯하지만, python이 `UTF-8`을 쓰는 터라.)
  * `vi ~/.bashrc`를 통해 아래의 내용을 추가해줌.
```
export LC_ALL=ko_KR.UTF-8 // 한글 입력 관련
export LANG=ko_KR.UTF-8
export LANGUAGE=ko_KR.UTF-8
```
 * `. ~/.bashrc`를 수행해서 적용.

#### 기타

* ubuntu에 너무 익숙해진 듯하다. 게다가 WSL로 계속 쓰다보니... debian이 좀 꼬인다.
* 일이 너무 많다 보니... ==;; 뭔가 정리를 하고 가기 보다 급하게 해결만하고 넘어가서 계속 잊는다. 

