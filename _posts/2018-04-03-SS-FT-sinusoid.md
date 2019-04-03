---
title:  "[SS] Fourier Transform of Sinusoid"
date:   2019-04-03 13:33:59
author: dsaint31
categories: Signals_and_Systems
use_math: true
tags: 
- FT
- CTFT
- Impulse Train
---

# [SS] 정현파의 FT

### 1. $\sin \omega_0 t$

$$
\begin{align*}
FT[\sin \omega_0 t] & = \int_{-\infty}^{\infty} \sin \omega_0 t e^{-j\Omega t} dt \\
&= \int_{-\infty}^{\infty} \frac{e^{j\omega_0 t}-e^{-j\omega_0 t}}{2j} e^{-j\Omega t} dt \\
&= \frac{1}{2j} \left\{\int_{-\infty}^{\infty} e^{j\omega_0 t} e^{-j\Omega t} dt - \int_{-\infty}^{\infty} e^{-j\omega_0 t} e^{-j\Omega t} dt \right\}\\
&= \frac{-j}{2}\left\{ 2\pi \delta(\Omega -\omega_0)- 2\pi \delta(\Omega+\omega_0)\right\}\\
&= -j\pi \delta(\Omega -\omega_0) +j\pi \delta(\Omega+\omega_0)
\end{align*}
$$

### 2. $\cos \omega_1 t$

$$
\begin{align*}
FT[\cos \omega_0 t] & = \int_{-\infty}^{\infty} \cos \omega_0 t e^{-j\Omega t} dt \\
&= \int_{-\infty}^{\infty} \frac{e^{j\omega_0 t}+e^{-j\omega_0 t}}{2} e^{-j\Omega t} dt \\
&= \frac{1}{2} \left\{\int_{-\infty}^{\infty} e^{j\omega_0 t} e^{-j\Omega t} dt + \int_{-\infty}^{\infty} e^{-j\omega_0 t} e^{-j\Omega t} dt \right\}\\
&= \frac{1}{2}\left\{ 2\pi \delta(\Omega -\omega_0)+ 2\pi \delta(\Omega+\omega_0)\right\}\\
&= \pi \delta(\Omega -\omega_0) +\pi \delta(\Omega+\omega_0)
\end{align*}
$$

### 3. $1+2\sin \omega_0 t +\cos \omega_1 t$

$$
\begin{align*}
&F\left[ 1+2\sin \omega_0 t +\cos \omega_1 t \right] \\
&=\delta(\Omega)
+2 \left\{ -j\pi \delta(\Omega -\omega_0) +j\pi \delta(\Omega+\omega_0) \right\}
+\pi \delta(\Omega -\omega_0) +\pi \delta(\Omega+\omega_0) \\
&=\delta(\Omega) + (-2j+1)\pi\delta(\Omega -\omega_0)
+(2j+1)\pi\delta(\Omega +\omega_0)
\end{align*}
$$

### 4. $10+3\sin \omega_0 t +\cos \omega_1 t$

$$
\begin{align*}
&F\left[ 10+3\sin \omega_0 t +\cos \omega_1 t \right] \\
&=10\delta(\Omega)
+3 \left\{ -j\pi \delta(\Omega -\omega_0) +j\pi \delta(\Omega+\omega_0) \right\}
+\pi \delta(\Omega -\omega_0) +\pi \delta(\Omega+\omega_0) \\
&=\delta(\Omega) + (-3j+1)\pi\delta(\Omega -\omega_0)
+(3j+1)\pi\delta(\Omega +\omega_0)
\end{align*}
$$
