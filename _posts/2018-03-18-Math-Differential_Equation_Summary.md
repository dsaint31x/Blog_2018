---
title:  "[Math] Differential Equation (Summary)"
author: dsaint31

last_modified_at: 2018-03-18
categories: 
  - Mathematics
use_math: true
tags: 
  - Mathematics 
toc: true
---

#[Math] Differential Equation
@(Mathematics)[#differential]

하나 이상의 Derivative( 도함수, derived function)가 포함된 equation

## Ordinary Differential Equation

* 상미분방정식
* 독립변수가 한 개인 경우.
* $\frac{dy}{dx}$형태의 derivative.

## Partial Differential Equation

* 편미분방정식
* 독립변수가 2개 이상인 경우.
* $ \frac{\partial y}{\partial x} $형태의 derivative.

## Order

* 계수
* Differential equation에서 가장 많이 미분된 derivative의 미분 횟수!
* Differential equation의 solution을 구하려면, order 와 같은 수의 초기조건이 있어야 함.

## Degree

* 차수
* order를 결정하는 derivative의 몇 제곱인지에 해당.

## Linear Differential Equation

* 선형미분방정식
* 다음과 같은 형태가 바로 n-order linear differential equation의 일반형임.
* $ a_n(t)\frac{d^n y}{dt^n}+a_{n-1}(t)\frac{d^{n-1}y}{dt^{n-1}}+\cdots+a_1(t)\frac{dy}{dt}+a_0y=f(t)$
* 모든 coefficient가 독립변수 $t$만의 function임 (or 상수)
* 모든 $y$(종속변수)와 그 derivative는 1차 이내여야 함.
* 위 식에서 $a_n(t)=1$일 때, 표준형이라고 함.
* 비선형의 경우, 일부의 경우를 제외하고 손으로 풀기(analytic method, 해석적 해법 적용)는 힘듬(Numerical method 적용해야 함.).
* 선형이라도, order가 2이상인 경우 coeffiicient들이 상수가 아닐 경우 풀기 어려움.
* 독립변수 $t$가 시간일 경우, time-invariant system에 대한 equation은 모든 coefficient가 상수.

## Homogeneous Equation

* 제차 미분방정식
* $ a_n(t)\frac{d^n y}{dt^n}+a_{n-1}(t)\frac{d^{n-1}y}{dt^{n-1}}+\cdots+a_1(t)\frac{dy}{dt}+a_0y=0$
* 역학에선 외력이 없는 경우, 신호처리에선 external input signal이 없는 경우에 해당.

## Non-homogeneous Equation

* 비제차 미분방정식
* $ a_n(t)\frac{d^n y}{dt^n}+a_{n-1}(t)\frac{d^{n-1}y}{dt^{n-1}}+\cdots+a_1(t)\frac{dy}{dt}+a_0y=f(x), f(x) \ne 0$
* 역학에선 외력이 있는 경우, 신호처리에선 external input signal이 가해진 경우임.

## Linear Homogeneous Equation

* solution에서 Principle of Superposition이 성립.
* 함수 a와 b가 solution일 경우, 이들의 선형결합 역시 solution임.

 