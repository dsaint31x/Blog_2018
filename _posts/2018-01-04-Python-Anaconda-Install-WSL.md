---
title: "[Python] Anaconda Install (for WSL)"
categories: Python
last_modified_at: 2018-01-04 13:51:00
use_math: false
tags: Anaconda
toc: true
---
# Anaconda 설치 (3.6.x : linux

Ref. [https://docs.anaconda.com/anaconda/install/linux](https://docs.anaconda.com/anaconda/install/linux)

#### 1. 본인의 home디렉토리 밑에 setup디렉토리 만들고 설치 파일 다운로드

```
cd
pwd
mkdir setup
cd setup
```
* linux에서 인자 없이 `cd` 수행시 본인의 home directory로 이동.
* `pwd`로 경로 확인할 것. (present working directory)
* setup directory새로 생성하고 해당 경로로 이동.

#### 2. Download Anaconda 
* 터미널에서 CLI로 곧바로 다운로드할 수도 있고, 브라우저로 Anaconda 사이트 (https://www.anaconda.com/download/)로 가서 ubuntu용 설치파일을 받고, 받은 파일을 setup폴더로 `mv`시킬 수도 있음.

##### 2.a CLI로 bash에서 다운로드 받기.
```
curl -O https://repo.continuum.io/archive/Anaconda3-5.2.0-Linux-x86_64.sh
curl -O https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
```
##### 2.b 윈도우에서 다운로드 후 설치. 
* Chrome등의 브라우저를 통해, 특정 디렉토리에 다운로드하고, 터미널에서 아래 명령어를 통해 복사해 옴.
* 다운로드경로는 실제 경로로 변경해줘야 함.
```
mv [다운로드경로]/Anaconda3-5.0.1-Linux-x86_64.sh ./
```

#### 3. 설치 파일에 실행권한을 주고, 실행시켜서 설치 시작
* 실행권한 주고 셀 수행해서 설치 시작
```
chmod 777 Anaconda3-5.0.1-Linux-x86_64.sh
./Anaconda3-5.0.1-Linux-x86_64.sh
```

#### 4. 설치
```
Welcome to Anaconda3 5.0.1

In order to continue the installation process, please review the license
agreement.
Please, press ENTER to continue
>>>
===================================
Anaconda End User License Agreement
===================================
Copyright 2015, Anaconda, Inc.
All rights reserved under the 3-clause BSD License:
.
.
.
Do you accept the license terms? [yes|no]
[no] >>> yes

Anaconda3 will now be installed into this location:
/home/kge9595/anaconda3

  - Press ENTER to confirm the location
  - Press CTRL-C to abort the installation
  - Or specify a different location below

[/home/kge9595/anaconda3] >>>
PREFIX=/home/kge9595/anaconda3
installing: python-3.6.3-hc9025b9_1 ...
Python 3.6.3 :: Anaconda, Inc.
installing: ca-certificates-2017.08.26-h1d4fec5_0 ...
installing: conda-env-2.6.0-h36134e3_1 ...
installing: intel-openmp-2018.0.0-h15fc484_7 ...
installing: libgcc-ng-7.2.0-h7cc24e2_2 ...
installing: libgfortran-ng-7.2.0-h9f7466a_2 ...
installing: libstdcxx-ng-7.2.0-h7a57d05_2 ...
.
.
.
installing: _ipyw_jlab_nb_ext_conf-0.1.0-py36he11e457_0 ...
installing: jupyter-1.0.0-py36h9896ce5_0 ...
installing: anaconda-5.0.1-py36hd30a520_1 ...
installation finished.
Do you wish the installer to prepend the Anaconda3 install location
to PATH in your /home/kge9595/.bashrc ? [yes|no]
[no] >>> yes

Appending source /home/kge9595/anaconda3/bin/activate to /home/kge9595/.bashrc
A backup will be made to: /home/kge9595/.bashrc-anaconda3.bak


For this change to become active, you have to open a new terminal.

Thank you for installing Anaconda3!
kge9595@LAPTOP-2GD1K4I2:~/setup$
```

* 라이센스 조건에 동의하냐는 물음에 yes라 답할 것.
* installer가 Anaconda3 프로그램을 주어진 PATH에 설치해도 되냐는 물음에 yes라 답할 것.(no라고 대답할 시, path를 지정해줘야함)

#### 5. TensorFlow를 위한 conda environment 생성.
	
```	
kge9595@LAPTOP-2GD1K4I2:~/setup$python --version
Python 3.6.3 : : Anaconda, Inc .
kge9595@LAPTOP-2GD1K4I2:~/setup$conda create -n tensorflow python=3.6
```
* python 버전을 확인한 후에 python=X.X 라고 입력해 줄 것 (minor version까지만 맞춰주면됨.

* Anaconda 설치 시의 Python 버전과 맞출 필요는 없음. 생성하는 환경(위 예제의 경우 tensorflow라는 이름의 환경)에 설치하고 싶은 Python 버전을 입력하면 됨.
	* 2018.01.08(현재) TensorFlow r1.4와 가장 호환성이 높은 Python 버전은 Python 3.5이므로 다음을 입력할 것.
	* ```
conda create -n tensorflow python=3.5
```
	* Python 3.6에서 TensorFlow 1.4 임포트 시 warning 발생

### References

[https://docs.anaconda.com/anaconda/install/linux](https://docs.anaconda.com/anaconda/install/linux)


