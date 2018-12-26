---
title: "[Docker] Summary of Commands"
last_modified_at: 2018-11-02 18:00:00
categories: Docker
use_math: true
tags: Navigation
toc: true
---

`docker images` 
* 현재 사용가능한 docker image들을 보여줌.
* 사용가능하다는 뜻은 container를 생성할 수 있는 image라는 뜻임.
```
REPOSITORY                                     TAG                            IMAGE ID            CREATED             SIZE
cuda9.0/tf                                     180807                         f981fe10bc84        6 days ago          9.06GB
nvidia/cuda                                    9.0-cudnn7-devel-ubuntu16.04   fde2f471fd51        2 weeks ago         2.61GB
mw/ub16.04_caffe-cuda9.0-py2.7                 2018-03-15                     5037f7726030        5 months ago        4.21GB
mw/ub16.04_caffe-cuda9.0-py2.7                 2018-03-14                     05a3d82542b2        5 months ago        4.14GB
mw/ub16.04_digits5.0                           2018-01-03                     d111f5cac5e4        7 months ago        1.86GB
mw/ub16.04_pytorch-cuda8.0-py3.5               2018-01-03                     0d06dda116e5        7 months ago        3.04GB
mw/ub16.04_theano-cuda8.0-py2.7-py3.5          2018-01-03                     cc72b04307ef        7 months ago        9.68GB
mw/ub16.04_tensorflow1.3-cuda8.0-py2.7-py3.5   2018-01-03                     63d663a6bc63        7 months ago        4.43GB
mw/ub16.04_itorch-cuda8.0-py2.7                2018-01-03                     6b388d2e50cb        7 months ago        6.94GB
mw/ub16.04_caffe2-cuda8.0-py2.7                2018-01-03                     45c6de7ee594        7 months ago        4.05GB
mw/ub16.04_caffe-cuda8.0-py2.7                 2018-01-03                     4ae4b19f52a6        7 months ago        3.61GB
```

`docker ps (-a)`
* 현재 container list를 확인.

`docker rm REPOSITORY:TAG`
* container 삭제
* rmi 일 경우 image삭제.

`docker run -ti REPOSITORY:TAG bash`
* `docker` image 실행.
* `-v $HOME/home_dir:/docker_dir` 호스트의 특정 디렉토리를 mount하는 일종의 여공유 파일시스템을 설정하는 것으로 docker container와 host간의 파일을 간편하게 전송할 수 있음.
* 아래의 예는 윈도우의 `d:\MMMIL\Project` 디렉토리를 docker에서 `/data`로 마운팅하여 사용하는 것을 보여줌. 
> docker run -ti -v "d:\MMMIL\Project":/data -p 8888:8888 dsaint31x/ds_debian:ml /bin/bash
* 위에서 `-p`옵션은 docker container의 포트를 host의 포트로 연결하는 포트포워딩을 지정하는데 사용됨.

```
docker run -ti -v /data1:/data1 nvidia/cuda bash
```


`docker commit`
* container를 image로 저장.
* 아래의 경우, CONTAINER_ID가 image로 저장될 source임.
* target의 REPOSITORY와 TAG를 지정함.
```
docker commit CONTAINER_ID REPOSITORY:TAG
```
* 실제 예
```
docker commit c6e372556f8a cuda9.0/tf:180807
```
* 상세설명
   * 여기서 `cuda9.0`은 respository명으로 사용됨.
   * dockerhub에 push하여 관리하고자 할 경우에 repostiroy명이 본인의 계정명과 일치해야함.
   * 로컬에서만 이용할 경우 없어도 상관없음.
   * `-m` 옵션을 이용하여 변경 내역에 대해 기록을 남겨도 됨.

`docker push dsaint31x/ds_debian:181010`

* image를 docker hub에 push시켜서 원격지에 올림.
* 개발 환경을 구축하고 해당 image를 올려두면 이후 모든 장비에서 docker만 있다면 같은 환경을 매우 쉽게 재 구축가능함.
* 1개의 private한 repository를 docker hub에선 제공하니 하나정도는 만들어두어도 좋음. 


### Example

1. REPOSITORY가 `nvidia/cuda`이고, TAG가 `9.2-cudnn7-devel-ubuntu16.04`인 image를 pull.
2. `docker images`로 이미지 추가되었는지 확인.
3. 해당 이미지를 동작시킴. `/data1/Brain_and_ML`를 `/data1`으로 공유함.
4. container에서 나와서, 해당 `CONTAINER_ID`확인.
5. 확인한 `CONTAINER_ID`의 container를 image로 저장.
```
docker pull nvidia/cuda:9.2-cudnn7-devel-ubuntu16.04
docker images
docker run -ti -v /data1/Brain_and_ML:/data1 -v /home/brain/setup:/setup nvidia/cuda:9.2-cudnn7-devel-ubuntu16.04 bash
docker ps -a
docker commit feb105c40144 tf/conda:tf19.0
```

### References
(https://ahribori.com/article/5912b3ee381ff41040995a40)
(https://help.ubuntu.com/community/EnvironmentVariables#A.2Fetc.2Fenvironment)
(https://www.digitalocean.com/community/tutorials/how-to-create-a-sudo-user-on-ubuntu-quickstart)
