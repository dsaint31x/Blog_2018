---
layout: post
title:  "[Python] 한국어 형태소 분석(KoNLPy) "
date:   2018-08-03 15:33:59
author: dsaint31
categories: Python
use_math: true
tags: KoNLPy
---

# KoNLPy
@(MachineLearning)[#KoNLPy, #형태소]

[한국어 형태소 처리 등을 위한 python package](http://konlpy-ko.readthedocs.io/ko/v0.4.3/).
이 문서는 KoNLPy를 conda를 통해 설치하면서 남긴 로그임.
Windows10에서 WSL을 통해 설치함 (2018.07.20).

### 0. conda 환경
```
conda create -n wk
conda activate wk
```

### 1. Ubuntu에 open-jdk설치.

터미널을 열어
```
sudo apt-get install openjdk-9-jdk
```
`openjdk-9-jdk`가 존재하지 않는다고 뜰 경우, PPA repository에 없는 경우로, repository추가 필요.

```
sudo add-apt-repository ppa:openjdk-r/ppa 
sudo apt-get update
```
이 후 다시 open-jdk설치.

### 1-1. open-jdk9설치 실패.
WSL에서 jdk9을 설치하는데 실패함 (Ubuntu 16.04 LTS).
아래와 같은 에러 메시지가 뜸.
> dpkg: error processing archive /var/cache/apt/archives/openjdk-9-jdk_9~b114-0ubuntu1_amd64.deb (--unpack): trying to overwrite '/usr/lib/jvm/java-9-openjdk-amd64/include/linux/jawt_md.h', which is also in package openjdk-9-jdk-headless:amd64 9~b114-0ubuntu1 dmesg: read kernel buffer failed: Function not implemented

### 1-2. open-jdk8 설치함.
때문에 open-jdk9 관련 패키지들을 삭제하고, open-jdk8로 설치함. g++ 및 python-dev, python3-dev도 같이 설치해줌.
```
sudo apt-get install g++ openjdk-8-jdk python-dev python3-dev
```

### 2. install jpype1
jpype1 (Python to Java bridge.)은 python에서 java의 class를 호출하게 해줌.
KoNLPy가 java기반 구현물을 python코드로 접근하게 하는 것인지라 반드시 설치해야 함.
```
conda install -c conda-forge jpype1 
```

### 3. intall KoNLPy
드디어 KoNLPy 설치를 함.
```
pip install konlpy
```
### 4. MeCab 설치.
가장 한국어 형태소를 잘 처리되는 MeCab 형태소 분석기 엔진을 설치함. 기본으론 optional인지라 설치가 필요함.
MeCab은 `은전한닢 프로젝트`(http://eunjeon.blogspot.com/2013/02/blog-post.html)의 결과물로서 이 프로젝트는 `검색에서 쓸만한 오픈소스 한국어 형태소 분석기를 만들자.`라는 모토아래 진행 중임.

```
bash <(curl -s https://raw.githubusercontent.com/konlpy/konlpy/master/scripts/mecab.sh)
```

MeCab library 로딩 실패 에러 발생 시 다음을 수행.
```
sudo ldconfig
```

해당하는 에러메시지는 다음과 같음. 동적으로 링크되는 라이브러리가 제대로 동작하지 않는다는 에러.
```
mecab: error while loading shared libraries: libmecab.so.2: cannot open shared object file: No such file or directory
```

MeCab 설치 확인
```
mecab -d /usr/local/lib/mecab/dic/mecab-ko-dic
```
위와 같이 실행 시 제대로 수행되면 잘 설치 된 것임.

### 5. wordcloud 설치

python용 wordcloud를 설치하는 과정임.
wordcloud를 사용하지 않을 경우, 생략해도 됨.
[conda package of wordcloud](https://anaconda.org/conda-forge/wordcloud)

```
conda install -c conda-forge wordcloud
```
