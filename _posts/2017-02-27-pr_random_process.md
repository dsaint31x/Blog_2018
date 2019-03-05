---
title:  "[Pr] Random Process 요약."
last_modified_at:   2017-02-27
author: dsaint31
categories: 
  - Signals_and_Systems
use_math: true
tags: 
  - random process
  - random
  - process
  - stochastic process
---

# [Pr] Random Process
@(Signal and System)[random, probability, process, stochastic]

 A **random process** or **stochastic process** is an *indexed family of random variables* that is specified by 
 * **the set of joint distributions of any number** and 
 * **choice of random variables** in the family. 
 
The **mean**, **autocovariance**, and **autocorrelation** functions summarize some of the information contained in **the joint distributions of pairs of time samples**.

> * 확률법칙 에 의해 생성되는 일련의(sequential) 통계적인 현상

### Definition (simple version) 

#### 수학적 정의

$$
X(t,\zeta); t\in I, \zeta\in S \\
$$
where,
$$
\begin{align*}
&\quad S \text{ is sample space.} \\
&\quad \zeta \text{ is outcome.} \\
&\quad t \text{ is time.}
\end{align*}
$$

* A random process or stochastic process is a set (or family) of random variables indexed by time.
* **시간** 별로 표시(indexed by time)된 **random variable(확률변수)들**로 구성된 **집합**(or 모음) : set of random variable or sequence(수열) of random variable.
* **시간** 변수 $t$(continuos) 혹은 $n$(discrete)에 대한 **random variable**을 mapping하는 function.
* **시간**을 고정할 경우, random variable이 됨.

#### 정성적 설명
* 시간에 따라 random variable의 확률(or 확률분포)가 변하는 것을 고려!
	* random variable + the time related change 
	* 예: 100년간 사용된 주사위 (처음엔 각 수가 나올 확률이 1/6로 균등하지만 세월이 지나면 마모등으로 그 확률이 변하게 됨)
* 예를 들자면, 10년간의 특정 종목의 주식 시세에서 모종의 규칙을 찾아내어, 해당 규칙으로 주식 시세를 표현(시간과 특정가격의 함수: 특정 시간에 특정 가격일 확률 반환하는 함수)하고자 하는 것.
* signal의 random한 noise의 경우, 특정 시간에서의 크기를 구하기 매우 어렵지만, 확률적 과정을 따를 경우(혹은 통계적 특성을 따를 경우), 확률 및 통계를 통해 해석 및 처리가 가능함.
	* Probability density function, mean, std등의 통계량을 통해 확률적으로 처리.

> 변수라는 게 있어 확률적으로 값을 취한다고는 했으나, 사실은 아주 미세하게 이면을 들여다보면 확정적인 공식이 성립하는 시스템이 있을 것이다. 브라운 운동을 설명하는 데 있어 공기분자들의 상태를 모두 모델링한다면 확정적으로 연기분자의 움직임을 알 수 있을지 모른다. 그러나 그것은 너무나 많은 메모리와 프로세서를 소모하게될 것이므로, 대신 브라운 운동은 확률적으로 간단하게 설명되어지곤 한다. 이 경우에서 볼 수 있듯이 확률을 도입하는 것은 시스템을 보다 간단하게 바라볼 수 있도록 해주는 것이다.
>
>그러나 확률을 도입해서 시스템의 변수 수를 줄인다 하더라도, 너무 줄이면 간단함을 얻은 대신 정확성이 결여되는 것이 통례이다.

#### 용어적 설명

* Random / Stochastic
	* **미래의 결과를 과거 시점에서 정확히 구할 수 없음**을 의미함.
	* 하지만, 결과값이 어떤 통계적 규칙성(or Probability Distribution)을 따름(예 : 주사위를 던진 결과값) 
* Process
	* 시간을 고려시 **Process(과정)** 이라고 부름
	* 시간을 고려하지 않을시 **event(사건) **을 사용.
	* Process란 시간에 따라, 일어나는 확률적 현상을 지칭.
* Random Process (or Stochastic Process)
	* **시간**별로 표시된(혹은 순서를 부여할 수 있는) 다수의 random variable의 집합(혹은 수열)
	

### 참고

#### Random variable
* A random variable $X$ is **a function that assigns a real number, $X(\zeta)$ to each outcome $\zeta$ in the sample space $S$ of a random experiment**. 
* Recall that a function is simply **a rule** for assigning a numerical value to each element of a set, as shown pictorially in

![random_variable](https://docs.google.com/drawings/d/e/2PACX-1vQm4hCkSHbrdXPxYhxYZgDmRc5cEOF_VBl1JNmiCsOh0FhPu5Z-t_uJEqiLRvtSbQItfrPaH6YNHUWz/pub?w=484&h=261)

Fig. 3.1. The specification of a measurement on the outcome of a random experiment defines a function on the sample space, and hence a random variable.The sample space $S$ is the *domain* of the random variable, and the set $S_X$ of all values taken on by $X$ is the
*range* of the random variable. Thus $S_X$ is a subset of the set of all real numbers. In this case, the following notation is used: **capital letters** denote **random variables**, e.g., $X$ or $Y$, and **lower case letters** denote **possible values** of the random variables, e.g., $x$ or $y$.

> **Random variable (확률 변수)**
> * random experiment (랜덤한 실험 또는 관찰)에서 일정한 확률을 가지고 발생하는 사건(outcome, event, $\zeta$)에 여러 가지 값($x$)이 부여되는 변수 $X(\zeta)$
> * sample space(표본공간)의 각 원소에 real number(실수)를 대응시킨 것(수학적 표현)
> * 보통 $X$로 표기
> * 이산확률변수 vs. 연속확률변수

> **Probability distribution (확률분포)**
> random variable $X$가 가질 수 있는 특정한 값 $x$와 이 $x$에 대응하는 확률을 나열한 리스트.

## References

* [Leon-Garcia, Probability, Statistics, and Random Processes For Electrical Engineering, Addison Wesley, 1993](https://frank.villaro-dixon.eu/public_upload/Probability,_Statistics,_and_Random_Processes_for_Eletrical_Engineerging,_3rd_Ed_-_Leon-Garcia.pdf)
* [이수형, 99 MMLAB 신입생교육 수학 보충교재](http://mmlab.snu.ac.kr/~shlee/prob/RV.html#multRV)
* [최영숙, 확률과정 2017년 1학기, KOCW](http://bkict-ocw.knu.ac.kr/caster/player/lectureview.xdo?lectid=735)
* [앙코르바티움's Blog](http://blog.naver.com/PostView.nhn?blogId=pro_000&logNo=221028506615&parentCategoryNo=&categoryNo=45&viewDate=&isShowPopularPosts=false&from=postList)
* [생새우초밥집](https://freshrimpsushi.tistory.com/857)
