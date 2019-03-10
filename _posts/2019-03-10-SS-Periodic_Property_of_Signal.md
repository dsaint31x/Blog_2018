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
