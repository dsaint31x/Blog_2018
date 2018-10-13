---
layout: post
title:  "[Physics] Potential / Kinetic Energy"
date:   2018-03-19 01:11:59
author: dsaint31
categories: Physics
use_math: true
tags: physics
---
# Potential and Kinetic Energy
@(Physics)[#physics]

## 위치에너지
어떤 물체가 기준면으로부터 어떤 높이에 있을시, 그 물체가 가지는 에너지

$$E_p = mgh$$

* $E_p$ : potential energy
* m : mass
* g : gravitational accelation
* h : height

일-에너지 정리 에서 알수 있듯이 외부에서 물체에 일을 해주면 물체의 에너지는 증가함.

물체를 들어올릴 경우, 물체에 외부에서 한 일은 다음과 같음.

$$W=Fh$$

* W : work
* F : force
* h : height (들어올린 높이)

여기서 $ F=ma $를 이용하면 다음과 같음.

$$ E_p = mgh = Fh = W $$



## 운동에너지
어떤 물체가 움직이고 있을 때 가지는 에너지

$$E_k=\frac{1}{2}mv^2$$


* $E_k$ : kinetic energy
* m : mass
* v : velocity

일-에너지 정리 및 위의 위치에너지의 경우와 마찬가지로 이 운동에너지는 현재 v로 움지이는 물체가 완전히 정지하기까지 해줘야 하는 일의 크기와 같음. 즉, 다음과 같음.

$$ \begin{align*} E_{ k }=W & =Fd \\ \quad  & =mad \\ \quad  & =mav_{ mean }t \\ \quad  & =ma\frac { v+0 }{ 2 } t \\ \quad  & =ma\frac { 0+at+0 }{ 2 } t \\ \quad  & =m\frac { 1 }{ 2 } a^{ 2 }t^{ 2 } \\ \quad  & =m\frac { 1 }{ 2 } v^{ 2 } \\ \quad  & =\frac { 1 }{ 2 } mv^{ 2 } \end{align*} $$



일의 대한 정의 $W=Fd$를 적분으로 표현함으로서 다음과 같이 유도도 가능함.

$$ \begin{align*} 
E_{ k }=W & =Fd \\ 
\quad  & =\int _{ 0 }^{ d }{ F\text{d}d }  \\ 
\quad  & =\int _{ 0 }^{ d }{ ma\text{d}d }  \\ 
\quad  & =\int _{ 0 }^{ d }{ m\frac { \text{d}v }{ \text{d}t } \text{d}d }  \\ 
\quad  & =\int _{ 0 }^{ d }{ m\text{d}v\frac { \text{d}d }{ \text{d}t }  }  \\ 
\quad  & =\int _{ 0 }^{ v }{ m\text{d}vv }  \\ 
\quad  & =\int _{ 0 }^{ v }{ mv\text{d}v }  \\ 
\quad  & =m\int _{ 0 }^{ v }{ v\text{d}v }\\ 
\quad  & =m\frac{1}{2}v^2 
\end{align*} $$