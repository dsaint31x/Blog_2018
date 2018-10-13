---
layout: post
title:  "Boltzmann's Factor"
date:   2018-04-13 08:47:59
author: dsaint31
categories: Machine_Learning
use_math: true
tags: Boltzmann
---

# Boltzmann's Factor (or Boltzmann's Distribution)
@(MachineLearning)[RBM, Bolzamann]

온도 $T$가 주어진 상황에서,입자가 에너지 $E$를 가질 확률은 Boltzmann's Factor에 비례(통계물리학).

이를 식으로 나타내면 다음과 같음.

$$
P(E,T) \propto Exp \left( \frac {-E}{K_{Boltzmann}T}\right)
$$

* 위 식에서, $K_{Boltzmann}$은 Boltzmann Constant이며 $K_{Boltzmann}=\frac{R}{N_A}$로서 ideal gas constant $R$과 아보가드로수 $N_A$의 비임.
* $R=8.314472 \left (\frac{J}{Kmol} \right)$

ideal gas에서 기체분자의 에너지 $ E= KE = \frac{1}{2}mv^2$으로 나타나므로, 온도 $T$가 주어진 상황에서 이상기체분자의 속도가 $v$인 확률을 나타내는데에도 사용가능함.

$$ 
\begin{align*}
P(v,T) & \propto Exp \left( \frac {-E}{K_{Boltzmann}T}\right) \\
 & \propto Exp \left( \frac {-KE}{K_{Boltzmann}T}\right) \\
 & \propto Exp \left( \frac {-\frac{1}{2}mv^2}{K_{Boltzmann}T}\right)
\end{align*}
$$

### 참고

* 이같은 확률분포를 따르는 경우에, Boltzmann's distribution을 확률분포로 가진다고도 애기함.
* Machine Learning에서 Boltzmann Machine이나 Restricted Boltzmann Machine에서도 사용됨.
* 이때 사용되는 Boltzmann's Distribution은 다음과 같음.

$$
\begin {align*}
p(\text{x}|\theta) &= \frac{e^{-\Phi(\text{x},\theta)}}
{Z(\theta)}\\
&=\frac{1}{Z(\theta)}Exp \left( -\Phi(\text{x},\theta) \right) \\
\text{where,}& \\
\Phi &\text{ is an Energy Function} \\
Z &\text{ is an Partial Function for Nomlization}
\end {align*}
$$