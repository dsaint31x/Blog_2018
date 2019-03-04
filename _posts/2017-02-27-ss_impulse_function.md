---
title:  "[SS] Impulse Function의 정의."
last_modified_at:   2017-02-27
author: dsaint31
categories: 
  - Signals_and_Systems
use_math: true
tags: 
  - impulse
---

# [SS] Impulse Function
@(Signal and System)[impulse]

다음과 같이 정의 되는 함수를 $\delta_\varepsilon (t)$라고 하자.

$$
{ \delta }_{ \varepsilon  }\left( t \right) =\left\{ 
\begin{matrix} 0 & ,t<-\frac { \varepsilon  }{ 2 }  \\ 
\frac { 1 }{ \varepsilon  }  & ,-\frac { \varepsilon  }{ 2 } \le t<\frac { \varepsilon  }{ 2 }  \\ 0 & ,t\ge \frac { \varepsilon  }{ 2 } 
 \end{matrix} 
 \right .
$$

이 신호의 파형을 그리면 다음과 같다. ($\varepsilon$의 크기를 점점 줄여가는게 포인트)

![ImpulseFunc](https://docs.google.com/drawings/d/e/2PACX-1vTl9eldm3mgyeKcxCOhBXh_jxRGdbNHuNoBFcgu6Sp-_pOklIJ5Oujs2PF1EulQN_-Ove29NFdb-MBG/pub?w=579&h=375)

이 함수는 다음을 만족함.

$$
\begin{align*}
& \lim _{ \varepsilon \rightarrow 0 }{ { \delta }_{ \varepsilon }\left( t \right) } =\infty &, t=0\\ 
& \lim _{ \varepsilon \rightarrow 0 }{ { \delta }_{ \varepsilon }\left( t \right) } =0 &, t\neq 0\\ 
& \lim _{ \varepsilon \rightarrow 0 }{ \int _{ -\frac { \varepsilon }{ 2 } }^{ \frac { \varepsilon }{ 2 } }{ { \delta }_{ \varepsilon }\left( t \right) dt } =1 } \\
& \delta_\varepsilon(t) = \delta_\varepsilon(-t)
\end{align*}$$

위의 조건을 만족하는 함수를 impulse function이라고 하므로, 아래의 함수 $\delta(t)$가 바로 impulse function임.


$$\delta \left( t \right)=\lim _{ \varepsilon \rightarrow 0 }{ { \delta }_{ \varepsilon }\left( t \right) }$$
