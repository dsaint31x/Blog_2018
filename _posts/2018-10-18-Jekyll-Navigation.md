---

title: "[Jekyll] 상단 Navigation에 메뉴 추가하기"
author: dsaint31
last_modified_at: 2018-10-18 18:00:00
categories: 
  - github.io
use_math: true
tags: 
  - Navigation
toc: true
---

# [Jekyll] 상단 Navigation에 메뉴 추가하기.

@(Jekyll)

학과 홈페이지를 좀 수정하다보니, 내 블로그에 대한 생각이 들어서 작업에 들어감.

Jekyll이 아직도 어색한 부분이 큼. 사실 markdown문법을 익숙해지면서 github 명령어 잊지 않으려는 의도로 시작하긴 했지만, Jekyll이 익숙치 않다보니 필요이상으로 시간이 들게 되는 경우가 많음. 한번 정리를 하긴 해야할 듯...

우선, 목표로 한 건 publication관련 정보와 개인 정보를 추가 및, 연도별 post정리된 archive 페이지를 추가하기로 하고 manual에서 찾기 시작.

간단히 요약하면 다음과 같음.

1.`_data` 디렉토리의 `navigation.yml`을 다음과 같이 수정한다.

```
# main links
main:
  - title: "Quick-Start Guide"
    url: https://mmistakes.github.io/minimal-mistakes/docs/quick-start-guide/
  - title: "Category"
    url: "/categories/"
  - title: "Archive"
    url: /year-archive/
  - title: "About"
    url: "/about/"
  - title: "Publications"
    url: "/publications/"
```

2.`_pages` 디렉토리에 추가하고자 하는 개인소개 페이지에 해당하는 markdown 파일 `about.md`과 publication정보를 가진 `publications.md`파일을 추가하고 내용을 다음과 같이 작성.

**about.md 파일**
```
---
permalink: /about/
title: "About"
excerpt: "about.md"
last_modified_at: 2018-07-01T12:04:24-04:00
toc: true
tags: [About]
---
쓸 내용들
```

**publications.md 파일**
```
---
permalink: /publications/
title: "Publications"
excerpt: "publications.md"
last_modified_at: 2018-10-18 17:13:00
toc: true
tags: [publication]
---

## Journal
쓸내용들
```

3.년단위 post를 보여주는 `year-archive.html`을 추가함. 

[**year-archive.html 파일 링크**](https://github.com/dsaint31x/Blog_2018/blob/gh-pages/_pages/year-archive.html)


4.이후 `git add`와 `git commit`을 수행해주고, `git push`로 마무리.

> *  `year-archive.html`은 꽤 보기 불편하다. 좀더 개선된 방식이 있는지 뒤져봐야할 듯.
> * ==;; 실적 리스트를 보니 연구 무지 안하고 논 거 같다. 열심히 하지만... 쉽지 않네.
