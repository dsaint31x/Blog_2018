---
title:  "Fourier Transform of Pulse Signal"
date:   2018-03-28 13:47:59
author: dsaint31
categories: Signals_and_Systems
use_math: true
tags: Fourier Exponential
---
# [SS] Fourier Transform of Pulse Signal
@(Signal and System)[#Fourier]

다음과 같은 pulse signal이 있다고 하자.

$$x(t)=\left \{ \begin{matrix}
1,& |t|\le\frac{\tau}{2} \\ 0,& otherwise\end{matrix} \right.$$

이에 대한 Fourier Transform은 다음과 같다.

$$
\begin{align*}
X(\Omega)&=\int^\infty_{-\infty}x(t)e^{-j\Omega t} \text{d}t \\
\quad &= \int^{\frac{\tau}{2}}_{-\frac{\tau}{2}}1 \cdot e^{-j\Omega t} \text{d}t \\
\quad &= \left[ \frac{e^{-j\Omega t}}{-j\Omega }  \right]^{\frac{\tau}{2}}_{-\frac{\tau}{2}}\\
\quad &= \frac{1}{-j\Omega} \left[ e^{-j\Omega \frac{\tau}{2}}- e^{-j\Omega \frac{-\tau}{2}} \right]\\
\quad &= \frac{1}{j\Omega} \left[ -e^{-j\Omega \frac{\tau}{2}}+ e^{-j\Omega \frac{-\tau}{2}} \right]\\
\quad &= \frac{1}{j\Omega} \left[ -e^{-j\Omega \frac{\tau}{2}}+ e^{j\Omega \frac{\tau}{2}} \right]\\
\quad &= \frac{1}{j\Omega} \left[ e^{j\Omega \frac{\tau}{2}}-e^{-j\Omega \frac{\tau}{2}} \right]\\
\quad &= \frac{2}{\Omega} \frac{( e^{j\Omega \frac{\tau}{2}}-e^{-j\Omega \frac{\tau}{2}}) }{2j}\\
\quad &= \frac{2}{\Omega} \sin(\Omega \frac{\tau}{2})\\
\quad &= \frac{\sin( \frac{\tau}{2}\Omega)}{\frac{\Omega}{ 2}} \\
\quad &= \tau\frac{\sin( \frac{\tau}{2}\Omega)}{\frac{\tau}{ 2}\Omega} \\
\quad &= \tau\text{sinc} \left( \frac{\tau}{2\pi}\Omega \right)\\
\\
\therefore FT\left[ \text{pulse}(t)\right]&=\tau\text{sinc} \left( \frac{\tau}{2\pi}\Omega \right)
\end{align*}
$$
