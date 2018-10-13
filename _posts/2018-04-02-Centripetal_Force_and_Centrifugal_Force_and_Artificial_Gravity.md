---
layout: post
title:  "[Physics] Centrifugal Force and Artificial Gravity"
date:   2018-04-02 14:47:59
author: dsaint31
categories: Physics
use_math: true
tags: physics
---

# [Physics] Centrifugal Force and Artificial Gravity.
@(Physics)[#Physics]

링 형태의 우주 정거장이 원의 중심으로 회전을 한다면, Centrifugal Force(원심력)으로 인공 중력을 만들 수 있음.
이 때 angular speed가 1rpm이라 할때, 지구와 같은 인공 중력을 만들려면 링의 반경이 얼마나 되어야 할지를 구해보자. (계산의 편의를 위해 중력가속도를 10 $m/s^2$이라 하자.)


우선 angular speed는 다음과 같음.

$$\omega = 1rpm = \frac{2\pi}{60}$$

그러면 tangential speed는 다음과 같음.

$$v_{tangential}=r\omega=r\frac{2\pi}{60}$$

지구의 중력은 다음과 같으므로 정거장 내에 있는 이들이 겪는 원심력의 크기를 알 수 있음.

$$f_{gravity}=mg = 10m$$

여기서 $m$은 질량임.


우주정거장의 구심력은 다음과 같음.

$$f_{centripetal}=\frac{mv^2}{r}$$

여기서 $v$는 tangential speed임.


관성기준계의 구심력은 비관성기준계의 원심력과 크기가 같은 부분을 이용하여 실제 회전하는 링형태의 우주 정거장의 원심력이 중력과 같게 놓을 경우 다음의 등식을 만족하게 됨.

$$f_{centripetal}=f_{gravity}$$

이 등식에, 위의 식들과 1rpm을 실제 대잏하여 전개하면 다음과 같이 링의 반경이 나옴.

$$\begin{align*} 
10m&=\frac{mv^2}{r} \\
10 &=\frac{v^2}{r} \\
10 &= \frac{\big( r\frac{2\pi}{60} \big)^2}{r} \\
10 & =\frac{  r^2 \big( \frac{2\pi}{60} \big)^2}{r} \\ 
10 & =r \big( \frac{2\pi}{60} \big)^2 \\ 
r &= 10\big( \frac{60}{2\pi} \big)^2 \\ 
\quad & =\frac{36000}{4\pi^2}=911.89 
\end{align*}$$

반경 911.89m 의 거대 링이어야 함.
