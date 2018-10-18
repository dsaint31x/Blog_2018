---
title:  "[Docker] Hyper-V 로 Docker사용시 BSOD 발생(Windows 10)"
last_modified_at: 2018-10-17
categories: Docker
use_math: false
tags: BSOD Hyper-V Windows10 vmswitch.sys
toc: true
---

### Environment

* Windows 10 Pro (64bit)
  * version : 1803 
  * os build : 17134.345
* Docker 
  * Version 18.06.1-ce-win73 (19507)

### Log
* Windows 10에서 Docker를 사용하는 경우 2가지 option이 있는데, 그중 Hyper-V를 사용하는 경우가 보다 빠름.
* 하지만, Windows 10에서 Docker를 실행시키면서 BSOD( Bluescreen of Death, 속칭 blue screen)를 2~3일에 한번 정도 보게됨.
* 기존에 Windows 10에서 거의 못보던 BSOD가 2~3일에 한번 볼 정도로 빈번하게 발생함에 따라 googling과 event viewer를 검토.
  * 기존의 다른 유저들도 Windows10에서 Hyper-V로 인한 같은 문제가 보고된 상태임. [사례1](https://answers.microsoft.com/ko-kr/windows/forum/windows_10-update/%EC%9C%88%EB%8F%84%EC%9A%B010/fd2956f7-8675-4d2b-aa43-ed9c7b9e2d53)
* 실제 windows 10이 죽은 이후 보이는 메시지는 다음과 같음.
```
vmswitch.sys : driver_irql_not_less_or_equal
```



### Result
* Hyper-V의 Network Adapter에 문제가 있는 것으로 추정됨. 
* 일단, Docker 로 서비스를 직접적으로 이용하지 않을 때는 windows10의 해당 Network Adapter를 disable시켜 놓자, 문제가 일어나지 않음 (현재 3일 경과)
  * 다른 Windows10 유저 분 중에 Hyper-V 사용시 같은 문제가 있어 같은 해법을 적용시키신 사례 있음 [사례2](http://blog.naver.com/PostView.nhn?blogId=hupers&logNo=221291675542&categoryNo=6&parentCategoryNo=0&viewDate=&currentPage=1&postListTopCurrentPage=1&from=postView)
* Hyper-V만의 문제인 경우엔 Hyper-V의 관리화면에서 해당 Virtual System의 설정에 들어가 기존의 Network Adapter를 제거하고 Legacy Adapter를 추가하면 된다고 하는데, 문제는 Docker가 사용하는 Virtual System에서 Legacy Adapter 추가가 되지 않음.
  *  [참고 사이트](http://blog.elmitash.com/307)
*  Jupyter lab 을 docker로 설치한 경우... 이용이 제한받을 수 밖에 없음. ==;;
* 일단 Windows 10의 Update를 기다리는 수 밖에 없을 듯 함.
  * Linux를 host OS로 하고, windows 10을 virtual box로 돌리는 것을 심각하게 고민해봐야 할 듯...
