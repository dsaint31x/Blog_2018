---
title:  "[SS] Fourier Transform of Impulse Train"
date:   2019-04-02 13:33:59
author: dsaint31
categories: Signals_and_Systems
use_math: true
tags: FT, CTFT, Impulse Train
---

# [SS] Impulse Train의 FT 구하기.

### impulse train은 periodic function.

impulse train은 Fourier series로 표현가능함.

$$
\begin{align*}
x(t) &= \displaystyle {\sum_{k=-\infty}^{\infty}} \delta (t -kT)
\end{align*}
$$

위의 impulse traine은 **주기 $T$로 delta function이 반복**되는 것이며, Fourier series를 이용하여 **Fourier coef.** $X_k$를 구하면 다음과 같음.

$$
\begin{align*}
X_k &= \frac{1}{T}\int_{-\frac{T}{2}}^{\frac{T}{2}}  \delta(t) e^{-jk\Omega_0 t} dt \\
&= \frac{1}{T}\int_{-\frac{T}{2}}^{\frac{T}{2}}  \delta(0) e^{-jk\Omega_0 0} dt \\
&= \frac{1}{T} 1\\
&= \frac{1}{T}
\end{align*}
$$

위에서 구한 **Fourier coef.** $X_k$로 다시 impulse train, $x(t)$를 **Fourier series**로 나타내면 다음과 같음.

$$
\begin{align*}
x(t) &= \displaystyle{\sum_{k=-\infty}^{\infty}}
X_k e^{jk\Omega_ot} \\
&= \displaystyle{\sum_{k=-\infty}^{\infty}} \frac{1}{T} e^{jk\Omega_ot}
\end{align*}
$$

이를 **Fourier Transform** 하면 다음과 같음.

$$
\begin{align*}
F\left[ x(t) \right] &= F\left[ \displaystyle{\sum_{k=-\infty}^{\infty}} \frac{1}{T} e^{jk\Omega_ot} \right] \\
&= \int_{-\infty}^{\infty} \displaystyle{\sum_{k=-\infty}^{\infty}} \frac{1}{T} e^{jk\Omega_ot} e^{-j\Omega t} dt \\
&= \frac{1}{T} \int_{-\infty}^{\infty} \displaystyle{\sum_{k=-\infty}^{\infty}} e^{jk\Omega_ot} e^{-j\Omega t} dt \\
&= \frac{1}{T} \left [ F\left[ e^{j0\Omega_o t} \right] +F\left[ e^{j\Omega_o t} \right]+F\left[ e^{j2\Omega_o t} \right]+F\left[ e^{j3\Omega_o t} \right]+\cdots \right] \\
&= \frac{1}{T} \left [ F\left[ 1\right] +F\left[ e^{j\Omega_o t} \right]+F\left[ e^{j2\Omega_o t} \right]+F\left[ e^{j3\Omega_o t} \right]+\cdots \right]
\end{align*}
$$

$e^{j\Omega_0 t}$ 의 FT은 $2\pi \delta(\Omega-\Omega_0)$이므로, 다음과 같이 된다.

$$
\begin{align*}
F\left[ x(t) \right] &= \frac{1}{T} \left [ F\left[ 1\right] +F\left[ e^{j\Omega_o t} \right]+F\left[ e^{j2\Omega_o t} \right]+F\left[ e^{j3\Omega_o t} \right]+\cdots \right] \\
&=\frac{1}{T}\displaystyle{\sum_{k=-\infty}^{\infty}}2\pi \delta(\Omega - k\Omega_0) \\
&=\frac{2\pi}{T}\displaystyle{\sum_{k=-\infty}^{\infty}} \delta(\Omega - k\Omega_0) \\
&=\Omega_0\displaystyle{\sum_{k=-\infty}^{\infty}} \delta(\Omega - k\Omega_0) \\
\end{align*}
$$

결국, $T$ 간격으로 반복되는 Impulse train의 FT는 $\frac{2\pi}{T}=\Omega_0$로 반복되는 Impulse train이 된다.


