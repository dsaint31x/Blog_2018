---
layout: post
title:  "[SS] System Response"
date:   2018-03-18 20:11:59
author: dsaint31
categories: Signals_and_Systems
use_math: true
tags: response signal
---
# System Response
@(Signal and System)[#signal, #response]

## Impulse Response
* LTI(Linear Time Invariant) System에서, Input signal과의 convolution 연산을 통해, **zero-state response**를 나타내는데 사용됨.
* 정의는 **Impulse Response는 LTI System에 Impulse signal을 Input으로 했을 때의 System Response**임.

## Response 종류

### Response가 무엇에 의해 결정되는가?

#### Zero-state Response
* 오직 **external signal(=input signal)**에 의한 응답.
* $t=0$일 때, System 내부의 축적 에너지가 0임.
* system mode 와 함께, input signal에 의한 항도 가지고 있음.
* 흔히, **Complete Solution**에서 **Zero-input Response**를 빼어 구함.
* Impulse signal과 Input signal의 Convolution으로도 구할 수 있음.

#### Zero-input Response
* 오직 **초기조건**에 의한 System Response.
* External input signal이 0임 (Homogeneous solution).
* System의 고유한 특성에 의해서만 결정된 Response로서 **System mode**로만 구성.
* Impulse Response로부터는 구해낼 수 없는 Response!!

### Response가 무엇을 반영하고 있는가?

#### Natural Response
* **System의 고유한 특성**만을 반영한 응답.
* 모두 System mode로만 구성.
* Zero-input Response에 Zero-state Response의 System mode항을 더한 것임.

#### Forced Response
* 오직 **external input signal의 특성**만을 반영한 응답.
* Zero-state Response에서 System mode항을 제거한 것.
* **external input signal과 같은 형태**임

### Response가 안정한가?

#### Transient Response
* System이 steady state(or equilibrium)에 들어가기 전의 Response.
* 일반적으로 시간 경과에 따라 감쇠하여 사라지는 성분으로 구성됨.

#### Steady-state Response
* 과도기를 거쳐 일정한 상태를 안정적으로 유지하고 있는 최종 응답에 해당.
* 평형상태(equilibrium)에 이르는 System에만 존재.