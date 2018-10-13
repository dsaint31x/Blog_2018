---
layout: post
title:  "[SS] Digital Convolution 예제"
date:   2018-05-14 14:33:59
author: dsaint31
categories: Signals_and_Systems
use_math: true
tags: convolution 
---
# Digital Convolution : example
@(Signal and System)[#convolution]

다음의 두 함수는 impulse reponse임.

$$
\begin{align*}
h_2 &= 0.5\delta[n]-0.25\delta[n-1] \\
h_4 &= (-2)(0.5)^nu[n]
\end{align*}
$$

이들을 각각 impulse response로 가지는 두 시스템을 직렬연결한 시스템의 impulse response를 구하시오.

### proof

$$
\begin{align*}
h_2[n]*h_4[n] &= \left\{ 0.5\delta[n]-0.25\delta[n-1]\right\}*\left\{(-2)(0.5)^nu[n]\right\} \\
&= 0.5\delta[n]*(-2)(0.5)^nu[n] -0.25\delta[n-1]*(-2)(0.5)^nu[n] \\
&= (0.5)(-2)\left[ (0.5)^n\delta[n]*u[n]\right] +(-0.25)(-2)\left[(0.5)^n\delta[n-1]*u[n] \right]\\
&= (-1)\left[(0.5)^n \delta[n]*u[n] \right]+(0.5)\left[(0.5)^n\delta[n-1]*u[n] \right]\\
&= (-1)\left[ (0.5)^n u[n] \right]+(0.5)\left[(0.5)^{n-1}u[n-1] \right]\\
&= -(0.5)^nu[n] +(0.5)(0.5)^{n-1}u[n-1] \\
&= -(0.5)^nu[n] +(0.5)^{n}u[n-1] \\
&= -(0.5)^n \left[ u[n] -u[n-1] \right] \\
&= -(0.5)^n \delta[n] \\
&= -(0.5)^0 \delta[n] \\
&= - \delta[n] \\
\end{align*}
$$