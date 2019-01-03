---
title: "[linux] Install Network Printer on Debian9 (Stretch)"
categories: linux
last_modified_at: 2018-11-18 23:00:00
use_math: false
tags: SL-M3870FW,Debian9,CUPS
toc: true
---

지금까지 windows10기반에서 ubuntu를 사용.
문제는 docker를 써야 하는데, Hyper-V에서 문제점으로 인해 계속해서 BSOD가 발생. 
결국, debian기반에 windows10을 virtualbox로 돌리기로 결정.

linux의 경우, 개발 및 프로그래밍은 문제가 없지만 메신저라던지 프린터 잡기가 꽤나 귀찮음.
거기다 linux를 데스크탑으로 안 쓰고 개발할 때만 사용한터라... 

환경 구축하는데 상당히 노가다 중...
==;;

각설하고 네트워크에 물려있는 삼성 (이제는 HP) 복합기 중 프린터를 연결한 작업 로그를 남김.

## Envrionments

* SL-M3870FW (Samsung) : [Site](https://www.samsung.com/sec/support/model/SL-M3870FW/) / [Driver ppd: 추천](http://www.openprinting.org/ppd-o-matic.php?driver=Postscript-Samsung&printer=Samsung-M337x_387x_407x&show=0)/ [Driver: origianl](http://org.downloadcenter.samsung.com/downloadfile/ContentsFile.aspx?CDSite=UNI_SEC&CttFileID=6354058&CDCttType=DR&ModelType=N&ModelName=SL-M3870FW&VPath=DR/201512/20151216092311577/uld_V1.00.37_00.99.tar.gz&OriginYN=N)
  * 흑백 복합기. 하지만 현재 나에겐 프린터만 되는 상태...
  * ppd파일을 이용한 설치만 성공했음. ==;;
* Debian 9.6 (Stretch) 


## Printer

* At frist, Download the driver for SL-M3870W and extract it.
```
tar xvfz uld_V1.00.37_00.99.tar.gz
```
* move the directory created from above command, and check the content
```
i386                install.sh            uninstall-scanner.sh
install-printer.sh  noarch                uninstall.sh
install-scanner.sh  uninstall-printer.sh  x86_64
```
* run the `install.sh`
```
sudo install.sh
```

* install CUPS package. (In my case, CUPS package has been already installed)
```
sudo apt-get install cups
```

* add the current account into the group of 'lpadmin'
```
sudo usermod -a -G lpadmin dsaint31
```

* connect the server of CUPS, `http://localhost:631/admin`, through the web browser.
* click the `Add Printer`
![add_printer] (https://docs.google.com/drawings/d/e/2PACX-1vTZPcF9nhoVxsLld_wSO9HbH_hMRJ76PaBSD_qFZsXHe0Aha7_a8xAChqS09nP_jwr2h5m9OpVCo2ZY/pub?w=366&h=341)
* log in
![login] (https://docs.google.com/drawings/d/e/2PACX-1vTWyKFQ5-4YnoPMRawubZT2smEfqI29YZePuDtojmar8mSfJv5l5-N4n3qJYWfOSrUW1FJ8XOn2-tpy/pub?w=366&h=341)
* select ipps (Internet Printing Protocol)
![ipps] (https://docs.google.com/drawings/d/e/2PACX-1vSUwkVC9yfFKDNxVfC4jRbE_wbJRIjc7L2FESDM3esRRAcs2ou6gZUbBJn0lFD3tlfl_G8a22JVb5sA/pub?w=366&h=341)
* enter the URI for network printer as follows:
![ipps] (https://docs.google.com/drawings/d/e/2PACX-1vQ-0ZbmCLH2oK5SRAZ6DlvO6SMezBVPA0xKjxDOjYT0AlxeV13QLEu2cXUJL1gTlG_9sBdVDLTYzE4z/pub?w=366&h=341) 
* enter the name of printer 
![add_name] (https://docs.google.com/drawings/d/e/2PACX-1vQgA3_LiQxL9I0FgvvgC0vJWrIVDLZpoDJX-qjOVeAoH_VN9PaH3E82jZUIMW07T_kGntiSKdftZAfs/pub?w=366&h=341)
* ~~select the manufacturer, 'SAMSUNG'~~ (다운 받은 tar에 있는 ppd로 설치할 예정이므로 아래로 곧장 직행.)
* click the `Provide a PPD File` and select the ppd file.
![ppd] (https://docs.google.com/drawings/d/e/2PACX-1vQ-JHiFKOfFP29ukNnQ_-4WvkT1sa1tJJFiHH4Ru5dPvf7buywd6BGbTx6R3CGetnAIF9_XQVGv5lNl/pub?w=351&h=344)
* the location of the ppd file is `[extracted_dir]/noarch/share/ppd/Samsung_M337x_387x_407x_Series.ppd`
  * 앞에서 ppd만 다운로드 한 경우엔, 다운로드 한 파일을 선택하면 됨.
![ppd2] (https://docs.google.com/drawings/d/e/2PACX-1vSXoRaGz9Mf9JymYj1VOaFty9aSs7CwPg1iMvq2KGMISuutH2AtEPbdci7KrLxQ5NUoSmbHHl65TZVV/pub?w=286&h=163)
* click 'Add Printer'


## Scanner

* 스캐너는 결국 실패함. 
*[The Samsung Unified Linux Driver Repository](https://www.bchemnet.com/suldr/index.html)의 SULDR의 scanner server를 설치에서 계속 fail...
* 일단, pyPdf 부터 debain9에선 설치가 안되어 우회하는 처리하는 등의 삽질 및 python3용으로 수정해보는 등을 했지만... 결국 실패.
  * [pyPdf 우회하기](http://zeroheure.info/how-to-install-odoo-on-latest-debian-ubuntu-without-python-pypdf-dependency/)
     * equivs를 이용하여 fake package를 만들어냄.
     * [같은 유저가 작성한 글](https://github.com/odoo/odoo/issues/17002)
* 다음 사이트는 성공하신 능력자님의 로그 : [SL-C472W](https://www.chungah.kr/sl-c472w_on_linux/)
  * 모델이 다른 부분 외에도 여러가지로 에러가...
  * 이전 debian이면 가능할 거 같기도한데... 
---
