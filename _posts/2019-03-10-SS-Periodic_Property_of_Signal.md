---
title:  "[SS] 신호의 주기성 예제풀이"
last_modified_at:   2019-03-10
author: dsaint31
categories: 
  - Signals_and_Systems
use_math: true
tags: 
  - periodic
---

# [SS] 신호의 주기성 예제풀이
@(Signal and System)

### 다음 함수의 주기는?

$$x\left( t \right) =\cos { (t) } +3{ e }^{ -j2t }$$

#### Sol.

$$
\cos { (t) } \rightarrow { T }_{ 1 }=2\pi \\ 
3{ e }^{ -j2t }\rightarrow \frac { 2\pi }{ { T }_{ 2 } } =2\rightarrow { T }_{ 2 }=\pi \\ 
\frac { { T }_{ 2 } }{ { T }_{ 1 } } =\frac { \pi }{ 2\pi } =\frac { 1 }{ 2 } \\ 
T=\frac { { T }_{ 1 }{ T }_{ 2 } }{ GCD\left( { T }_{ 1 },{ T }_{ 2 } \right)} =2\pi
$$

> $$(T=\frac { 2\pi }{ \omega } ,\omega =2\pi f)$$를 잊지말 것.

----

### 다음 함수의 주기는?

$$
x\left( t \right) ={ e }^{ j\frac { \pi t }{ 2 } }\cos { \left( \frac { \pi }{ 3 } t \right) } 
$$

#### Sol.

$$
\begin{eqnarray} 
x\left( t \right) & = & { e }^{ j\frac { \pi t }{ 2 } }\left\{ \frac { { e }^{ j\frac { \pi t }{ 3 } }+{ e }^{ -j\frac { \pi t }{ 3 } } }{ 2 } \right\} \\ 
\quad & = & \frac { 1 }{ 2 } \left\{ { e }^{ j\frac { \pi t }{ 2 } }{ e }^{ j\frac { \pi t }{ 3 } }{ +e }^{ j\frac { \pi t }{ 2 } }{ e }^{ -j\frac { \pi t }{ 3 } } \right\} \\ 
\quad & = & \frac { 1 }{ 2 } \left\{ { e }^{ j\frac { 5\pi t }{ 6 } }+{ e }^{ j\frac { 1\pi t }{ 6 } } \right\} \end{eqnarray}\\ 
$$

$$
{ T }_{ 1 }=\frac { 2\pi }{ \frac { 5\pi }{ 6 } } =\frac { 12 }{ 5 } ,{ T }_{ 2 }=\frac { 2\pi }{ \frac { \pi }{ 6 } } =12\rightarrow \frac { { T }_{ 2 } }{ { T }_{ 1 } } =\frac { 12 }{ \frac { 12 }{ 5 } } =5\\ 
T=\frac { \frac { 12 }{ 5 } \times 12 }{ GCD\left( \frac { 12 }{ 5 } ,12 \right) } =\frac { \frac { 12 }{ 5 } \times 12 }{ \frac { 12 }{ 5 } } =12
$$

----

### $x(t)$가 주기함수일 때, 다음의 함수의 주기는 (비주기 함수일 수도 있음)?

$$
y\left( t \right) ={ e }^{ x\left( t \right) }
$$

#### Sol.

$$
{ e }^{ x\left( t \right) }={ e }^{ x\left( t+T \right) }\\ y\left( t \right) =y\left( t+T \right) 
$$

즉, 주기는 T로서 x(t)의 주기와 일치함.

----

### 다음의 참/거짓을 고르시오.

* 어떤 신호는 energy signal이면서 power signal일 수도 있다. [T/**F**]
* deterministic signal은 시간에 따른 값의 변화를 정확히 예측할 수 있지만, 통계적 성질은 불규칙하다. [T/**F**]
* 유한한 신호 값을 갖는 모든 주기 신호는 power signal이다. [**T**/F]
* x(t)=3t<sup>2</sup> 은 energy signal도 power signal도 아니다. [**T**/F]

### 다음 신호의 파형을 그려보라. 그리고 해당 신호가 Energy signal인지 Power signal인지 아니면 둘다 아닌지를 기재하라 (단, a는 임의의 real number임.).

$$
x(t)= e^{-at}u(t)
$$

#### Sol.

i) if $a>0$

$$
\begin{align*}
E & =\int^\infty_{-\infty} | e^{-at}u(t)|^2 dt \\
 & = \int^\infty_0 e^{-2at} dt \\
 & = \frac{-1}{2a} [e^{-2at}]^\infty_0 \\
 & =\frac{1}{2a}
\end{align*}
$$

$0<E <\infty$이므로 energy signal이 됨.



ii) if $a=0$

$$
\begin{align*}
E & = \int^\infty_0 e^{-2at} dt \\
& = \int^\infty_0 1 dt \\ 
P &=  \lim_{T\rightarrow \infty} \frac{1}{T} \int^\frac{T}{2}_0 e^{-2at} dt \\
&=\lim_{T\rightarrow \infty} \frac{1}{T} \int^\frac{T}{2}_0 1 dt \\
& =   \lim_{T\rightarrow \infty} \frac{1}{T} \left[t \right]^{\frac{T}{2}}_{0} \\
& = \frac{1}{2}
\end{align*}
$$

즉, power signal.

iii) if $a<0$

$$
\begin{align*}
E & = \int^\infty_0 e^{-2at} dt \\
& = \infty \\
P &=  \lim_{T\rightarrow \infty} \frac{1}{T} \int^\frac{T}{2}_0 e^{-2at} dt \\
& =   \lim_{T\rightarrow \infty} \left[- \frac{e^{-2at}}{2aT} \right]^{\frac{T}{2}}_{0} \\
& =   \lim_{T\rightarrow \infty} \frac{1-e^{-aT}}{2aT} \\
& = \infty
\end{align*}
$$

energy signal도 power signal도 아님.

### 다음 적분을 구하시오.

$$
\int ^\infty _{-\infty} \exp(t-4)\delta(3t-12)dt
$$

#### Sol.

$$
\begin{align*}
\int ^\infty _{-\infty} \exp(t-4)\delta(3t-12)dt &= \int ^\infty _{-\infty} \exp(t-4)\frac{1}{|3|}\delta(t-4)dt \\
& = \left. \frac{1}{3}\exp(t-4)\right |_{t=4} \\
&=\frac{1}{3}
\end{align*}
$$
