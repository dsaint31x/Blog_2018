---
layout: post
title: "Fourier Series of Halfwave Rectifier using  Python"
date:   2018-03-29 12:47:59
author: dsaint31
categories: Signals_and_Systems
use_math: true
tags: code Fourier
---

우선 sympy패키지를 이용하여 극한값을 구하는 방법을 알아야 한다.
이에 대한 코딩은 다음과 같다.
코딩 자체는 간단하므로 주석을 참고하면 사용법을 알 수 있다.
```python
from sympy import sin,Limit,Symbol,S

x = Symbol('x') #극한을 구할 때 사용되는 변수 지정.

# 극한을 구하고자 하는 식 : sin(x)/x과 
# 변수 x, 
# 그리고 해당 변수가 어디로 갈지 : 0 를 
# Limit로 나타내고 
# doit을 호출하여 극한값을 구함.
Limit(sin(x)/x, x, 0).doit() 
```
이 코딩에서 사용한 형태를 이후 계속 사용할 것이다.
아래의 수식은 $A \sin (\Omega_0t)$라는 입력 신호에 대해 Half wave rectifier를 통과시킨 결과에 대한 Fourier series의 계수임.

$$
\frac {A}{2\pi(1-x^2)} (e^{-j\pi x}+1)
$$

이때 $k= \pm 1$ 인 경우는 다음과 같이 극한으로 계산해야 함. (분모가 0이니...)

$$
\lim_{k \rightarrow 1} \frac {A}{2\pi(1-x^2)} (e^{-j\pi x}+1)
$$

이를 sympy를 사용한 코딩은 다음과 같음.
단, 아래 코드에서 $A=1$로 처리했음.

```python
import sympy
import cmath

k = sympy.Symbol('k') #극한을 구할 때 사용되는 변수 지정
polar = cmath.polar(sympy.Limit((sympy.exp(-1*sympy.I*sympy.pi*k)+1)/(sympy.pi*2*(1-k**2)),k,1).doit())
print( 'magnitude:'+str(polar[0])+'/phase:'+ str(polar[1]))
```

이를 확장해서 magnitude spectrum과 phase spectrum을 나타내는 소스는 다음과 같다.


```python
import sympy
import cmath
import numpy as np

def half_rec_FS_k(ki):
    k = sympy.Symbol('k') #극한을 구할 때 사용되는 변수 지정
    ret = complex(sympy.Limit((sympy.exp(-1*sympy.I*sympy.pi*k)+1)/(sympy.pi*2*(1-k**2)),k,ki).doit())
    #print('['+str(ki)+':'+str(ret)+']')
    return ret


#ks = list(np.arange(-4,5,1))
a=5
ks = [ck-a for ck in range(a*2+1)]
polars = [ cmath.polar(half_rec_FS_k(ck)) for ck in ks]
magnitude = [ i[0] for i in polars]
phase = [ cmath.phase(half_rec_FS_k(ck)) for ck in ks]
#phase = [ i[1] for i in polars]

import matplotlib.pyplot as plt

plt.bar(range(len(magnitude)),magnitude)
plt.xticks(np.arange(len(ks)),ks)
plt.show()

plt.bar(range(len(phase)),phase)
plt.xticks(np.arange(len(ks)),ks)
plt.show()
```

결과 spectrum은 다음과 같다.
위의 그래프가 magnitude이고, 아래가 phase이다.

![spectrum](https://docs.google.com/drawings/d/e/2PACX-1vS_iBtg9nbnCNdc17R_72Ab1oL8_ITci1TgNMvmw2Pjpt-w7R3goQmIkzfcZ6s8nqa7FUaXSLiMQ1kI/pub?w=379&h=513)
