---
title:  "[Physics] Terminal Velocity and Differential Equation"
date:   2018-03-18 19:11:59
author: dsaint31
categories: Physics
use_math: true
tags: physics
---

# 빗방울의 종단속도(terminal velocity)
@(Physics)[physics]

1. 빗방울은 free-fall이 아님 = Air drag존재.
2. 중력에 대해, 크게 2가지의 저항력이 있음.
3. **마찰 저항** : 물방울 표면적이 둘러싸고 있는 공기와 접촉으로 인해 떨어지는 것을 방해하는 힘으로 작용. **점성저항** 이라고도 불림.
4. **압축 저항** : 물방울이 떨어질 때 물망울 밑에 있는 공기들이 물발울이 떨어지는 것을 방해하는것.
5. **종단속도**는 이 2개의 저항력과 중력을 고려하여 계산 가능.
6. 2가지 방법( **differential equation**과 **힘의 평형**을 이용한 방법)으로 풀 수 있는데, 전자는 종단 속도 외에 시간당 빗방울의 속도함수를 아예 구해낼 수 있음.

즉, 3개의 힘이 작용함.

* 중력
* 마찰저항 ($\propto v_{fall}$) : $v_{fall}$이 느린 경우 영향력이 큼.
* 압축저항 ($\propto v_{fall}^2$) : $v_{fall}$이 매우 빠른 경우 영향력이 커짐. 

위 3힘 중 작은 빗방울의 경우 압축저항은 무시할 수 있으므로 일단 마찰저항을 중심으로 생각하면 다음 2개의 힘이 됨.

* 떨어지는 힘.

$$ 
F = ma_{gravity} =mg
$$

* 이를 방해하는 힘.

$$
F_{air-drag}=kv_{fall}
$$

여기서 $k$는 일종의 마찰상수라고 생각하면 되며, 양수임.

Newton의 제2법칙(The law of acceleration)을 적용하면

$$
\begin{align*} 
F_{final}=ma&=m\frac{dv(t)}{dt}\\
\quad &= mg - kv(t) \\
\\
\frac{dv(t)}{dt} &= -g-\frac{k}{m}v(t)
\end{align*}
$$

즉, 위의 differential equation(미분방정식)을 풀면 빗방울 속도 함수$v(t)$를 구할 수 있음.

$$
\begin{align*} 
\frac{dv(t)}{dt} &= -g-\frac{k}{m}v(t) \\
\frac{dv(t)}{dt} &= -\frac{k}{m} \left ( v(t)-\frac{mg}{k}\right) \\
\frac{1}{\left ( v(t)-\frac{mg}{k}\right)}\frac{dv(t)}{dt} &= -\frac{k}{m} \\
\frac{1}{\left ( v(t)-\frac{mg}{k}\right)} dv(t) &= -\frac{k}{m}dt \\
\int \frac{1}{\left ( v(t)-\frac{mg}{k}\right)} dv(t) &= \int -\frac{k}{m}dt \\
\ln \left | v(t)-\frac{mg}{k} \right | &= - \frac{k}{m} +C
\end{align*}
$$

빗방울의 속도는 terminal velocity로 수렴하므로 $mg-kv \ge 0$이므로, 다음이 성립.

$$\ln \left | v(t)-\frac{mg}{k} \right | = \ln \left ( -v(t)+\frac{mg}{k}t \right ) $$

즉, 속도 $v(t)$는 다음과 같음.

$$
\begin{align*} 
\ln \left ( \frac{mg}{k}-v(t) \right ) &= - \frac{k}{m} t+C \\
\frac{mg}{k}-v(t)  &= e^{- \frac{k}{m} t+C} \\
v(t) &= \frac{mg}{k}-e^{- \frac{k}{m} t}e^C
\end{align*}$$

초기조건인 $t=0$일때 속도는 0, $v(0)=0$을 이용하여 integral constant $C$, 정확히는 $e^C$를 구함.

$$
\begin{align*} 
\ln \left ( \frac{mg}{k}-v(t) \right ) &= - \frac{k}{m} t+C \\
\frac{mg}{k}-v(t) &= e^{- \frac{k}{m} t+C} \\
\frac{mg}{k}-v(0) &= e^{- \frac{k}{m}0}e^C \\
\frac{mg}{k}-0 &= 1\times e^C \\
\\
\therefore e^C=\frac{mg}{k}
\end{align*}$$

$e^C$를 대입한 속도 $v(t)$는 다음과 같음.

$$
\begin{align*} 
v(t) &= \frac{mg}{k}-e^{- \frac{k}{m} t}e^C \\
\quad &=\frac{mg}{k}-e^{- \frac{k}{m} t}\frac{mg}{k} \\
\quad &=\frac{mg}{k} \left (1- e^{-\frac{k}{m} t} \right ) 
\end{align*}$$

Terminal velocity는 $t$를 무한대로 취하여 위식에 대입하면 구할 수 있음.

$$
\begin{align*} 
\lim_{t\rightarrow \infty }v(t) &= \frac{mg}{k} \left (1- e^{-\frac{k}{m} t} \right ) \\
\quad &= \frac{mg}{k}
\end{align*}$$

![TerminalVelocity](https://docs.google.com/drawings/d/e/2PACX-1vQZwrcJMQTyDuOfBK0DEnbBotYnWVGaJr5i01HwCOvYOm8ucrD4x58IFUHnTbqmLX9tXLHkY_f0sUlZ/pub?w=862&h=349)

위의 Differential equation은 어떤 순간의 속도도 구해낼 수 있지만, 단지 Terminal velocity를 구하려면 힘의 평형을 이용하여 구할 수도 있음.

$$
\begin{align*} 
mg &= kv_{terminal} \\
v_{terminal} &= \frac {mg}{k}
\end{align*}
$$
