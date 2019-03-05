---
title: "[Math] Radian (Circular measure, 호도법)"
last_modified_at: 2018-04-23 18:33:59
author: dsaint31
categories: 
 - Mathematics
use_math: true
tags: 
 - radian
 - degree
---

# [Math] Degrees vs. Radians
@(Mathematics)[math, mathematics, trigonometric, Mathematics]

### 60분법 (degree)

원을 이루는 각을 360으로 나눈 것을 1도(degree)라 함.

### Radian (호도법, Circular measure)

원(흔히 단위원)에서 원주와 반지름의 길이가 같아질 때의 θ를 1 radian이라고 함.

$$  
\theta = \frac{l_{arc}}{l_{radian}} 
$$

![radian](https://docs.google.com/drawings/d/e/2PACX-1vQcUiUPcrTIEeWFE59QPqZO240PVaYSRZGBsB9B_RNMhmP5NrT5H6JWxTIaXNb0D0Y-F8K8FhCUREka/pub?w=142&h=1400)

> 호도법 : 호의 길이를 이용하여 각도를 측정한다는 한자용어.

### Degrees vs. Radian (정의 혹은 측정의 측면)

* Observer(관찰자)가 얼마나 고개를 들어 올리는가? : degree
* Mover(이동자)가 얼마나 이동을 해야 하는 각도인가? : radian

### Radian의 장점

* trigonometric function의 미적분시 곱해지는 상수항이 없어서 편리.
* 원에서 반지름과 둘레가 일정한 비율을 가지다는 특성을 활용.

### Trigonometric function에서 Radian의 장점 (예: sin 함수 미분)

sin 함수의 미분은 다음과 같음.

$$ 
\begin{align*}
\frac{d}{dx} \sin x &= \lim_{\Delta x \rightarrow 0} \frac {\sin (x+\Delta x) - \sin x}{\Delta x}\\
\quad &= \lim_{\Delta x \rightarrow 0} \frac {\sin x \cos \Delta x +\cos x \sin \Delta x - \sin x}{\Delta x} \\
\quad &= \lim_{\Delta x \rightarrow 0} \frac {\sin x  +\cos x \sin \Delta x - \sin x}{\Delta x} \\
\quad &= \lim_{\Delta x \rightarrow 0} \frac {\cos x \sin \Delta x}{\Delta x} \\
\quad &= \cos x \lim_{\Delta x \rightarrow 0} \frac { \sin \Delta x}{\Delta x} \\
\end{align*}
$$

여기서 $\lim_{\Delta x \rightarrow 0} \frac { \sin \Delta x}{\Delta x}$ 의 값 유도 (조임정리) 를 해보면 x가 degree인 경우, 상수항을 곱해줘야 하고, radian인 경우엔 1로 되어 상수항을 무시할 수 있음을 보일 수 있음.

#### Squeeze Theorem (샌드위치 정리, 압착정리, 조임정리)

![radian vs degree](https://docs.google.com/drawings/d/e/2PACX-1vRucnWqNHi9yEc2s2G-HZ6KHH9h8B7sZ7M2sLox5uAwyG4MnxZFyegnR2V35zHqMGnrzfBZt0Mp7a1w/pub?w=500&h=357)

위의 그림[^1] 에서 넓이를 살펴보면, 푸른색 삼각형이 가장 작고, 녹색의 부채꼴이 그다음으로 작고, 노란색의 삼각형이 가장 넓다.

##### 60분법 (degree) 이용시

$$
\matrix{
\frac{1}{2} \times 1 \times \sin \theta^\circ &\le& \pi \times 1^2 \times \frac{\theta^\circ}{360^\circ} &\le& \frac{1}{2} \times 1 \times \tan \theta^\circ \\
\frac{\sin \theta^\circ}{2} &\le& \pi \times \frac{\theta^\circ}{360^\circ} &\le& \frac{\tan \theta^\circ}{2} \\
\frac{360^\circ}{\pi} \frac{\sin \theta^\circ}{2} &\le& \theta^\circ &\le& \frac{360^\circ}{\pi} \frac{\tan \theta^\circ}{2} \\ 
\frac{180^\circ}{\pi} \sin \theta^\circ &\le& \theta^\circ &\le& \frac{180^\circ}{\pi} \tan \theta^\circ \\
\frac{180^\circ}{\pi}  &\le& \frac{\theta^\circ}{\sin \theta^\circ} &\le& \frac{180^\circ}{\pi} \frac{1}{\cos \theta^\circ} \\
\frac{\pi}{180^\circ}  &\ge& \frac{\sin \theta^\circ}{\theta^\circ} &\ge& \frac{\pi \cos \theta^\circ}{180^\circ} \\
}
\\
\therefore \lim_{\theta^\circ\rightarrow0^\circ}\frac{\sin \theta^\circ}
{\theta^\circ}=\lim_{\theta^\circ\rightarrow0^\circ}\frac{\pi \cos \theta^\circ}{180^\circ}=\frac{\pi}{180^\circ}
$$ 

60분법을 사용할 경우, $\sin x$의 미분에 위 결과를 대입하면 다음과 같음.

$$\frac{d}{dx} \sin x = \frac{\pi}{180^\circ} \cos x$$

즉, 상수를 곱해주는 처리가 필요함.

##### Radian 이용시 

$$
\matrix{
\frac{1}{2} \times 1 \times \sin \theta &\le& \pi \times 1^2 \times \frac{\theta}{2\pi} &\le& \frac{1}{2} \times 1 \times \tan \theta \\
\frac{\sin \theta}{2} &\le& \pi \times \frac{\theta}{2\pi} &\le& \frac{\tan \theta}{2} \\
\frac{\sin \theta}{2} &\le& \frac{\theta}{2} &\le& \frac{\tan \theta}{2} \\ 
\sin \theta &\le& \theta &\le& \tan \theta \\ 
1  &\le& \frac{\theta}{\sin \theta} &\le&  \frac{1}{\cos \theta} \\
1  &\ge& \frac{\sin \theta}{\theta} &\ge& \cos \theta 
}
\\
\therefore 
\lim_{\theta\rightarrow0}\frac{\sin \theta}{\theta}=\lim_{\theta\rightarrow0} \cos \theta =1
$$

radian을 사용할 경우, $\sin x$의 미분에 위 결과를 대입하면 다음과 같음.

$$\frac{d}{dx} \sin x = \cos x$$

즉, 60분법에서의 상수 $\frac{\pi}{180^\circ}$를 곱해주는 처리가 필요없음.

--------

### References

* [공돌이의 수학정리노트](https://wikidocs.net/4094) 

[^1]: 공돌이의 수학정리노트 

