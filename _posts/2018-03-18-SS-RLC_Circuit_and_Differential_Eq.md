---
title:  "[SS] RLC Circuit & Differential Eq."
last_modified_at:   2018-03-18 22:11:59
author: dsaint31
categories:
 - Signals_and_Systems
use_math: true
tags:
 - math
 - signal
---

#[SS] RLC Circuit & Differential Eq.
@(Signal and System)[signal, differential, RLC]

[toc]


다음과 같은 RLC 회로가 있다고 하자.

![RLC_Circuit](https://docs.google.com/drawings/d/1pq5sXwja10Z4VRZ02fDbR7aJjUIyh3xt7eNjdDM-fo0/pub?w=359&amp;h=187)

위 회로에 대한 differential eq.는 다음과 같음.

$${ V }_{ L }+{ V }_{ R }+{ V }_{ C }=x\left( t \right) \\ 1\frac { dy\left( t \right) }{ dt } +3y\left( t \right) +{ \frac { 1 }{ \frac { 1 }{ 2 } } }\int { y\left( t \right) dt } =x\left( t \right) \\ \frac { { d }^{ 2 }y\left( t \right) }{ d{ t }^{ 2 } } +3\frac { dy\left( t \right) }{ dt } +2y\left( t \right) =\frac { dx\left( t \right) }{ dt } \\ { D }^{ 2 }y\left( t \right) +3Dy\left( t \right) +2y\left( t \right) =Dx\left( t \right) $$

여기서 $D$는 미분 연산자임.

### Homogeneous solution (동차해)

homogeneous solution을 구하기위해서 input signal을 0으로 하면 다음과 같음.

$${ D }^{ 2 }y\left( t \right) +3Dy\left( t \right) +2y\left( t \right) =0\\ \left\{ { D }^{ 2 }+3D+2 \right\} y\left( t \right) =0$$

#### characteristic equation (특성방정식)풀기.

위 식에서 characteristic eq.는 다음과 같음.

$${ D }^{ 2 }+3D+2=0$$

이를 풀어내면 다음과 같은 eigen value들을 구하게 됨.

$$ { D }^{ 2 }+3D+2=0\\ \left( D+2 \right) \left( D+1 \right) =0\\ \therefore { \lambda  }_{ 1 }=-2,{ \lambda  }_{ 2 }=-1$$

#### Homogeneous solution

위 eigen value들로부터 구한 system mode로 이루어진 homogeneous sol.은 다음과 같음.

$$ \begin{align*}
{ y }_{ h }\left( t \right) &= {C }_{ 1 }{ e }^{ { \lambda  }_{ 1 }t }+{ C }_{ 2 }{ e }^{ { \lambda  }_{ 2 }t } \\
&={C }_{ 1 }{ e }^{ -2t }+{ C }_{ 2 }{ e }^{ -t }
\end{align*}$$ 

### Particular solution (특이해)

input signal이 $10e^{-3t}u\left(t\right)$이므로 particular sol.은 다음과 같은 형태임.

$$y_p\left(t\right)=Ce^{-3t}$$

이 particular sol.의 형태를 미분방정식에 대입하여 풀면 다음과 같음.

$$\begin{align*} 
\left\{ { D }^{ 2 }+3D+2 \right\} { y }_{ p }\left( t \right)  & = \left\{ D \right\} 10{ e }^{ -3t } \\ 
\left[ 9C{ e }^{ -3t } \right] +3\left[ -3C{ e }^{ -3t } \right] +2\left[ C{ e }^{ -3t } \right]  & = -3\cdot 10{ e }^{ -3t } \\ 
2C{ e }^{ -3t } & =  -30{ e }^{ -3t } 
\end{align*}
\quad\\
\quad\\
\therefore C=-15,\quad { y }_{ p }=-15{ e }^{ -3t }$$

### Complete Solution 

결국, complete solution은 아래의 형태임.

$$y\left( t \right) ={ y }_{ h }+{ y }_{ p }={ C }_{ 1 }{ e }^{ -2t }+{ C }_{ 2 }{ e }^{ -t }-15{ e }^{ -3t }$$

이제, $C_1$과 $C_2$ 와 같은 상수의 값을 구해야 함.

#### 초기조건이용하여 상수 구하기

$C_1$과 $C_2$를 구하기 위해서는 초기조건을 이용해야함.

일단, 초기값 조건과 complete solution의 형태를 미분방정식에 대입.

$$\begin{align*} 
{ V }_{ L }\left( { 0 }^{ + } \right) +{ V }_{ R }\left( { 0 }^{ + } \right) +{ V }_{ C }\left( { 0 }^{ + } \right) & = x\left( { 0 }^{ + } \right) \\ 
1\frac { dy\left( { 0 }^{ - } \right) }{ dt } +3y\left( { 0 }^{ - } \right) +{ V }_{ C }\left( { 0 }^{ - } \right)&= 10e^{-3\cdot0}\\
D\left( { C }_{ 1 }{ e }^{ -2t }+{ C }_{ 2 }{ e }^{ -t }-15{ e }^{ -3t } \right) |_{t=0^-}+3\cdot 0+5&=10\\
\left( -2{ C }_{ 1 }{ e }^{ -2t }-{ C }_{ 2 }{ e }^{ -t }+45{ e }^{ -2t } \right)| _{ t=0^{ - } }+5&=10\\
-2{ C }_{ 1 }-{ C }_{ 2 }+45+5&=10\\ 
-2{ C }_{ 1 }-{ C }_{ 2 }&=-40
\end{align*}$$

complete solution의 초기조건을 이용하면 다음이 성립.

$$
\begin{align*}
y\left( 0 \right) &= \left( C_1e^{-2t}+C_2e^{-t}-15e^{-3t} \right ) \rvert _{t=0} \\ 
0&=C_1+C_2-15
\end{align*}
$$

위 두개의 식으로부터 $C_1$과 $C_2$ 를 구할 수 있음.

$$
\begin{align*}
 -2C_1-C_2&=-40
 \\ C_1 +C_2&=15
\end{align*}
\\
\therefore C_1=25, C_2=-10
$$

#### Complete solution (W/ Constant)

즉, complete solution은

$$y\left( t \right) =25{ e }^{ -2t }-10{ e }^{ -t }-15{ e }^{ 3t }$$

---

### 여러 Response로 나누기

Complete solution은 다음과 같이 나눌 수 있음.

* Natural Response / Forced Response
* Zero-input Response / Zero-state Response

#### Natural / Forced Response
여기서, natural response는 다음과 같음.

$$y_{natural}\left( t \right) =25{ e }^{ -2t }-10{ e }^{ -t }$$

forced response는 다음임.

$$y_{forced}\left( t \right) =-15{ e }^{ 3t }$$

#### Zero-input / Zero-state Response

zero-input response/ zero-state response의 경우로 푼다면 다음과 같음.

zero-input response의 경우 input signal이 0이므로,

$$
\begin{align*} 
{ V }_{ L }\left( { 0 }^{ + } \right) +{ V }_{ R }\left( { 0 }^{ + } \right) +{ V }_{ C }\left( { 0 }^{ + } \right) & = x\left( { 0 }^{ + } \right)=0 \\ 
1\frac { dy\left( { 0 }^{ - } \right) }{ dt } +3y\left( { 0 }^{ - } \right) +{ V }_{ C }\left( { 0 }^{ - } \right) & = 0 \\ 
D\left( { C }_{ 1 }{ e }^{ -2t }+{ C }_{ 2 }{ e }^{ -t } \right) \rvert_{ t=0^{ - } }+3\cdot 0+5 & = 0 \\ 
\left( -2{ C }_{ 1 }{ e }^{ -2t }-{ C }_{ 2 }{ e }^{ -t }\right)\rvert_{ t=0^{ - } }+5 &= 0 \\ 
-2{ C }_{ 1 }-{ C }_{ 2 }+5 & = 0 \\ 
-2{ C }_{ 1 }-{ C }_{ 2 } & = -5 
\end{align*} $$

이고,

$$
\begin{align*}
y\left( 0  \right) &= \left(C_1e^{-2t}+C_2e^{-t} \right)\rvert_{t=0} \\ 
0 &= C_1+C_2
\end{align*}
$$

가 되어서 $C_1$과 $C_2$ 가 다음과 같이 됨.

$$
\begin{align*} 
-2C_1-C_2&=-5\\ 
C_1 +C_2&=0
\end{align*}
\\
\therefore C_1=5, C_2=-5
$$

즉, zero-input response는 다음과 같음.

$$
y_{zero-input}\left( t \right) =5{ e }^{ -2t }-5{ e }^{ -t }
$$

zero-state response는 다음과 같음.

$$y_{zero-state}\left( t \right) =20{ e }^{ -2t }-5{ e }^{ -t }-15{ e }^{ 3t }$$



