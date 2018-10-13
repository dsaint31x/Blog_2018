---
layout: post
title:  "[PS] Central Limit Theorem"
date:   2018-05-14 22:33:59
author: dsaint31
categories: Probability_and_Statistics
use_math: true
tags: Central_Limit_Theorem 
---

# Central Limit Theorem
@(Statistics)[#중심극한정리,#central_limit_theorem]

mean의 sampling distribution의 다음과 같은 속성을 기술하는 Theorem.
* mean이 $\mu$, variance $\sigma^2$이 population에서 $N$개를 sampling할 경우, 해당 sampling의 average에 의한 sampling distribution의 mean과 variance는 다음과 같음.
  * $\mu_{\text{sample}}=\mu$
  * $\sigma^2_{\text{sample}}=\frac{\sigma^2}{N}$
* $N$, sample size가 증가할 수록, 해당 sampling의 mean의 sampling distribution은 **normal distribution**이 됨.
  * population의 distribution이  어떤 형태에 상관없이 sample들의 mean에 대한 sampling distribution은 $N$이 커질수록 normal distribution을 가지게 됨.
     * population이 normal distribution이면, sampling distribution of the mean 역시 normal distribution.
     * population이 normal distribution이 아니더라도, $N \ge 30$정도의 충분히 큰 sample size인 경우엔  sampling distribution of the mean은 normal distribution을 가지게 됨.
  * 이때 $N$개의 sample을 얻는 과정, 즉 sampling에서 각각의 샘플은 서로 독립(independent)이 되도록 얻어짐.
  * 또한 모든 $N$개의 sample은 같은 population에서 얻어져야 함.

## Example

1이 될 확률이 $P$인 $N$번의 *Bernoulli trial* 을 독립적으로 수행하고 결과값을 다 더한 경우, 해당 결과값은 **Binomial distribution ($N,P$)**를 확률분포로 가지게 됨.

*Bernoulli distribution* 에서 estimated value(=mean)는 $P$이고, standard deviation은 $\sqrt{P(1-P)}$임.
하지만, 이 분포를 population으로 하면서 $N$개의 sample로 뽑아 이들을 더한 값을 random variable로 갖는 **Binomial**에선 $N$이 충분히 크다면, mean이 $\mu_{N}=NP$이고 standard deviation은 $\sigma_{N}=\sqrt{NP(1-P)}$인 normal distribution이 됨.
* $N \ge 10$이고 $P \le 0.1$ 인 경우, 즉 **$N$이 비교적 크고 1이 될 확률이  아주 작은 경우**에 **Poisson distribution**이 가까워짐.
* $N$이 크고 $P$가 아주 작지 않은 경우, **Normal distribution**에 가까워짐.

```python
import numpy as np
from matplotlib import pyplot as plt

num_points = 10000
sample_size = 10

def get_population (mu, sigma, pop_size):
    return np.random.randn(pop_size)*sigma+mu

def get_sampling_dist(mu, sigma,sample_size, num_sampling,ibins=None, pop_size=100000):
    population  = get_population(mu,sigma,pop_size)
    
    sample_dist = np.zeros(num_sampling)
    for i in range(num_sampling):
        sample_idx = np.random.randint(pop_size, size=sample_size)
        samples_data = population[sample_idx]
        sample_dist[i] = np.mean(samples_data)
        
    #hist, bin_edges = np.histogram
    sample_sigma = sigma/np.sqrt(sample_size)
    if ibins is None:
        count, bins, ignored = plt.hist(sample_dist, bins='auto', density=True)
    else:
        count, bins, ignored = plt.hist(sample_dist, bins=ibins, density=True)
    plt.plot(bins, 1/(sample_sigma * np.sqrt(2 * np.pi)) *
             np.exp( - (bins - mu)**2 / (2 * sample_sigma**2) ),
             linewidth=2)
    
    return bins
ibins_10 = get_sampling_dist(50,10,10,10000)
ibins_30 = get_sampling_dist(50,10,30,10000,ibins_10)
ibins_100 = get_sampling_dist(50,10,100,10000,ibins_10)
```
![Alt text](./1526300537050.png)

