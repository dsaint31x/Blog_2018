---
title:  "[Math] 벡터 기본"
last_modified_at: 2019-03-08
author: dsaint31
categories: 
  - Mathematics
  - Physics
use_math: true
tags: 
  - math 
  - physics
  - vector
---

# [Math] Vector (1)
@(Mathematics)[physics, vector]

### scalar

* 오직 크기만을 가지는 물리량

### vector

* 크기와 방향을 가지는 물리량.
* 다음 식은 3개의 component를 가지는 vector임.
* component로 표현 : $$\vec { a } =\left< { a }_{ 1 },{ a }_{ 2 },{ a }_{ 3 } \right>$$

### zero vector

* 모든 component(성분)의 값이 0인 vector.

### 차원

* vector의 component의 수.

### norm

* vector의 length 혹은 magnitude로 불림.
* 3차원 공간에서 Euclidean Norm은 다음과 같이 정의됨.

$$ 
\left\| \vec { a }  \right\| ={ \left\| \vec { a }  \right\|  }_{ 2 }={ \left( { a }_{ 1 }^{ 2 }+{ a }_{ 2 }^{ 2 }+{ a }_{ 3 }^{ 2 } \right)  }^{ \frac { 1 }{ 2 }  } 
$$

* 일반화된 L*P*-norm은 다음과 같음.

$$ 
{ \left\| \vec { a }  \right\|  }_{ P }=\left\{ \sum _{ i=1 }^{ n }{ { \left| { a }_{ i } \right|  }^{ P } }  \right\} ^{ \frac { 1 }{ P }  }
$$

* Euclidean norm의 경우 $P$=2임.

* **norm**은 다음의 조건을 만족함.
1. $$ { \left\| \vec { a }  \right\|  }_{ P }\ge 0 $$ , $$ \vec { a } =\vec{0} $$일 경우, $$ { \left\| \vec { a }  \right\|  }_{ P }=0 $$.
2. $$ { \left\| C \vec{a} \right\| }_P = \left\| C \right\| { \left\| \vec{a} \right\| }_{P} $$. 여기서 C는 상수. (양의 동차성)
3. $$ { \left\| \vec { a } +\vec { b }  \right\|  }_{ P }\le { \left\| \vec { a }  \right\|  }_{ P }+{ \left\| \vec { b }  \right\|  }_{ P } $$.

### position vector (위치벡터)

* 평면 $$ \text{R}^2 $$에서 점 $$P(a_1,a_2)$$에서 점 $$Q(b_1,b_2)$$방향의 벡터는 다음 그림과 같음.
* ![Position vector](https://3.bp.blogspot.com/-vyRFxxak3hg/Vz1zF1XAqcI/AAAAAAAA_Yg/-oXZiEmQbSofBUWf8qP2J6FAm7hG3gRrwCLcB/s1600/%25EC%25BA%25A1%25EC%25B2%2598.PNG)
* 여기서 $$\text{P}$$는 initial point(시작점,시점)이고, $$\text{Q}$$는 terminal point(종점)이라 함.
* position vector는 일반적으로 initial point가 원점인 경우로서, 이 경우 terminal point $$\text{Q}$$의 position vector라고 불림.

### vector의 합,차,상수배

* 다음의 두 vector가 있다고 하자.

$$
\begin{align*} 
\vec { a } &=\left< { a }_{ 1 },{ a }_{ 2 },{ a }_{ 3 } \right> \\
\vec { b } &=\left< { b }_{ 1 },b_{ 2 },{ b }_{ 3 } \right> 
\end{align*}
$$

* 합과 차, 상수배

$$\begin {align*}
  \vec { a } +\vec { b } &= \left< { a }_{ 1 }+{ b }_{ 1 },{ a }_{ 2 }+{ b }_{ 3 },{ a }_{ 3 }+{ b }_{ 3 } \right> \\ 
  \vec { a } -\vec { b } &= \left< { a }_{ 1 }-{ b }_{ 1 },{ a }_{ 2 }-{ b }_{ 3 },{ a }_{ 3 }-{ b }_{ 3 } \right> \\
  c\vec{a}&=\left<ca_1, ca_2, ca_3\right>, c \text{ is constant.}
	\end {align*}
$$

* ![inner product](https://3.bp.blogspot.com/-tG6hZGxCTSE/Vz10hcnO7cI/AAAAAAAA_Yw/r2MXMoZW45ItjESLc2JjRFlVW6EU8vHOACLcB/s1600/%25EC%25BA%25A1%25EC%25B2%2598.PNG)

### Unit vector

* $$\left\| \vec { a }  \right\| =1 $$인 $$\vec { a } $$를 **unit vector**라고 함.

### normalization

* 방향은 유지하되 norm인 1인 unit vector로 만드는 것

$$ 
\frac{1}{\left\| \vec { a }  \right\| }\vec { a }
$$


### dot product (or **inner product** or **scalar product**)

* 내적이라고 불리는 연산으로 다음과 같이 정의되며, 결과가 **scalar** 임.

$$ 
  \begin{align*}
	\vec { a } \cdot \vec { b } &=|| \vec { a } || || \vec { b } | | \cos { \theta  } \\
		\quad & = { a }_{ 1 }{ b }_{ 1 }+{ a }_{ 2 }{ b }_{ 2 }{ +a }_{ 3 }{ b }_{ 3 }
  \end{align*}
$$

* 두 vector 사이의 각을 구하는데 많이 이용됨.

### cross product (**exterior product** or **vector product**)

* 외적이라고 불리는 연산으로 다음과 같이 정의되며, 결과가 **vector** 임.

$$ 
\begin {align*}
\vec { a } \times \vec { b } &=\left( { \left\| \vec { a }  \right\|  }\left\| \vec { b }  \right\| \sin { \theta  }  \right) \vec { n }  \\
\quad &= \begin{vmatrix} \vec {i} & \vec {j} & \vec {k} \\ a_1 & a_2 & a_3 \\ b_1 & b_2 & b_3\end{vmatrix} \\
\quad &= \vec {i} \begin{vmatrix} a_2 & a_3 \\ b_2 & b_3 \end{vmatrix} + \vec {j} \begin{vmatrix} a_3 & a_1 \\ b_3 & b_1 \end{vmatrix} + \vec {k} \begin{vmatrix} a_1 & a_2 \\ b_1 & b_2 \end{vmatrix} \\
\quad &= \vec{i}(a_2b_3-a3b_2)+\vec{j}(a_3b_1-a_1b_3)+\vec{k}(a_1b_2-a_2b_1)
\end {align*}
$$

* 여기서 $$\vec { n } $$은 unit normal vector이며 right hand law에 따른 방향을 가지며 $$\vec { a }$$와 $$\vec { b }$$에 수직임.
* ![cross product](https://1.bp.blogspot.com/-KJyzoQwAA38/Vz1rgG8j84I/AAAAAAAA_YQ/xBdCWujvxyw7iskp6-ZLYWGK-PLpLyjBwCLcB/s1600/%25EC%25BA%25A1%25EC%25B2%2598.PNG)
* ![right-handed triple](https://docs.google.com/drawings/d/e/2PACX-1vSXFVDjIDf8_78UNcoFOzNeda_8RJrUrOtYJ2jEZ4NCI-MiEwh7a_PObtDLwltOZNYvBCauQwDh8EPE/pub?w=555&h=191)

### orthogonality

* $$ \vec { a } \neq \vec { 0 }$$ 와 $$\vec { b } \neq \vec { 0 } $$가 성립하면서 $$ \vec { a }$$와 $$ \vec { b }$$의 **inner product**가 0일 경우, 이 **두 벡터는 직교한다(orthogonal)** 라고 함.

----
### Cartesian Coordinate System(or Rectangular Coordinate System)에서 Vector표현.

벡터 v를 다음과 같은 직교좌표계에서 나타낼 경우, $$\text{i}$$,$$\text{j}$$,$$\text{k}$$라는 x축, y축, z축의 **positive direction**을 방향으로 하는 **base unit vector**를 이용하여 표현. 

$$ \vec{v} = a \vec{i} + b\vec{j} +c\vec{k} $$

![Vector of Cartesian Coordinate](https://docs.google.com/drawings/d/e/2PACX-1vR32QklmhWb9eKuRBaDs5ZoeJ0z2VuxEavTUOK6vMw8h03YdrwyNRjiSnleyDONDq_RfuAG0Ly5ytDn/pub?w=406&h=257)

* base unit vector : 기저 단위 벡터
* $$\vec{i},\vec{j},\vec{k}$$는 서로 orthogonal함.

### Directional cosine (방향여현) & Directional angles

* $$\vec{v}$$의 directional angles $$\alpha, \beta, \gamma$$ 는 다음과 같이 정의됨.
	* $$\alpha$$ is the angle b/w $$\vec{v}$$ and the positive x-axis ($$0 \le \alpha \le \pi$$)
	* $$\beta$$ is the angle b/w $$\vec{v}$$ and the positive y-axis ($$0 \le \beta \le \pi$$)
	* $$\gamma$$ is the angle b/w $$\vec{v}$$ and the positive z-axis ($$0 \le \gamma \le \pi$$)
* $$\vec{v}$$의 directional cosines $$\lambda, \mu, \nu$$ 는 다음과 같이 정의됨.
	* $$\lambda = cos \alpha = \frac{a}{|\vec{v}|}$$
	* $$\mu = cos \beta = \frac{b}{|\vec{v}|}$$
	* $$\nu = cos \gamma = \frac{c}{|\vec{v}|}$$

다음이 성립함.

$$
\left\|\vec {v}\right\|_2 = A = |\vec {v}| = \sqrt{a^2+b^2+c^2}=A\sqrt{\lambda^2+\mu^2+\nu^2} \\
\therefore \sqrt{\lambda^2+\mu^2+\nu^2} = 1
$$


