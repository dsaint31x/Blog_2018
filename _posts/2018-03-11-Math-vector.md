---
title:  "[Math] Vector (1)"
last_modified_at:   2018-03-11
author: dsaint31
categories: 
  - Mathematics
use_math: true
tags: 
  - Math 
  - Physics
---


# [Math] Vector (1)
@(Mathematics)[#physics]

### scalar

* 오직 크기만을 가지는 물리량

### vector

* 크기와 방향을 가지는 물리량.
* 다음 식은 3개의 component를 가지는 vector임.
* $$ \vec { a } =\left< { a }_{ 1 },{ a }_{ 2 },{ a }_{ 3 } \right> $$

### zero vector

* 모든 component(성분)의 값이 0인 vector.

### 차원

* vector의 component의 수.

### norm

* vector의 length 혹은 magnitude로 불림.
* 3차원 공간에서 Euclidean Norm은 $$ \left\| \vec { a }  \right\| ={ \left\| \vec { a }  \right\|  }_{ 2 }={ \left( { a }_{ 1 }^{ 2 }+{ a }_{ 2 }^{ 2 }+{ a }_{ 3 }^{ 2 } \right)  }^{ \frac { 1 }{ 2 }  } $$으로 정의됨.
* 일반화된 P-norm은 다음임(Euclidean norm의 경우 P=2).
  * $$ { \left\| \vec { a }  \right\|  }_{ P }=\left\{ \sum _{ i=1 }^{ n }{ { \left| { a }_{ i } \right|  }^{ P } }  \right\} ^{ \frac { 1 }{ P }  }$$
* norm은 다음의 조건을 만족함.
1. $$ { \left\| \vec { a }  \right\|  }_{ P }\ge 0 $$, $$ \vec { a } =\vec{0} $$일 경우, $$ { \left\| \vec { a }  \right\|  }_{ P }=0 $$.
2. $$ { \left\| C \vec{a} \right\| }_P = \left\| C \right\| { \left\| \vec{a} \right\| }_{P} $$. 여기서 C는 상수. (양의 동차성)
3. $$ { \left\| \vec { a } +\vec { b }  \right\|  }_{ P }\le { \left\| \vec { a }  \right\|  }_{ P }+{ \left\| \vec { b }  \right\|  }_{ P } $$.

### position vector (위치벡터)

* 평면 $$ R^2 $$에서 점 $$  P(a_1,a_2) $$에서 점 $$ Q(b_1,b_2)  $$방향의 벡터는 다음 그림과 같음.
* ![Position vector](https://3.bp.blogspot.com/-vyRFxxak3hg/Vz1zF1XAqcI/AAAAAAAA_Yg/-oXZiEmQbSofBUWf8qP2J6FAm7hG3gRrwCLcB/s1600/%25EC%25BA%25A1%25EC%25B2%2598.PNG)
* 여기서 P는 initial point(시작점,시점)이고, Q는 terminal point(종점)이라 함.
* position vector는 일반적으로 initial point가 원점인 경우로서, 이 경우 terminal point Q의 position vector라고 불림.

### vector의 합,차,상수배

* 다음의 두 vector가 있다고 하자.
* $$ \vec { a } =\left< { a }_{ 1 },{ a }_{ 2 },{ a }_{ 3 } \right> $$, $$ \vec { b } =\left< { b }_{ 1 },b_{ 2 },{ b }_{ 3 } \right> $$
* 합과 차, 상수배
* $$\begin {align*}
  \vec { a } +\vec { b } &= \left< { a }_{ 1 }+{ b }_{ 1 },{ a }_{ 2 }+{ b }_{ 3 },{ a }_{ 3 }+{ b }_{ 3 } \right> \\ 
  \vec { a } -\vec { b } &= \left< { a }_{ 1 }-{ b }_{ 1 },{ a }_{ 2 }-{ b }_{ 3 },{ a }_{ 3 }-{ b }_{ 3 } \right> \\
  c\vec{a}&=\left<ca_1, ca_2, ca_3\right>, c \text{ is constant.}
	\end {align*}$$
* ![inner product](https://3.bp.blogspot.com/-tG6hZGxCTSE/Vz10hcnO7cI/AAAAAAAA_Yw/r2MXMoZW45ItjESLc2JjRFlVW6EU8vHOACLcB/s1600/%25EC%25BA%25A1%25EC%25B2%2598.PNG)

### Unit vector

* $$\left\| \vec { a }  \right\| =1 $$인 $$\vec { a } $$.

### normalization

* 방향은 유지하되 norm인 1인 unit vector로 만드는 것
* $$ \frac{1}{\left\| \vec { a }  \right\| }\vec { a }$$

### dot product (or **inner product** or **scalar product**)

* $$ 
  \begin{align*}
	\vec { a } \cdot \vec { b } &=|| \vec { a } || || \vec { b } | | \cos { \theta  } \\
		\quad & = { a }_{ 1 }{ b }_{ 1 }+{ a }_{ 2 }{ b }_{ 2 }{ +a }_{ 3 }{ b }_{ 3 }
  \end{align*}
  $$
* 두 vector 사이의 각을 구하는데 많이 이용됨.

### cross product (**exterior product** or **vector product**)

* $$ 
\begin {align*}
\vec { a } \times \vec { b } &=\left( { \left\| \vec { a }  \right\|  }\left\| \vec { b }  \right\| \sin { \theta  }  \right) \vec { n }  \\
\quad &= \begin{vmatrix} \vec {i} & \vec {j} & \vec {k} \\ a_1 & a_2 & a_3 \\ b_1 & b_2 & b_3\end{vmatrix} \\
\quad &= \vec {i} \begin{vmatrix} a_2 & a_3 \\ b_2 & b_3 \end{vmatrix} + \vec {j} \begin{vmatrix} a_3 & a_1 \\ b_3 & b_1 \end{vmatrix} + \vec {k} \begin{vmatrix} a_1 & a_2 \\ b_1 & b_2 \end{vmatrix} \\
\quad &= \vec{i}(a_2b_3-a3b_2)+\vec{j}(a_3b_1-a_1b_3)+\vec{k}(a_1b_2-a_2b_1)
\end {align*}$$
* 여기서 $$\vec { n } $$은 unit normal vector이며 right hand law에 따른 방향을 가지며 $$\vec { a } $$와 $$\vec { b } $$에 수직임.
* ![cross product](https://1.bp.blogspot.com/-KJyzoQwAA38/Vz1rgG8j84I/AAAAAAAA_YQ/xBdCWujvxyw7iskp6-ZLYWGK-PLpLyjBwCLcB/s1600/%25EC%25BA%25A1%25EC%25B2%2598.PNG)
* ![right-handed triple](https://docs.google.com/drawings/d/e/2PACX-1vSXFVDjIDf8_78UNcoFOzNeda_8RJrUrOtYJ2jEZ4NCI-MiEwh7a_PObtDLwltOZNYvBCauQwDh8EPE/pub?w=555&h=191)

### orthogonality
* $ \vec { a } \neq \vec { 0 }$ 이고, $$\vec { b } \neq \vec { 0 } $$일 때, 이 둘의 inner product가 0일 경우, 이 둘은 직교한다(orthogonal) 라고 함.


