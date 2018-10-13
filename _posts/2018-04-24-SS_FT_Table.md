---
layout: post
title:  "Table : Fourier Transform"
date:   2018-04-24 13:33:59
author: dsaint31
categories: Signals_and_Systems
use_math: true
tags: Fourier
---

# A Short Table of Fourier Transforms 
@(Signal and System)[#Fourier]

| # | $x(t)$             | $X(\omega)$ |
|---|--------------------|----------------------|
|1| $e^{-a t} u(t) , a>0$ | $\frac{1}{a+j\omega}$|
|2| $e^{a t} u(-t) , a>0$ | $\frac{1}{a-j\omega}$|
|3| $e^{-a \vert t\vert}, a>0$ | $\frac{2a}{a^2+\omega^2}$|
|4| $te^{-a t}u(t), a>0$ | $\frac{1}{ (a+j\omega)^2}$|
|5| $t^ne^{-a t}u(t), a>0$ | $\frac{n!}{ (a+j\omega)^{n+1}}$|
|6| $\delta(t)$ | $1$|
|7| $1$ | $2\pi \delta(\omega)$|
|8| $e^{j\omega_0t}$ | $2\pi \delta (\omega-\omega_0) $|
|9| $\text{sgn}(t)$ | $\frac{2}{j\omega}$|
|10| $u(t)$ | $\pi \delta(\omega) +\frac{1}{j\omega}$|
|11| $\cos \omega_0 t$ | $\pi \left[ \delta(\omega+\omega_0) + \delta (\omega-\omega_0) \right]$|
|12| $\sin \omega_0 t$ | $j\pi \left[ \delta(\omega+\omega_0) - \delta (\omega-\omega_0) \right]$|
|13| $\cos \omega_0 t u(t)$ | $\frac{\pi}{2} \left[ \delta(\omega+\omega_0) + \delta (\omega-\omega_0) \right] +\frac{j\omega}{\omega_0^2-\omega^2}$|
|14| $\sin \omega_0 t u(t)$ | $\frac{\pi}{2j} \left[ \delta(\omega+\omega_0) - \delta (\omega-\omega_0) \right] +\frac{\omega_0}{\omega_0^2-\omega^2}$|
|15| $e^{-at} \sin \omega_0t u(t), a>0$ | $ \frac{\omega_0}{(a+j\omega)^2+\omega_0^2}$|
|16| $e^{-at} \cos \omega_0t u(t), a>0$ | $ \frac{a+j\omega}{(a+j\omega)^2+\omega_0^2}$|
|17| $ \sum_{n=-\infty}^{\infty} \delta(t-nT_s)$ | $ \omega_0 \sum_{n=-\infty}^{\infty} \delta(\omega-n\omega_0) , \omega_0=\frac{2\pi}{T_s}$|
|18| $ \text{rect}_\tau (t)$, 너비가 $\tau$인 rectangle pulse | $ \tau \text{sinc}\left ( \frac{\omega \tau}{2\pi}\right)$|
|19| $ \frac{W}{2\pi} \text{sinc}\left ( \frac{W}{2\pi}t\right)$ | $\text{rect}_W (\omega)$, 너비가 $W$인 rectangle pulse$|
|20| $ \Delta \left ( \frac{t}{\tau}\right)$ 기울기가 $\frac{1}{\tau}$인 삼각파 | $ \tau \text{sinc}^2 \left ( \frac{\omega \tau}{2\pi}\right)$|
|21| $ e^{-\frac{t^2}{2\sigma ^2}}$ | $ \sigma \sqrt{\pi} e^{-\frac{\sigma^2\omega^2}{2}}$|