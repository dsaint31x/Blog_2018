---
title:  "[Physics] Vector Function과 속도,가속도,위치벡터 (예제)"
last_modified_at:   2019-04-05
author: dsaint31
categories: 
  - Physics
use_math: true
tags: 
  - Math 
  - Physics
---

# [Physics] 속도,가속도, 및 위치벡터 함수
@(Physics)[physics, vector, mathematics, Mathematics]

<img src="https://docs.google.com/drawings/d/e/2PACX-1vSX13GLy-s-j4y33JSGn1oUIH0T_Dq1xhgPlJ9PcX8Rngp-2_QswtURuKHP9T8TD2xvRquClNLE2o_Y/pub?w=680&h=431">


일단, $t=0$일때의 각각의 vector function은 다음과 같음. :**초기조건**

$$
\begin{align*}
\vec{r}(0) &=0\vec{i}+r_y\vec{j}=r_y\vec{j} \\
\vec{v}(0) &=v_0 \cos \theta \vec{i}+v_0 \sin \theta \vec{j}\\
\vec{a}(0) &=0\vec{i}-g\vec{j}=-g\vec{j}
\end{align*}
$$

우선 중력만을 고려하니 가속도는 항상 중력가속도임.
즉, acceleration function은 항상 같음.

$$
\vec{a}(t) = \vec{a}(0) =-g\vec{j}
$$

시간에 대해 acceleration을 정적분하면 특정 시간의 velocity를 얻을 수 있음.

$$
\begin{align*}
\vec{v}(t) &= \int_{\tau=0}^{t} \vec{a}(\tau) d\tau\\
&=\int_{\tau=0}^{t} -g\vec{j} d\tau\\
&=\left [ -g\tau\vec{j} \right] _{\tau=0} ^{t} +\vec{C_1}\\
&=-gt\vec{j} +C_{1x}\vec{i}+C_{1y}\vec{j}\\
&=C_{1x}\vec{i}+(C_{1y}-gt)\vec{j}
\end{align*}
$$

**초기조건**을 고려하면 정적분에 의한 상수벡터 $\vec{C_1}=C_1x\vec{i}+C_1y\vec{j}$를 실제 값으로 변경가능함.

velocity는 다음과 같음.

$$
\begin{align*}
\vec{v}(0)&=C_{1x}\vec{i}+(C_{1y}-g0)\vec{j} \\
&=v_0 \cos \theta \vec{i}+v_0 \sin \theta \vec{j}\\
\therefore
\vec{v}(t)&=v_0 \cos \theta \vec{i}+(v_0 \sin \theta-gt)\vec{j} \\
\end{align*}
$$

시간에 대해 velocity을 정적분하면 특정 시간의 position을 얻을 수 있음.

$$
\begin{align*}
\vec{r}(t) &= \int_{\tau=0}^{t} \vec{v}(\tau) d\tau\\
&=\int_{\tau=0}^{t} v_0 \cos \theta \vec{i}+(v_0 \sin \theta-g\tau)\vec{j}  d\tau\\
&=\left [ v_0 \cos \theta \tau \vec{i}+(v_0 \sin \theta \tau-\frac{1}{2}g\tau^2)\vec{j}  \right] _{\tau=0} ^{t} +\vec{C_2}\\
&=(C_{2x}+v_0 t\cos \theta ) \vec{i}+(C_{2y}+v_0 t\sin \theta -\frac{1}{2}gt^2)\vec{j}
\end{align*}
$$

**초기조건**을 고려하면 정적분에 의한 상수벡터 $\vec{C_2}=C_2x\vec{i}+C_2y\vec{j}$를 실제 값으로 변경가능함.

$$
\begin{align*}
\vec{r}(0) &=(C_{2x}+v_0 0\cos \theta ) \vec{i}+(C_{2y}+v_0 0\sin \theta -\frac{1}{2}g0^2)\vec{j} \\
&=C_{2x}  \vec{i}+C_{2y}\vec{j} \\
&=r_y\vec{j} \\
\\
\therefore \vec{r}(t) &= (v_0 t\cos \theta ) \vec{i}+(r_y+v_0 t\sin \theta -\frac{1}{2}gt^2)\vec{j}
\end{align*}
$$

