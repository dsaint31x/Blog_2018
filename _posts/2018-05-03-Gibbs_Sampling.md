---
layout: post
title:  Gibbs Sampling (MCMC)"
date:   2018-05-03 08:47:59
author: dsaint31
categories: Machine_Learning
use_math: true
tags: Gibbs, Boltzmann
---

# Markov Chain Monte-Carlo  (MCMC)

* **원하는 stationary distribution을 가지도록, Markov Chain를 design**하여 **목표로 하는 distribution ($P(\text{x}\vert\theta)$)을 만들어내고 해당 분포에 대한 기대값($\left< \text{x} \right> _{P(\text{x}\vert\theta)}$)을 estimation할 수 있는 알고리즘 family**
* Gibbs Sampling은 MCMC 알고리즘 family 중 하나
  * 여러 random variable들의 joint probability를 계산하기 위한 알고리즘
  * 한 variable, $x_i$ 을 제외한 나머지 random variable들, $ x_{-i}$ 을 fix하고 나머지 고정된 random variable들이 주어졌다고 가정
  * conditional probability, $P(x_i \vert x_{-i},\theta)$를 구해 현재 한 random variable, $x_i$ 을 update하는 것이 기본 방법
  * 이 기본방법을 모든 variable들에 대해 random variable distribution이 converge할 때까지 반복하는 것임.
  * iteration을 돌리면서 얻어내는 sequence들을 이용할 경우, random variable들의 joint probability로부터 sampling하는 것과 같은 확률의 sampling이 가능해짐.
* 이론적으로 MCMC는 polynomial complexity를 보장할 수는 있지만, 실제 learning time이 너무 길어져서 practical하게 쓰기 어려움. (보통 MCMC가 converge할 때 까지 걸리는 시간이 결코 적지 않음.)  

## Ex : Boltamann Machine에서 Gibbs sampling적용하기.

Original Boltzman Machine에서 node의 수가 $N$개이고, 현 상태를 $\text{x}= \left[ x_1,x_2, \cdots x_N\right]^T$로 나타낼 때, 이 상태는 다음의 확률 분포(Boltzmann Distribution or Gibbs Distribution)에 의해 결정됨.

$$
P(\text{x}\vert\theta) = \frac{\exp \left[- \left\{  -\sum^N _{i=1} b_ix_i - \sum_{(i,j)\in \epsilon } w_{ij}x_i x_j \right \}\right]}{Z(\theta)}
$$

where,
* $\epsilon$ are the set of edges connecting nuerons.
* $\theta$ is parameter of model and consists of bias ({ $ b_i  \vert i=1,2, \cdots, N $ }) and weights ( { $ w_{ij} \vert (i,j) \in \epsilon$ }).
* $Z(\theta)$ is normalization constant (or called partition function).

$$Z(\theta) = \sum_\text{x} \exp \left[- \left\{  -\sum^N _{i=1} b_ix_i - \sum_{(i,j)\in \epsilon } w_{ij}x_i x_j \right \} \right]$$

  * 여기서 $\sum_\text{x}$ 는 $\text{x}= \left[ x_1,x_2, \cdots x_N\right]$의 모든 $\text{x}$의 요소들을 pair로 나타낼 수 있는 모든 경우에 대한 합을 의미함 ($\text{x}$의 각 요소들은 binary값 (0,1)을 취하므로 총 $2^N$의 경우에 대한 합임 ).

위의 Boltzmann Distribution에 대해 Gibbs sampling을 적용하면,
Gibbs sampling에 의해 한 variable($x_i$)의 값을 구하기 위해서 우선 $x_i$를 제외한 나머지 random variable들($\text{x}_{-i}$)을 fix하고 Boltamann Distribution에 conditional probability를 적용하면 다음과 같이 전개 가능.


$$
\begin {align*}
P(x_i\vert\text{x}_{-i},\theta) &= \frac {P(\text{x}\vert\theta)}{\sum_{x_i=0,1} P(\text{x}\vert\theta)}\\
&= \frac { \exp \left[ \left \{  b_i x_i+ \sum_{N_i}  w_{ij}x_i x_j \right\}\right]}  {1+\exp \left[ \left \{  b_i + \sum_{N_i}  w_{ij} x_j \right\}\right]} \\
&= \frac { \exp \left[ x_i \left \{  b_i + \sum_{N_i}  w_{ij} x_j \right\}\right]}  {1+\exp \left[ \left \{  b_i + \sum_{N_i}  w_{ij} x_j \right\}\right]} \\
&= P( \left \{ x_i\vert j \in N_i \right \},\theta)
\end {align*}
$$

where
* $N_i$는 neuron $i$와 연결된 neuron의 집합.

### 모델분포로부터 node계산

1. 이렇게 구해진 확률값을 기준으로 구간 [0,1]의 random variable의 값을 얻고, 해당 확률값보다 작은면 $x_i=1$ 아니면 $x_i=0$으로 샘플링을 하면 됨.
2. 이후, 이 과정을 모든 N개의 neuron에 대해 수행하면 한 단계가 끝나는 것이고, $\text{x}$를 얻을 수 있음.
3. 위 과정을 t차례 반복을 할 경우, t번 째의 $x_i^t$는 다음과 확률을 통해 샘플링됨.

$$
P(x_i^t\vert x_1^t,\cdots,x_{i-1}^t,x_{i+1}^{t-1},\cdots,x_{N}^{t-1})
$$

Gibbs sampling에서 t가 충분히 큰 수일 때, t차례의 Boltzmann machine의 상태 $\text{x}^t$는 Joint probability distribution $P(\text{x}\vert\theta)$를 따르게 됨.

