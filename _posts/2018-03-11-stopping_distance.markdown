---
layout: post
title:  "[Physics] Stopping Distance"
date:   2018-03-11 15:47:59
author: dsaint31
categories: Physics
use_math: true
tags: physics
---

# [Physics] 정지거리 계산에 사용되는 공식 유도.
@(Physics)[#physics]

정지거리 계산에 사용된 다음의 공식 유도하기.(단, acceleration a는 상수임.)

$$ v(t)^{ 2 }-v(0)^{ 2 }=2ad $$


* 등가속도에서 시간 $t$에서의 속도는 다음과 같음.

$$ v(t)=v(0)+at $$

* 그리고, 등가속도에서 평균 속도는 다음과 같음.

$$ v_{ mean }=\frac { v(t)+v(0) }{ 2 }$$

* 평균 속도로 시간 $t$만큼 간 거리는 다음과 같음.

$$  \begin{align*} d & =v_{ mean }t \\ \quad  & =\frac { v(t)+v(0) }{ 2 } t \\ \quad  & =\frac { v(0)+at+v(0) }{ 2 } t \\ \quad  & =\frac { 2v(0)+at }{ 2 } t \\ \quad  & =\left\{ v(0)+\frac { at }{ 2 }  \right\} t \end{align*} $$

* 위의 기본적인 세개의 식으로부터 다음과 같이 유도됨.

$$\begin{align*} v(t)^{ 2 } & =v(0)^{ 2 }+2atv(0)+(at)^{ 2 } \\ \quad  & =v(0)^{ 2 }+2at\left\{ v(0)+\frac { at }{ 2 }  \right\}  \\ \quad  & =v(0)^{ 2 }+2a\left\{ v(0)+\frac { at }{ 2 }  \right\} t \\ \quad  & =v(0)^{ 2 }+2ad \end{align*} $$

$$\therefore v(t)^{ 2 }-v(0)^{ 2 }=2ad$$

일단 등가속도에서 시간 $t$에서의 속도에 대한 식으로 돌아가서, 양변을 제곱하고, 이후 식을 정리하여 d로 바꾸어주는 것임.
