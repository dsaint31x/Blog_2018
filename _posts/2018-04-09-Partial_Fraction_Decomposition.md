---
title:  "[SS] Partial Fraction Decomposition"
categories: Signals_and_Systems
last_modified_at: 2018-04-09 23:47:59
author: dsaint31
use_math: true
tags: Partial_Fraction_Decomposition ss
toc: true
---
# 부분분수분해
@(Signal and System)

### Distinct Real Poles (Non-repeated linear factors)

$$ \begin{align*}
X(s) &= \frac {N(s)} {D(s)} \\ \frac{N(s)}{D(s)} &= \frac{A}{s-b} + R(s) \\ \frac{N(s)}{D(s)} \times {(s-b)} &= {A} + R(s)\times {(s-b)} 
\end{align*} $$ 

여기서 $s=b$를 사용하면, 

$$\begin{align*}
 \left[ \frac{N(s)}{D(s)} \times {(s-b)} \right]_{s=b}&= {A} + R(s)\times {0} \\ \left[ \frac{N(s)}{D(s)} \times {(s-b)} \right]_{s=b}&= {A} \\ \left[ \frac{N(s)}{D_{R}(s) \times {(s-b)}} \times {(s-b)} \right]_{s=b}&= {A} \\ \left[ \frac{N(s)}{D_{R}(s) } \right]_{s=b}&= {A} \\ 
\end{align*} $$ 

부분분수 분해에서 $(s-b)$가 분모인 항의 분자 $A$를 위와 같이 구할 수 있음.

주의할 것
* $D(s)$는 $D_{R}(s) \times (s-b) $로 분해가 가능함을 잊지말 것.
* 위의 방법을 사용하여 부분분수 분해를 하려면 $N(s)$와 $D(s)$는 서로소이며, $D(s)$가 $N(s)$보다 차수가 커야 함.


### Repeated Real Poles (Repeated linear factors)

분모인 $ D(s) $에 $ (s-b) $ 일차식의 거듭제곱 이상이 있는 경우(중근 존재)엔 조금 더 처리가 필요함.

일단, 세제곱의 경우를 살펴보면

$$\begin{align*} 
\frac{N(s)}{D(s)} &= \frac{A_1}{(s-b)}+\frac{A_2}{(s-b)^2}+\frac{A_3}{(s-b)^3} + R(s) \\ \frac{N(s)}{D(s)} \times {(s-b)^3} &= {A_1}\times {(s-b)^2}+{A_2}\times {(s-b)}+{A_3} + R(s)\times {(s-b)^3} 
\end{align*} $$ 

여기서 $s=b$를 사용하면,

$$\begin{align*}
\left[ \frac{N(s)}{D(s) } \times {(s-b)^3} \right]_{s=b}&= \left[ {A_1}\times {(s-b)^2}+{A_2}\times {(s-b)}+{A_3} + R(s)\times {(s-b)^3} \right]_{s=b}\\ 
\left[ \frac{N(s)}{D_{R_1}(s)} \right]_{s=b}&=\left[ {A_1}\times {(s-b)^2}+{A_2}\times {(s-b)}+{A_3} + R(s)\times {(s-b)^3} \right]_{s=b}\\ 
\left[ \frac{N(s)}{D_{R_1}(s)} \right]_{s=b}&=\left[ {A_1}\times {0}+{A_2}\times {0}+{A_3} + R(s)\times {0} \right]_{s=b}\\ \left[ \frac{N(s)}{D_{R_1}(s)} \right]_{s=b}&= {A_3}
\end{align*} $$ 

$(s-b)^3$이 분모인 항의 분자 $A_3$를 위와 같이 구할 수 있음.

그리고, $A_2$를 구하기 위해서는 다음과 같은 식에서

$$\begin{align*}
\frac{N(s)}{D(s)} &= \frac{A_1}{(s-b)}+\frac{A_2}{(s-b)^2}+\frac{A_3}{(s-b)^3} + R(s) \\ 
\frac{N(s)}{D(s)} \times {(s-b)^3} &= {A_1}\times {(s-b)^2}+{A_2}\times {(s-b)}+{A_3} + R(s)\times {(s-b)^3}  
\end{align*} $$ 

양변을 $s$에 대해 미분

$$ \frac {\text{d}}{\text{d}s} \left( {\frac{N(s)}{D_{R_1}(s)} } \right)= {A_1}\times {2(s-b)}+{A_2} + R(s)\times {3(s-b)^2} +R'(s)\times {(s-b)^3} $$

여기서 $s=b$를 사용하면,

$$\begin{align*}
\left[ \frac {d}{ds} \left( {\frac{N(s)}{D_{R_1}(s)} } \right) \right]_{s=b}&= {A_1}\times {0}+{A_2} + R(s)\times {0} + R'(s)\times {0}\\ 
\left[ \frac {d}{ds} \left( {\frac{N(s)}{D_{R_1}(s)} } \right) \right]_{s=b}&= {A_2} 
\end{align*} $$ 

$(s-b)^2$이 분모인 항의 분자 $A_2$를 위와 같이 구할 수 있음.

그리고, $A_1$를 구하기 위해서는 다음과 같은 식에서

$$\begin{align*} 
\frac{N(s)}{D(s)} &= \frac{A_1}{(s-b)}+\frac{A_2}{(s-b)^2}+\frac{A_3}{(s-b)^3} + R(s) \\ 
\frac{N(s)}{D(s)} \times {(s-b)^3} &= {A_1}\times {(s-b)^2}+{A_2}\times {(s-b)}+{A_3} + R(s)\times {(s-b)^3} 
\end{align*} $$ 

양변을 $s$에 대해 미분

$$ \frac {\text{d}}{\text{d}s} \left( {\frac{N(s)}{D_{R_1}(s)} } \right)= {A_1}\times {2(s-b)} +{A_2}+ R(s)\times {3(s-b)^2} +R'(s)\times {(s-b)^3} $$

양변을 다시 $s$에 대해 미분

$$ \frac {\text{d}^2}{\text{d}s^2} \left( {\frac{N(s)}{D_{R_1}(s)} } \right)= 2{A_1} + R(s)\times {6(s-b)} + ... $$

여기서 $s=b$를 사용하면,

$$\begin{align*} 
\left[ \frac {\text{d}^2}{\text{d}s^2} \left( {\frac{N(s)}{D_{R_1}(s)} } \right) \right]_{s=b}&= 2{A_1} + R(s)\times {0} + 0 + ... \\ 
\left[ \frac {\text{d}^2}{\text{d}s^2} \left( {\frac{N(s)}{D_{R_1}(s)} } \right) \right]_{s=b}&= 2{A_1} \\ 
\frac {1}{2} \left[ \frac {\text{d}^2}{\text{d}s^2} \left( {\frac{N(s)}{D_{R_1}(s)} } \right) \right]_{s=b}&= {A_1} 
\end{align*} $$ 

위를 일반화 하면 다음과 같음

$$ 
\frac{N(s)}{D(s)} = \frac{A_1}{(s-b)}+\frac{A_2}{(s-b)^2}+...+\frac{A_N}{(s-b)^N} + R(s) 
$$      

where 

$$\begin{align*} 
A_{k} &= \frac{1}{(N-k)!}\left[ \frac {\text{d}^{N-k}}{\text{d}s^{N-k}} \left\{ (s-b)^{N} X(s) \right\} \right]_{s=b} , k=1,2,...,N-1 \\ A_{N} &= \left[ (s-b)^{N} X(s) \right]_{s=b} 
\end{align*} $$ 

### Complex Poles
$$\begin{align*} 
X(s)&=\frac { N(s) }{ D(s) } \\ \frac { N(s) }{ D(s) } &=\frac { A_{ 1 }s+A_{ 2 } }{ \left( s-b_{ 1 } \right) \left( s-b_{ 2 } \right) } +R(s)\\ \frac { N(s) }{ D(s) } \times { \left( s-b_{ 1 } \right) \left( s-b_{ 2 } \right) }&={ \left(A_{ 1 }s+A_{ 2 }\right) }+R(s) \times { \left( s-b_{ 1 } \right) \left( s-b_{ 2 } \right) } \\ \lim _{ s\rightarrow b_{ 1 } }{ \left[ \frac { N(s) }{ D(s) } \times { \left( s-b_{ 1 } \right) \left( s-b_{ 2 } \right) } \right] } &=\lim _{ s\rightarrow b_{ 1 } }{ \left[ { \left(A_{ 1 }s+A_{ 2 }\right) }+R(s)\times { \left( s-b_{ 1 } \right) \left( s-b_{ 2 } \right) } \right] } 
\end{align*} $$ 

여기서 $s=b_1$를 사용하면, 

$$ \eqalign{ \left[A_{ 1 }s+A_{ 2 }\right]_{s=b_1} = \lim _{ s\rightarrow b_{ 1 } }{ \left[ \frac { N(s) }{ D(s) } \times { \left( s-b_{ 1 } \right) \left( s-b_{ 2 } \right) } \right] } } $$

위 등식에서 양변의 실수부와 허수부를 일치시키면 complex conjugate pole을 포함하고 있는 경우의 계수 $A_1$과 $A_2$를 구할 수 있음.



