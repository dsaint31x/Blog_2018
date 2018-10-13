---
layout: post
title:  "초기값 정리, 최종값 정리."
date:   2018-04-11 23:47:59
author: dsaint31
categories: Signals_and_Systems
use_math: true
tags: Laplace
---

# Initial value theorem
@(Signal and System)[#Laplace]

이는 시간함수 \(f\left( t \right) \)의 초기값과 \( F\left(s\right) \)의 관계를 나타냄. Laplace transform이 존재하는 한 항상 성립. 

$$ f\left( 0^{ + } \right) =\lim _{ s\rightarrow \infty }{ sF\left( s \right) } \\ where, f\left( 0^{ + } \right) = \lim _{ t\rightarrow 0^{ + } }{ f\left( t \right) }$$ 

증명은 다음과 같다. 

$$ \eqalign{ &\int _{ { 0 }^{ + } }^{ \infty }{ f'\left( t \right) } { e }^{ -st }dt=sF\left( s \right) -f\left( { 0 }^{ + } \right) \\ &\lim _{ s\rightarrow \infty }{ { e }^{ -st } } =0\\ &\lim _{ s\rightarrow \infty }{ \left[ sF\left( s \right) -f\left( { 0 }^{ + } \right) \right] } =\lim _{ s\rightarrow \infty }{ \left[ sF\left( s \right) \right] } -f\left( { 0 }^{ + } \right) =0\\ &\therefore \quad f\left( { 0 }^{ + } \right) =\lim _{ s\rightarrow \infty }{ \left[ sF\left( s \right) \right] } \\ }$$

# Final value theorem

이는 시간함수 \(f\left( t \right) \)의 극한값 \( \lim _{ t\rightarrow \infty }{ { f\left( t \right) } } \)이 존재할 때에 성립하는 것으로 이 극한값(final value)와 Laplace transform과의 관계를 나타냄. 

$$ \lim _{ t\rightarrow \infty }{ { f\left( t \right) } } =\lim _{ s\rightarrow 0 }{ \left[ sF\left( s \right) \right] } $$