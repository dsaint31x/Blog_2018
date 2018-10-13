---
title:  "[Computer] 원격제어 (ipTIME+Windows10) "
author: dsaint31

last_modified_at:   2018-08-06 15:33:59
categories: 
  - Computer
use_math: true
tags: 
  - ipTime 
  - Remote 
  - Windows10
---

# Remote Desktop for Windows 10
@(Computer)[#iptime, #remote]

## Port Forward of ipTIME A2004NS-R

* `고급설정` > `NAT/라우터 관리` > `포트포워드 설정`
* Windows에서 원격데스크탑 포트는 기본이 **3389**임.
* 이를 내부포트로 하고, 외부포트는 편한 것으로 설정.
* 만약 방화벽이 ipTIME 밖에 있다면 해당 방화벽 관리자에게 요청하여 해당 ip와 아까 지정한 외부포트를 알려주고 열어달라고 해야 함.

## 원격 데스크톱 기능 켜기

* `Windows`+`Pause` 를 눌러서 시스템 설정 다이알로그를 연다.
* ![Alt text](https://docs.google.com/drawings/d/e/2PACX-1vQr097ClCWareefavyA6uNXGZmELWMTyGXELoCozPFYjkpKIPbD3XQl5Xuc8lJQ3Mr-Bw85wYdm9K4S/pub?w=926&h=634)
* `원격 설정` 을 클릭하고 `원격데스크톱` 에서 `이 컴퓨터에 대한 원격 연결 허용`을 선택.
* ![Alt text](https://docs.google.com/drawings/d/e/2PACX-1vS0zmvk8Kvz4PvoYUGCy6Uf0xZocXREfnoQimaXcNiBOuoiXXS7cKkKwjEPMWh3lRKGKePQ8AnfV01P/pub?w=486&h=539)

## ipTIME WOL 설정

* 절전모드 사용시 원격데스크톱 정상동작하지 않음.
* `고급설정`>`보안기능`>`공유기 접속/보안관리`
* 오른쪽 패널 상단의 `외부 접속 보안`에서 `원격 관리 포트 사용`을 선택하고 `원격 관리 포트`를 지정하고 `적용` 클릭
* ![Alt text](https://docs.google.com/drawings/d/e/2PACX-1vSNu94MFwdjoLo4HreG5qcxRRBXnwfEa1SXdUdVBu7QsIsmcHMIjtTS7GTB3kUBJSQnG5UB9le5B_Bz/pub?w=878&h=571)
* ipTIME 이 방화벽 내부에 있다면, `원격 관리 포트`로 지정한 포트는 해당 방화벽에서 open해줘야 함.
* ipTIME의 `외부 IP 주소`와 해당 포트번호를 방화벽 관리자에게 알려줘야함.
* `고급설정`>`특수기능`>`WOL 기능`
* WOL 기능을 이용하고자 하는 장비의 MAC address를 기재하고 `추가`클릭 (해당 장비로 ipTIME관리웹어플리케이션에 접속한 경우, `현재 접속된 PC의 주소로 설정`을 이용하면 편함)
* ![Alt text](https://docs.google.com/drawings/d/e/2PACX-1vQtY35sChY62sC-JuMamQVdRmHzf_W5GiIdsNREv2BpoTxlVRIVcm-j4r-tUf5DLuH_1y7nIcvwLgc0/pub?w=870&h=569)
* 외부에서 접속을 하기 위해서 `DDNS 설정`을 하는게 편함.
* `고급설정`>`특수기능`>`DDNS 설정`
* 사용할 `호스트이름`을 설정하고, 사용자 ID(e-mail주소)를 입력하고 `DDNS 등록`을 클릭.
   * 사용자 ID 하나당 하나의 호스트 이름만 가능함. 
   * ![Alt text](https://docs.google.com/drawings/d/e/2PACX-1vSRerWWLk1xXlfmKyYFHF9rkFRNFq0RCSmL1bD5vQHnS_D8Ny4qBykgY752G8BZLzgkvwEcQJAE0_zH/pub?w=875&h=562)
*  WOL이용하기.
   * 안드로이드폰
       * 안드로이드 폰 에서 `play store`에서 `ipTIME WOL` 앱을 검색하고 설치.
       * 앱에서 아까 지정한 DDNS의 호스트이름으로 장비를 추가하고, ipTiIME 관리자 아이디와 패스워드등을 설정.
   * 다른 컴퓨터에서 웹브라우저 이용.
       * 웹브라우저에서 지정한 DDNS의 호스트이름을 URL에 입력.
       * `고급설정`>`특수기능`>`WOL 기능`
       * 켜고자 하는 장비의 MAC주소가 기재된 행의 `PC 켜기`의 체크 박스를 선택하여 해당 장비의 절전 기능에서 나오게 함.
