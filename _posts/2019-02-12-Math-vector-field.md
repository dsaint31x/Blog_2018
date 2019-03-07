---
title:  "[Math] 벡터장과 벡터연산"
last_modified_at:   2019-02-12
author: dsaint31
categories: 
  - Mathematics
  - Physics
use_math: true
tags: 
  - math 
  - physics
  - curl
  - gradient
---

# [Math] Vector (3) : Vector Field & Vector Operator
@(Mathematics)[physics, vector, mathematics, Mathematics]

* **정의역(domain)**이 $\text{R}$ 이면서 **공역(codomain)**이 $\text{R}^n$ 인 경우, ***vector function***.
* **정의역(domain)**이 $\text{R}^n$ 이면서 **공역(codomain)**이 $\text{R}^n$ 인 경우, ***vector field***.

> Scalar function은 **codomain**이 $\text{R}$인 경우임.
> 1변수 scalar function 은 **정의역(domain)**이  $\text{R}$ 인 경우이고, 2변수 scalar function은 $\text{R}^n$ 인 경우

![vector_field](https://docs.google.com/drawings/d/e/2PACX-1vStcPIxshykUa8wVnH16my8PmF8xri8jQF3vsxAMc8p5aFziz5bxAvgPKaBBCdSYwRTRcthB_85cqr9/pub?w=721&h=258)

## Del 연산자, $\nabla$

* W.R. 해밀턴이 제안한 vector operator (벡터 연산자).
* 그 자체도 vector임.

$$
\nabla = \left< \frac{\partial}{\partial x}, \frac{\partial}{\partial y},\frac{\partial}{\partial z}\right>
$$

* vector 연산에서 사용할 수 있는 vector로서, gradient, divergence, curl을 구하는데 사용됨.
* del (delta,$\Delta$와 비슷한 데서 유래), 혹은 nabla (하프와 비슷한 고대 이스라엘의 현악기)라고 읽어짐.

## Gradient (구배, 기울기, 경사, 경도), $ \nabla f $

* scalar field로부터 vector field를 얻어냄.
* scalar field의 각각의 위치에서 **해당 scalar field가 가장 빠르게 증가하는 *방향*과 그 *기울기* **를 나타내는 **vector field**를 구함.(gradient에 -1을 곱하면, 가장 빠르게 감소하는 방향을 가르키게 됨)
*  scalar function이 $f$가 3변수 함수,$f(x,y,z)$라고 할 때, 해당 함수의 gradient vector field는 다음과 같음.

$$
\begin {align*}
\nabla f(x,y,z) &= \left< f_x(x,y,z),f_y(x,y,z),f_z(x,y,z) \right> \\
&= \frac {\partial f}{\partial x}\vec{i}+\frac {\partial f}{\partial y}\vec{j}+\frac {\partial f}{\partial z}\vec{k}
\end {align*}
$$

## Divergence, $ \nabla \cdot \vec{v}(t) $

* $\nabla$와 vector field $\vec{v}(t)$의 scalar product(or dot product).
	* scalar product이므로 당연히 결과는 scalar!!
* Divergence는 유량을 이용하여 애길 할 때는, net outward flux per unit volume 임.
	* 표면적 $S$인 미소체적 $\Delta v$로부터, 외부로 빠져나가는 임의의 물리량인 vector $A$의 총량을 미소체적 $\Delta v$로 나눈 scalar value.
	* $\vec{v}(t)$가 어떤 액체의 유속을 나타낼 경우, Divergence는 특정 점에서 액체가 빨려들어가는지(모여서 없어짐) 외부로 유출되는지(퍼져나옴)를 알려줌.
	* 이는 vector field가 특정 점에서 퍼져나가는지(source), 모여서 없어지는지(sink)를 나타낸다고 할 수 있음.
* $ \nabla \cdot \vec{v}(t) > 0$ 이면 해당 $t$는 source이고, $ \nabla \cdot \vec{v}(t) < 0$ 이면 해당 $t$는 sink임.

* Vector field $\vec{v}=\left< P,Q,R \right>=P\vec{i}+Q\vec{j}+R\vec{k}$에 대한 divergence는 다음과 같이 정의됨.

$$
\begin{align*}
\nabla \cdot \vec{v}(t) &= \left< \frac{\partial}{\partial x}, \frac{\partial}{\partial y},\frac{\partial}{\partial z}\right> \cdot \left< P,Q,R \right> \\
&= \frac{\partial P}{\partial x}+\frac{\partial Q}{\partial y}+\frac{\partial R}{\partial z} \\
&= P_x+Q_y+R_z 
\end{align*}
$$

 **Divergence의 예 (Electric field)**
 
![divergence](https://docs.google.com/drawings/d/e/2PACX-1vQqYeO-Aogo6QoX0iTLcRjmu7acMCHkT_n6PyRnZtOgDL6ayIV2PSZeB2AUGMDC9tCp3zEB6H62OtxR/pub?w=669&h=315)

> Electric field : charge를 띤 물체(관찰대상)가 공간상의 어느 점 P에 있는 시험전하에 가해주는 **단위전하량 당 전기력**
> 위의 예에선  point charge 및 infinite parallel plate capacitor가 charge를 띤 물체에 해당하며
> Divergence가 구해진 위치는 point charge들의 경우는 point charge가 있는 곳에 해당하고 parallel plate capacitor의 경우엔 두 판의 사이 어딘가라고 생각하면 됨.

### Curl (or rotation, volticity), $ \nabla \times \vec{v}(t) $

* $\nabla$와 vector field $\vec{v}(t)$의 vector product(or cross product).
	* vector product이므로 당연히 결과는 vector!!
* Vector field에서 특정 점에서의 circulation이 얼마나 되는지를 나타낸다. 
	* vector의 방향은 회전축에 해당(오른손의 법칙)하며, 크기(norm) 는 rotation의 세기를 의미.
	* 수학의 경우, 반시계방향이 **+**(,positive direction)에 해당
	* **Curl의 결과 vector의 norm**은 **미소면적 $\Delta S$**를 감싸는 **closed curve $C$**를 따라 **line integral을 한 값**을 **$\Delta S$로 나눈 것**에 해당함.
* Vector field $\vec{v}=\left< P,Q,R \right>=P\vec{i}+Q\vec{j}+R\vec{k}$에 대한 divergence는 다음과 같이 정의됨.

$$
\begin{align*}
\nabla \times \vec{v}(t) &= \left| \begin {matrix} \vec{i} & \vec{j} & \vec {k} \\ \frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\ P & Q & R  \end{matrix} \right| \\
&= \left< R_y -Q_z, P_z-R_x, Q_x-P_y\right>
\end{align*}
$$

 **Curl**
 ![curl](https://docs.google.com/drawings/d/e/2PACX-1vQzI1tW1-7tJNL-VN2GIF_SvaeRsN4VoqXKnMv4QpRFzEGsUa61tC0ZUiwYhiAYKJPxAhb9uhzTWpCK/pub?w=435&h=464)

### Laplacian (Scalar), $\nabla ^2 f$

* Laplacian의 뜻은 "Laplace로부터 나옴"임. (-ian = -로부터 유래)
* Laplace Operator라고도 불림.
* 단, 연산대상인 scalar function $f$가 두번 미분 가능해야 함.
* 두번 미분 가능한 scalar function $f$의 gradient에 divergence를 구한 경우가 바로 Laplacian임.
	* $\nabla^2 f = 0$을 Laplace equation 이라고 부름.

$$
\begin {align*}
\nabla ^2 f &= \nabla \cdot ( \nabla f) \\
&= \frac{\partial^2 f}{\partial x^2}+\frac{\partial^2 f}{\partial y^2}+\frac{\partial^2 f}{\partial z^2}
\end {align*}
$$

* scalar 에 대한 Laplacian은 gradient에 divergence를 구한것.

### Laplacian (Vector), $\nabla ^2 \vec{v} $

$$
\nabla ^2 \vec{v} = \nabla ( \nabla  \cdot \vec{v}) - \nabla \times (\nabla \times \vec{v})
$$

### Summary of Vector Operations 

![vec_op](https://docs.google.com/drawings/d/e/2PACX-1vQXp6XFvYVJEo_A90Q-O_uOCI6_Xfft7cZ-FquxjVsrLFSrp1WJcnbtlr5aPF3vrJK-kFfPhB7vIEvI/pub?w=953&h=611)

----------

### The Curl (or Rot) of Gradient

* Potential Energy를 $U$라고 하자.
* 여기서 $U$는 $U=U(x,y,z)$라고 표현되는 scalar function이다.. (중력에 의한 위치에너지 생각할 것)
* 이 $U$에 대한 gradient는 다음과 같음.

$$
\begin {align*}
\nabla U &=  \frac{\partial U}{\partial x}\vec{i} + \frac{\partial U}{\partial y}\vec{j} +\frac{\partial U}{\partial z}\vec{k} \\
&= \left < \frac{\partial U}{\partial x}, \frac{\partial U}{\partial y},\frac{\partial U}{\partial z} \right>
\end{align*}
$$

* 여기에 Curl 을 구하면 다음과 같음.

$$
\begin{align*}
\nabla \times \nabla U &= \left | \begin{matrix} \vec{i} & \vec{j} & \vec {k} \\ \frac{\partial}{\partial x} & \frac{\partial}{\partial y} & \frac{\partial}{\partial z} \\ \frac{\partial U}{\partial x} & \frac{\partial U}{\partial y} & \frac{\partial U}{\partial z}\end{matrix}\right | \\
&= \left ( \frac{\partial^2U}{\partial y\partial z}-\frac{\partial^2U}{\partial z\partial y}\right) \vec{i} + 
\left ( \frac{\partial^2U}{\partial z\partial x}-\frac{\partial^2U}{\partial x\partial z}\right) \vec{j} +
\left ( \frac{\partial^2U}{\partial x\partial y}-\frac{\partial^2U}{\partial y\partial x}\right) \vec{k} \\
&=0
\end{align*}
$$

즉, **어떤 scalar function에 대한 gradient의 curl은 항상 0임**.

#### Note1
> **참고 : Conservative Force(보존력)**
> Conservative Force, $F$인 경우, 다음 두가지 조건을 반드시 만족해야 함.
> * $F = - \nabla U$ 
> * $\nabla \times F = 0$
>
> Conservative Force로는 중력, 탄성력, 전기력 등이 있으며,
> 물체에 Conservative Force만 작용하면 **역학적에너지 보존**이 성립함.
>
> **Conservative Force 정의**는 다음과 같음. 
> * 물체에 가해진 힘으로 해당 물체의 위치가 변화될 때, 
> * 해당 물체의 Potential Energy의 변화량이
> * 경로에 상관없이 동일할 경우
> * 해당 물체에 가해진 힘을 **Conservative Force**라고 한다.
>
>위의 수학적 표현
> * Conservative Force의 변위에 대한 선적분(line integral)이 **경로 독립** $\rightarrow$ 경로가 폐곡선일시 경로에 대한 적분의 값은 항상 0
> 
> 보존력이 아닌 경우, 일을 하게 되면 그 일부가 열에너지 등으로 변환되어 **역학적에너지 보존** 이 성립하지 않음 (단, 일에서 비보존력이 수직방향으로 가해진 경우는 역학적에너지 보존법칙이 성립 ).

#### Note2
> 다음의 Line Integral이 경로독립일 조건 (아래 조건 1,2,3 모두 같은 애기를 하는 것임.)
>  $$ \int_{C} \vec{F}(\vec{r}) \cdot d\vec{r} = \int_{C} \left( F_x dx + F_y dy + F_z dz \right)$$
> 
> 1. $\vec{F} = \left< F_x, F_y, F_z \right>$가 임의의 scalar function $f$의 gradient인 경우, line integral은 경로독립임.
> 이는 다음과 같이 표현됨. $\vec{F}=\nabla f=\left< \frac{\partial f}{\partial x},\frac{\partial f}{\partial y},\frac{\partial f}{\partial z}\right>$
>
> 2. 만약 모든 closed curve $C$를 따라 적분한 값이 0인 경우, line integral은 경로 독립임.
>   경로에 의존하지 않기 때문에 closed curve의 C를 따라 적분할 경우 무조건 0임. $ \oint \vec{F}(\vec{r}) \cdot d\vec{r} =0$
>   
> 3. 만약 $\nabla \times \vec{F} =0$을 만족하게 되는 경우 line integral은 경로 독립임.(2번에서 스토크스 정리를 사용하여 유도)

### The Divergence of Curl

* Vector field의 curl (회전)을 구하면 다음과 같음.

$$
\nabla \times \vec{v} = \left< \frac{\partial R}{\partial y}-\frac{\partial Q}{\partial z} , \frac{\partial P}{\partial z}-\frac{\partial R}{\partial x} , \frac{\partial Q}{\partial x}-\frac{\partial P}{\partial y}\right>
$$

* 여기에 divergence는 다음과 같음.

$$
\begin{align*}
\nabla \cdot (\nabla \times \vec{v}) &= \nabla \cdot \left< \frac{\partial R}{\partial y}-\frac{\partial Q}{\partial z} , \frac{\partial P}{\partial z}-\frac{\partial R}{\partial x} , \frac{\partial Q}{\partial x}-\frac{\partial P}{\partial y}\right> \\
&= \frac{\partial R}{\partial x \partial y}-\frac{\partial Q}{\partial x \partial z} + \frac{\partial P}{\partial y \partial z}-\frac{\partial R}{\partial y \partial x} + \frac{\partial Q}{\partial z \partial x}-\frac{\partial P}{\partial z \partial y} \\
&= 0
\end{align*}
$$

* 이는 **Vector field의 회전(curl)**로부터는 **특정 위치에서의 유입량과 유출량의 차이가 발생하지 않음** 을 의미함.





