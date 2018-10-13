---
layout: post
title:  "Fourier Transform of Real Exponential Function"
date:   2018-03-28 12:47:59
author: dsaint31
categories: Signals_and_Systems
use_math: true
tags: Fourier Exponential
---

# [SS] Fourier Transform of Real Exponential Function
@(Signal and System)[#Fourier]

다음과 같은 Real Exponential Function의 Fourier Transform을 수행.

$$ b e^{-at} u(t), a>0 $$

sol.

$$ \begin {align}
\int^\infty_{-\infty}b e^{-at} u(t)e^{-j\Omega t} \text{d}t &= b \int^{\infty}_{-\infty}u(t)e ^{-(a+j\Omega)t}\text{d}t\\
\quad &= b \int^{\infty}_{0}e ^{-(a+j\Omega)t}\text{d}t\\
\quad &= b \left [ \frac{e ^{-(a+j\Omega)t}}{-(a+j\Omega)}\right]^\infty_0\\
\quad &= b \left [ 0-\frac{1}{-(a+j\Omega)} \right ] \\
\quad &= \frac{b}{(a+j\Omega)} \\
\\
\therefore FT\left[b e^{-at} u(t)\right] &= \frac{b}{(a+j\Omega)}
\end {align} $$
