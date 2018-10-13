---
layout: post
title:  "[Etc] Windows 10의 1803 update후 chrome이 접속지연에러 문제 해결."
date:   2018-07-20 20:33:59
author: dsaint31
categories: Etc
use_math: false
tags: Chrome, bug
---
# [BUG_FIX] ERR_CONNECTION_TIMED_OUT error of Chrome after Windows 10 1803 update.
@(HOWTO)

Windows 10의 1803 Update를 하고 나면, 다른 웹 브라우저들은 괜찮은데 Chrome만 `ERR_CONNECT_TIMED_OUT` error가 발생하면서 아예 웹서핑이 안됨.

> [Windows 10 April 2018 Update 다운로드](https://www.microsoft.com/ko-kr/software-download/windows10)
> Windows 10을 새로 설치하고 나서 받다보면 시간도 오래 걸리고 계속 실패함. 
> 위 링크에서 exe 파일을 받아 처리하는게 차라리 나음.

1803 update 하고나면 chrome이 Windows 10의 서비스 중 하나인 `Cryptographic Services`와 문제를 일으켜서 cpu usage를 보면 해당 서비스가 매우 높은 점유율을 보이면서 문제를 일으키는 것을 볼 수 있음. 
[관련링크](https://productforums.google.com/forum/#!topic/chrome/s5S1uPI0kMc)

아래와 같이 MS사도 5.8 에 업데이트를 통해 이 문제를 수정했다고 하지만, windows 10을 재설치하고 1803 업데이트를 받아 설치하고 나서 다시 이 문제 수정한 update를 받기까지 기다리기 어려울 경우가 있음.
> Microsoft is aware of some of the problems and is targeting a fix with the May 8 monthly updates.  

이를 직접 수정하는 방법은 `regedit`를 통해 이루어짐.

[관련링크](https://productforums.google.com/forum/#!msg/chrome/s5S1uPI0kMc/PVBgVbx6DAAJ)

----
### 따라하기.
1. Chorme을 종료시킴.
2.  Cryptographic Services를 종료시킴.
   * `Windows키` + `R` 를 통해 `services.msc` 실행.
   * `Cryptographic Services`를 찾아 종료시킴.
	
3.  `regedit` 실행 (레지스터 편집기) 
4.  다음의 항목을 찾아갈것
   > HKEY_CURRENT_USER\Software\Microsoft\SystemCertificates\Root\ProtectedRoots

5. 한 단계 위의 `Root`에서 내보내기를 통해 백업.
   * `Root`밑의 `Certificates`를 클릭하여 cert ID가 있는지 살펴보고, 없으면 백업이 필요하지 않음.
   * Windows 10을 설치하고 1803 업데이트를 바로 한 경우 대부분 비워있음.

6. `Root` 밑의 `ProtectedRoots`로 이동.
7. 오른 클릭하고 `사용권한`을 클릭.
8. 클릭 후 나타난 다이알로그에서 `고급`을 클릭
   * 이 때, `reodering ~~` 를 하라는 메시지가 뜸. reodering할 것.
9. 상단의 소유자를 현재 계정 이 아닌 경우, 현재 소유자로 변경.
   * `변경` 클릭하고 이후 뜬 다이알로그에서 `고급` 클릭. 
   * 그리고 뜬 이후 뜬 다이알로그에서 `지금 찾기`를 클릭하고 맨 아래에 나온 계정들 중 현재 로그인한 계정을 선택.
10. `확인`을 클릭하고 `고급`을 클릭하여 뜬 다이알로그를 닫음.
11. 이후 현재 계정에 모든 권한을 주고 상속을 사용할 것.
12. `확인`을 클릭하여 뜬 다이알로그를 닫고 `regedit`로 돌아감.
13. `Root`를 삭제. 이후 다시 시스템에서 제대로 만들어주니 걱정하지 말것.
14. `regedit` 닫고, `services.msc`로 이동하여 `Cryptographic Services`를 재시작시킨다.
15. 다시 `regedit`실행시키고 아까 위치에 `Root`가 만들어졌는지 확인.
16. `Certificates`들이 아까와 다르면 아까 내보내어 저장한 reg파일을 이용하여 복구 (단, certificates가 없었다면 이 단계 생략.).
   * `Cryptographic Services` 다시 정지시킬 것.
   * import 이용하여 복구 (권한 어찌고 error가 나와도 ignore할 것).
   * import 시 `Cryptographic Services` 다시 시작됨.
17. `regedit`와 `services.msc` 다 닫고, Chrome실행.
18. 문제 없이 웹서핑이 되는지 확인.
