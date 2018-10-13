---
layout: post
title:  "[SS] Bilateral Laplace Transform 간단 문제 풀이"
date:   2018-04-24 13:33:59
author: dsaint31
categories: Signals_and_Systems
use_math: true
tags: convolution Fourier
---

# Bilateral Laplace Transform
@(Signal and System)[#Laplace]

### 문제

Find the bilateral Laplace transform of $x(t)$ and the corresponding ROC.

$$
\begin{align*}
x(t) &= A \\
\text{where}&\\
&\text{A is constant.} 
\end{align*}
$$

### sol.

$$
\begin{align*}
X(s) &= \int ^\infty _{-\infty} A e^{-st}\text{d}t \\
&= A \left [\int ^0 _{-\infty} e^{-st}\text{d}t  + \int ^\infty _{0} e^{-st}\text{d}t \right]\\
&= A \left [ -\frac{1}{s}e^{-st}\left. \right |^0 _{-\infty} + -\frac{1}{s}e^{-st}\left. \right |^\infty _{0}\right]\\
&=  -\frac{A}{s}e^{-st}\left. \right |^0 _{-\infty} -\frac{A}{s}e^{-st}\left. \right |^\infty _{0}\\
\end{align*}
$$

오른쪽 첫번째 항 $-\frac{A}{s}e^{-st}\left. \right \vert^0 _{-\infty}$의 ROC를 살펴보면 다음과 같음.

$$
\begin{align*}
s &=\sigma + j\omega\\
\lim_{t \rightarrow -\infty} e^{-st}&=\lim_{t \rightarrow -\infty} e^{-\sigma t}e^{-j\omega t}= \left \{ \matrix { 0, & Re(s)= \sigma <0 \\ \infty, & Re(s) = \sigma >0 } \right . \\
\end{align*}
$$

즉, $\sigma <0$이어야 함.

오른쪽 두번째 항 $-\frac{A}{s}e^{-st}\left. \right \vert^\infty _{0}$의 ROC를 살펴보면 다음과 같음.

$$
\begin{align*}
s &=\sigma + j\omega\\
\lim_{t \rightarrow \infty} e^{-st}&=\lim_{t \rightarrow \infty} e^{-\sigma t}e^{-j\omega t}= \left \{ \matrix { \infty, & Re(s)= \sigma <0 \\ 0, & Re(s) = \sigma >0 } \right .
\end{align*}
$$

즉,  $\sigma >0$이어야 함.

결국, ROC가 겹치는 영역 (두 항 모두 만족하는 ROC)이 없으므로 해당 신호는 bilateral Laplace transform이 불가함.
