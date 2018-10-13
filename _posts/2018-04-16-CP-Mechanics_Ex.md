---
layout: post
title:  "[Physics] 역학 문제풀이"
date:   2018-04-16 14:33:59
author: dsaint31
categories: Physics
use_math: true
tags: mechanics
---

# Mechanics Problems
@(Physics)[#mechanics]

### Problem 01

강 위 $50m$ 높이의 다리 위에서 소년이 돌($10kg$)/깃털($1g$)을 던지고 있음. 
(a) 돌과 깃털을 위방향으로, 
(b) 돌과 깃털을 아래방향으로 
속력 15m/s 으로 던지면, 돌과 깃털의 각각 수면 위에 떨어지는 순간의 속력은 얼마인가? (자유낙하로 계산하시오.)
> a)
>
> $$ \begin{align*}
v^2&=v_0^2 + 2as \\
v&= \sqrt{v_0^2 + 2as} \\
&=\sqrt{(+15)^2 + 2(-9.8)(-50)} \\
&=-34.7 (\text{m/s})\end{align*}
$$
>
> b)
>
> $$ \begin{align*}
v^2&=v_0^2 + 2as \\
v&= \sqrt{v_0^2 + 2as} \\
&=\sqrt{(-15)^2 + 2(-9.8)(-50)} \\
&=-34.7 (\text{m/s})\end{align*}
$$

### Problem 02
처음속력 10m/s로 위방향으로 던짐. 

(a) 위방향으로 올라간 최대 거리는 얼마인가?
(b) 최대 높이까지 올라가는데 걸린 시간은 얼마인가? 

> a)
>
> $$ \begin{align*}
v^2&=v_0^2 + 2as \\
s&=\frac{v_0^2 - v^2}{2a} \\
&=\frac{0^2 - 10^2}{2\cdot 9.8} \\
&= 5.10 (\text{m})
\end{align*}
$$
>
>
> b)
>
> $$ \begin{align*}
v &= v_0 +at , a=-9.8 (\text{m/s})\\
t &= \frac{v-v_0}{a}\\
&={0-10}{-9.8}\\
&=1.02(\text{s})
\end{align*}
$$


### Problem 03

다음의 경우, airdrag는 무시하라.
* 어떤 탄환($3g$)의 최대 도달거리가 $1km$임.
$g=10\left ( \frac{m}{s^2} \right)$이라고 할 때(여기서 $g$는 그램이 아님), 총구에서 발사 빠르기는 얼마인가?
* 어떤 대포($4kg$)의 사정거리가 $100km$일 때, 대포 탄환이 발사되는 순간의 속력은 얼마인가?

> horizontal velocity
>
> $$ v_h(t) = v_{h}(0) = v \cos \theta $$
>
> vertical velocity
>
> $$ v_v(t) = v_{v}(0) - gt = v \sin \theta -gt $$
> 
> 최고점 도달 시간 $T$
>
>$$v_v(t)=0 = v \sin\theta -gT \rightarrow T=\frac{v \sin\theta} {g}$$
>
> 최대 도달거리 가는데 걸리는 시간 : $2T$
>
>즉, 다음이 성립
> 
> $$ \begin{align*}
2T v_h(t)&=2T v \cos\theta \\
&= 2 v^2 \cos\theta \sin\theta /g \\
&= \frac{v^2 \sin2 \theta}{g} \\
&= 1 (\text{km}
)
\end{align*}
$$
>
>
>최대 도달거리일 경우 $\sin 2\theta=1$ 이므로 다음이 성립.
>
>$$ \begin{align*}
v &=\sqrt{1000\cdot g} (m/s)\\
&= \sqrt {(1000\cdot10)} \\
&= 100 (\text{m}/\text{s}) 
\end{align*}
$$
>
>
>대포 의 경우,
>
> $$\begin{align*}
v&=\sqrt{(100000×10)} \\
&=1000 (\text{m}/\text{s})
\end{align*}
$$


### Problem 04

중력가속도를 $10\left ( \frac{m}{s^2} \right)$이라 할 때 지표면에서 무게가 $600N$인 학생이 엘리베이터 안의 저울 위로 올라갔다. 이때 저울의 눈금이 $720N$이라고 하면 엘리베이터는 어느 방향으로 어떤 가속도의 크기로 운동하고 있는가

> 무게는 중력에 의해 받는 힘. 
>
> $$mg = 600 (N) \rightarrow m=60 (kg)$$
>
>
> 무게가 증가했으므로 엘리베이터는 중력의 반대방향을 +라 할 경우 +의 가속도 운동을 하고 있음.
> 이 경우, 질량 $m$인 학생이 가속도 $a$로 운동하는 운동방정식은 
>
> $$ma= N-mg$$
>
> $a$로 가속하고 있는 엘리베이터에서의 무게는 결국 수직항력 (N)과 같으므로,
>
> $$ma = 720-600 = 120 \rightarrow a= 2.0 \left( \frac{m}{s^2} \right )$$
>
> (학생과 엘리베이터는 같은 가속도로 운동 중임)


### Problem 05

 정지해 있던 원자 질량이 238u인 우라늄(U) 원자에서 질량이 4u인 알파입자가 튀어나오고, 남게 되는 원자핵은 그 반동으로 운동한다.
 알파입자의 빠르기를 $v_0$라 하면, 붕괴 후 남은 새 원자핵의 빠르기는 얼마인가?
 알파입자의 운동에너지는 새 원자핵 운동에너지의 몇 배인가?

> Conservation of momentum에 의해
>
> $$\begin{align*} 234v+4v_{ 0 } & =238\cdot 0 \\ v & =\frac { -4v_{ 0 } }{ 234 }  \end{align*}$$
>
>
> Kinetic energy의 공식으로 정리하면 다음과 같음.
>
>$$
\begin{align*} 
E_k^{ \alpha  } & =\frac { 1 }{ 2 } 4v_{ 0 }^{ 2 } \\ 
E_k^{ new } & =\frac { 1 }{ 2 } 234\left\{ \frac { -4v_{ 0 } }{ 234 }  \right\} ^{ 2 } \\ 
\quad  & =\frac { 1 }{ 2 } 4\frac { 4v_{ 0 }^{ 2 } }{ 234 }  \\ 
\quad  & =\frac { 4 }{ 234 }  \frac { 1 }{ 2 } 4v_{ 0 }^{ 2 }\\ 
\quad  & =\frac { 4 }{ 234 } E_k^{ \alpha  }  \\
\therefore E_k^{ \alpha} & = \frac{234}{4}E_k^{ new }
\end{align*}$$


### Problem 06

 마찰이 없는 평면 위에 질량이 $M$인 나무토막이 놓여 있다.
 질량이 $m$인 공이  $x$축과 각 $θ$로 빠르기 $v$로 부딪친 후, 같은 각도와 같은 빠르기로 튀어나왔다.
* 공의 운동량(momentum) 변화량과 나무토막이 받은 충격량(impulse)을 구하라.
* 충돌 후 나무토막의 빠르기는 얼마인가?

> 공의 운동량 변화
>
> $$mv\cos{\theta} \rightarrow-mv\cos{\theta}\\\therefore \Delta P_m = -2mv\cos{\theta}$$
>
>
> 나무토막이 받은 impulse는 공의 잃은 momentum임.
>
> $$\Delta P_M = 2mv\cos{\theta}$$
>
>
> 충돌후 나무토막의 빠르기는
>
> $$\begin{align*} Mv_{ M } & =2mv\cos { \theta  }  \\ v_{ M } & =\frac { 2mv\cos { \theta  }  }{ M }  \end{align*}$$


### Problem 07
 빠르기가 $v_0$인 양성자가 정지한 다른 양성자와 탄성충돌 한 후, 두 양성자는 입사한 양성자 방향을 기준으로 대칭적으로 똑같은 각도방향으로 산란되었다. 이때 대칭성으로 두 양성자의 빠르기는 같다.
 충돌 후 양성자의 빠르기를 구하시오.
 충돌 후 입사한 양성자 방향으로부터 두 양성자가 산란된 각도를 구하시오.

> momentum conservation law에 의해 다음이 성립.
>
> $$\begin{align*} mv_0&=2mv\cos{\theta } \\ v &=\frac{v_0}{2\cos{\theta}}\end{align*}$$
>
> elastic collision이므로, kinetic energy가 보존됨
>
> $$\begin{align*} \frac { 1 }{ 2 } mv_{ 0 }^{ 2 } & =\frac { 1 }{ 2 } 2m \left\{ \frac { v_{ 0 } }{ 2\cos { \theta  }  }  \right\}^2 \\1&=2\left\{ \frac {1}{4\cos^2{\theta}}\right\} \\\cos^2{\theta}&=\frac{1}{2} \end{align*}$$
>
>$$\therefore\theta=45°$$


#### Problem 08

경사각이 $30˚$인 경사면 위에 질량이 $20kg$인 물체가 놓여있음. ($g=10\frac{m}{s^2}$ 가정)
* 물체를 $15 ㎧$의 속력으로 바닥면 위치에서 경사면 위로 밀어 올렸을 때, 마찰력이 없는 경우 물체가 정지하기까지 비탈면을 따라 올라간 수직높이는 얼마인가?
* 물체와 경사면 사이에 마찰력이 있고 운동마찰계수가 0.4라면, 물체가 정지하기 까지 비탈면을 따라 수직으로 올라간 높이는 얼마인가?

> kinetic energy가 모조리 potential energy로 전환됨 (friction이 없으므로)
>
> $$E_{ k }=\frac { 1 }{ 2 } \cdot 20\cdot { 15 }^{ 2 }={ E }_{ p }=20\cdot 10\cdot h\\ \therefore h=\frac { \frac { 1 }{ 2 } \cdot 20\cdot { 15 }^{ 2 } }{ 20\cdot 10 } =11.25m$$
>
> friction이 있으므로 normal force를 구해야함. 
>
> 경사각이 30도 이므로 normal force는
>
> $${F  }_{N  }=\cos {30 ° } \cdot10\cdot 20$$
>
>
> energy conservation law를 적용하면
>
> $$\frac { 1 }{ 2 } \cdot 20\cdot { 15 }^{ 2 }-0.4\cdot \cos { 30° } \cdot 10\cdot 20\cdot \frac{ h}{ \sin { 30° }}   =20\cdot 10\cdot h\\ \frac { 1 }{ 2 } \cdot 20\cdot { 15 }^{ 2 }=(20\cdot 10+0.4\cdot \cos { 30° } \cdot 10\cdot 20\frac{1}{ \sin { 30° }} )h\\ \therefore h=6.6457m $$
