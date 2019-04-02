---
title:  "Fourier Transform of Sinc"
date:   2018-03-28 13:47:59
author: dsaint31
categories: Signals_and_Systems
use_math: true
tags: Fourier Exponential
---
# [SS] Fourier Transform of Sinc 
@(Signal and System)[#Fourier]

다음과 같은 pulse signal이 있다고 하자.


sinc를 직접 FT하기보다는, FT의 duality를 이용하여 다음과 같이 pulse signal에서 IFT로 보이는게 더 쉽다.
즉, 다음 성질을 이용한다.
$$ FT\left[ \text{pulse}(t)\right]=\tau\text{sinc} \left( \frac{\tau}{2\pi}\Omega \right) $$
freq. domain에서의 pulse signal은 다음과 같다.

$$X(\Omega)=\left \{ \begin{matrix}
1,& |\Omega|\le\frac{\Omega_s}{2} \\ 0,& otherwise\end{matrix} \right.$$

이 $X(\Omega)$를 IFT 시킨다.

$$
\begin {align*}
x(t)&=\frac{1}{2\pi}\int^{\infty}_{-\infty}X(\Omega)e^{j\Omega t}\text{d}\Omega\\
\quad &= \frac{1}{2\pi}\int^{\frac{\Omega_s}{2}}_{-\frac{\Omega_s}{2}}1e^{j\Omega t}\text{d}\Omega\\
\quad &= \frac{1}{2\pi} \left [ \frac{e^{j\Omega t}}{jt}\right]^{\frac{\Omega_s}{2}}_{\frac{\Omega_s}{2}}\\
\quad &= \frac{1}{2\pi jt} \left ( e^{j\frac{\Omega_s}{2} t}-e^{-j\frac{\Omega_s}{2} t}\right)\\
\quad &= \frac{\sin(\frac{\Omega_s}{2} t)}{\pi t} \\
\quad &= \frac{\frac{\Omega_s}{2}}{\pi}\frac{\sin( \frac{\Omega_s}{2} t)}{\frac{\Omega_s}{2} t} \\
\quad &= \frac{\Omega_s}{2\pi} \text{sinc} \left ( \frac{\frac{\Omega_s}{2} t}{\pi}\right) \\
\quad &= \frac{\Omega_s}{2\pi} \text{sinc} \left ( \frac{\Omega_s}{2\pi} t\right) \\
\end {align*} 
$$

IFT는 FT의 역변환이므로, 위의 결과는 $\frac{\Omega_s}{2\pi} \text{sinc} \left ( \frac{\Omega_s}{2\pi} t\right)$를 FT할 경우, pulse signal인 $X(\Omega)$가 나옴.
만일, $\Omega_s \text{sinc} \left ( \frac{\Omega_s}{2\pi} t\right)$를 FT 한다면 그 결과는 $2\pi X(\Omega)$ 가 되므로, 다음의 pulse 형태를 띈다.

$$X(\Omega)=\left \{ \begin{matrix}
2\pi,& |\Omega|\le\frac{\Omega_s}{2} \\ 0,& otherwise\end{matrix} \right.$$
