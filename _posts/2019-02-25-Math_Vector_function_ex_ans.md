---
title:  "[Math] 벡터함수 (간단예제 및 답)"
last_modified_at:   2019-02-25
author: dsaint31
categories: 
  - Mathematics
use_math: true
tags: 
  - Math 
  - Physics
---

# [Math] Vector (2) : Vector Function : ex
@(Mathematics)[physics, vector, mathematics, Mathematics]

### Problem 1. 

공간에서 움직이는 물체의 position vector $\vec{r}(t)$가 시간 $t$에 대해 다음과 같다.
$$\vec{r}(t)=\left< e^t, \cos{t}, t^3\right>$$

다음을 구하시오
1. velocity

	sol. 
	
	**velocity**$= \vec{r} \prime = \left< e^t, -\sin{t}, 3t^2\right>$
	
2. speed

	sol. 
	
	**speed**$=\left\| \vec{r} \prime\right\|_2 = \sqrt{ e^{2t} + (-\sin{t})^2 + (3t^2)^2 }  = \sqrt{ e^{2t} + \sin^2{t} + 9t^4 }$
	
3. acceleration

	sol. 
	
	**acceleration**$=\left< e^t, -\cos{t}, 6t\right>$  

---

### Problem 2. 

공간에서 움직이는 물체의 $t=0$에서 position vector와 velocity가 다음과 같다.

$$ \vec{r}(0)=\left< 0,1,0\right> , \quad \vec{v}(0)=\left < 2,1,0 \right> $$

해당 물체의 가속도가 $\left< 2t,3t^2, 1\right>$일 경우, 시간 $t$에서의 다음을 구하시오.

1. velocity

	$$
	\begin{align*}
	\vec{v}(t) &= \int_0^t \vec{a}(\tau)d \tau \\
	&= \left< \int_0^t 2\tau d \tau, \int_0^t 3\tau^2 d \tau , \int_0^t 1 d \tau\right>\\
	&= \left<t^2 +C_1, t^3+C_2, t+C_3 \right>\\
	\\
	\vec{v}(0) &=  \left < 2,1,0 \right> \\
	&= \left< C_1, C_2, C_3 \right>\\
	\\
	\therefore \vec{v}(t) &= \left<t^2 +2, t^3+1, t+0 \right>
	\end{align*}
	$$
	
2. position vector

	$$
	\begin{align*}
	\vec{r}(t) &= \int_0^t \vec{v}(\tau)d \tau \\
	&= \left< \int_0^t (\tau^2+2) d \tau, \int_0^t (\tau^3+1) d \tau , \int_0^t \tau d \tau\right>\\
	&= \left< \frac{t^3}{3} +2t +C_1, \frac{t^4}{4}+t+C_2, \frac{t^2}{2}+C_3 \right>\\
	\\
	\vec{r}(0) &=  \left < 0,1,0 \right> \\
	&= \left< C_1, C_2, C_3 \right>\\
	\\
	\therefore \vec{r}(t) &=  \left< \frac{t^3}{3} +2t +0, \frac{t^4}{4}+t+1, \frac{t^2}{2}+0 \right>
	\end{align*}
	$$

---

### Problem 3. 

다음의 vector function이 있다고 하자.

$$
\vec{v}(t) = \left< t, \cos{t}, \sin{t}\right>
$$

해당 vector function에 대한 다음을 구하시오.

1. unit tangent vector

	$$
	\begin{align*}
	\vec{T}(t) &= \frac{ \left< 1,-\sin{t},\cos{t}\right>}{\left\| \left< 1,-\sin{t},\cos{t}\right>\right\|_2} \\
	&= \frac{ \left< 1,-\sin{t},\cos{t}\right>}{\sqrt{2}}
	\end{align*}
	$$
	
2. unit normal vector

	$$
	\begin{align*}
	\vec{N}(t) &= \frac{\vec{T}\prime}{\left\| \vec{T} \prime \right\|_2}\\
	&=\frac{
	\frac{ \left< 0,-\cos{t},-\sin{t}\right>} {\sqrt{2}}
	}{ \left\|
	\frac{ \left< 0,-\cos{t},-\sin{t}\right>} {\sqrt{2}} 
	\right\|_2}\\
	&= \left< 0,-\cos{t},-\sin{t}\right>	\end{align*}
	$$

---

### Problem 4. 

3차원상에서  위치벡터 $\vec{r}=<x,y,z>$와 원점으로부터 거리를 나타내는 Scalar field $f(\vec{r})$을 구하라.

$$
\begin{align*}
f(\vec{r}) = f(<x,y,z>)=\sqrt{x^2+y^2+z^2}
\end{align*}
$$

---

### Problem 5.

다음 vector function $\vec{f}(t)$의 derivative를 구하시오.

$$
\begin{align*}
& \vec{f}(t) = \vec{a}(t) \cdot \vec{b}(t)\\
& where \\
& \vec{a}(t) = 2t^2\vec{i}+3\cos t\vec{j}+e^t \vec{k} \\
& \vec{b}(t) = <t \sin t, t \cos t, t>
\end{align*}
$$

**sol.**

$$
\begin{align*}
\vec{a}'(t) &= <4t, -3\sin{t}, e^t> \\
\vec{b}'(t) &= <\sin{t}+t\cos{t}, \cos{t}-t\sin{t}, 1> \\
\\
\therefore
\frac{d(\vec{a}(t) \cdot \vec{b}(t))}{dt}&=\vec{a}'(t)\vec{b}(t)+\vec{a}(t)\vec{b}'(t) \\
&=<4t^2 \sin{t}, -3t\sin{t}\cos{t}, te^t> + <2t^2(\sin{t}+t\cos{t}), 3\cos{t}(\cos{t}-t\sin{t}),e^t>\\
&=<6t^2 \sin{t}+ 2t^3 \cos{t}, 3\cos^2{t}-6t\sin{t}\cos{t},(t+1)e^t>
\end{align*}
$$
