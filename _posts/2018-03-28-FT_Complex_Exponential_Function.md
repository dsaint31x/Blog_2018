---
title:  "Fourier Transform of Complex Exponential Function"
date:   2018-03-28 12:47:59
author: dsaint31
categories: Signals_and_Systems
use_math: true
tags: Fourier Exponential
---

# [SS] Fourier Transform of Complex Exponential Function
@(Signal and System)[#Fourier]

다음과 같은 Complex Exponential Function의 Fourier Transform을 수행.

$$ e^{-j\Omega_0t}  $$

sol.

$$ \begin {align*}
\int^\infty_{-\infty} e^{-j\Omega_0 t} e^{-j\Omega t} \text{d}t &= \int^{\infty}_{-\infty} e ^{-j(\Omega_0+\Omega)t}\text{d}t\\
\quad &= \int^{\infty}_{-\infty}1\cdot e ^{-j(\Omega_0+\Omega)t} \text{d}t
\end {align*} $$

$\Omega_0+\Omega$를 $\Omega_{new}$로 치환하면, 크기가 1인 DC signal의 Fourier Transform이 됨.
1에 대한 FT의 결과는 $2\pi \delta (\Omega) $이므로 위 식은 다음과 같이 됨.

$$ \begin {align*}
\int^\infty_{-\infty} e^{-j\Omega_0 t} e^{-j\Omega t} \text{d}t &= \int^{\infty}_{-\infty}1\cdot e ^{-j(\Omega_0+\Omega)t} \text{d}t \\
\quad &= \int^{\infty}_{-\infty}1\cdot e ^{-j\Omega_{new}t} \text{d}t \\
\quad &= 2\pi \delta (\Omega_{new}) \\
\quad &= 2\pi \delta (\Omega_0+\Omega) \\
\\
\therefore FT\left[e^{-j\Omega_0t}\right] &= 2\pi \delta (\Omega_0+\Omega)
\end {align*} $$

이는 Fourier Transform의 Frequency Shifting 를 이해하는데 필요함.
