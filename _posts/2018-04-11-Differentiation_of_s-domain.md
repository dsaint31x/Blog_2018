---
layout: post
title:  "Ex : Integral Property"
date:   2018-04-09 23:47:59
author: dsaint31
categories: Signals_and_Systems
use_math: true
tags: Laplace
---

# Differentiation of s-domain.

Laplace Transform (unilateral)에서의 s-domain에서의 differentiation은 time-domain에서 다음과 같이 됨.

$$
(-t)^n x(t) \leftrightarrow \frac{\text{d}^n X(s)} {\text{d}s^n}
$$

증명

$$
\begin {align*}
X(s)  &= \int^\infty _0 x(t)e^{-st} dt \\
\frac{\text{d}}{\text{d}s} X(s) &= \int^\infty_0 (-t)x(t)e^{-st} dt \\
\therefore -tx(t) &\leftrightarrow \frac{\text{d}X(s)}{\text{d}s}
\end {align*}
$$


위 property는 $\frac{1}{(s+2)}$ 나 $\frac{1}{(s+2)^2}$ 등의 Inverse Laplace Transform에서 많이 이용되며 다음과 같음.
(Partial Fraction Decomposition을 이용한 Inverse Laplace Transform에서 많이 사용되는 형태임)

$$
\begin{matrix}
X(s) &&\frac{\text{d}}{ds}X(s) && \frac{\text{d}^2}{ds^2}X(s)\\
\hline
(s+2)^{-1} &\rightarrow &-(s+2)^{-2} & \rightarrow &2(s+2)^{-3} \\
\downarrow  && \downarrow  && \downarrow \\
e^{-2t}u(t)&\rightarrow&-(-t)^{1}e^{-2t}u(t) &\rightarrow& 2(-t)^{2}e^{-2t}u(t)\\
\hline
x(t) && (-t)^1x(t) && (-t)^2x(t)
\end{matrix}
$$

일반적으로 $-(s+2)^{-2}$ 대신 $(s+2)^{-2}$이 주로 이용되는데, $-(s+2)^{-2}$에서 앞의 마이너스는 위의 표에서 보이듯이 $(-t)^1$에 대응하므로  $(s+2)^{-2}$는 $t^1x(t)$에 대응됨.

그러므로, 다음과 같이 일반화도 가능함.

$$
t^ne^{-at} \leftrightarrow \frac{n!}{(s+a)^{n+1}}, Re(s)>-a
$$