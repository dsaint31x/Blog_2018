---                                                                                                                     title: "[SS] z-Transform : Fundamental Functions"                                      categories: Signals_and_Systems                                                                                                    last_modified_at: 2019-01-09 18:51:00                                                                                   use_math: true                                                                                                         tags: z-transform impulse ramp                                                                                                        toc: true                                                                                                               ---    

# [SS] z-Transform : Fundamental Functions
@(Signal and System)[z-transform, ss]

## impulse function

다음과 같은 impulse function에 대한 z-Transform 구하기.
$$
x[n]=\delta[n]
$$

sol.
$$
\begin{align*}
X(z)&=\sum_{n=0}^{\infty}\delta[n]z^{-n} \\
\quad&=\delta[0]z^{-0}\\
\quad&=1
\end{align*}
$$

시간축에서 $n_0$ shift가 있을 경우.
$$
x[n]=\delta[n-n_0]
$$

sol.
$$
\begin{align*}
X(z)&=\sum_{n=0}^{\infty}\delta[n-n_0]z^{-n} \\
\quad&=\delta[n_0]z^{-n_0}\\
\quad&=z^{-n_0}
\end{align*}
$$

## unit step funtion

다음과 같은 unit step function의 경우,
$$
x[n]=u[n] 
$$

sol.
$$
\begin{align*}
X(z)&=\sum_{n=0}^{\infty}u[n]z^{-n} \\
\quad&=1+z^{-1}+z^{-2}+\cdots+z^{-n}, |z|>1\\
\quad&=\frac{1}{1-z^{-1}}, |z|>1\\
\quad&=\frac{z}{z-1}, |z|>1
\end{align*}
$$

필요한 사전 지식
* [무한등비급수](http://j1w2k3.tistory.com/685)

## ramp function

다음과 같은 ramp function의 경우,
$$
x[n]=nu[n]
$$  

sol.
$$
\begin{align*}
X(z)&=0+1z^{-1}+2z^{-2}+3z^{-3}\cdots+nz^{-n}+\cdots\\
z^{-1}X(z)&=0+0z^{-1}+1z^{-2}+2z^{-3}\cdots+(n-1)z^{-n}+\cdots\\
(1-z^{-1})X(z)&=z^{-1}+z^{-2}+\cdots+z^{-n}+\cdots\\
(1-z^{-1})X(z)&=\frac{z^{-1}}{1-z^{-1}}, |z|>1\\
\\
X(z)&=\frac{z^{-1}}{(1-z^{-1})^2}, |z|>1\\
&=\frac{z}{(z-1)^2}, |z|>1\\
\\
\therefore X(z)&=\frac{z}{(z-1)^2}, |z|>1
\end{align*}
$$

필요한 사전 지식
* [무한등비급수](http://j1w2k3.tistory.com/685)

## exponential function.

다음과 같은 expontial function의 경우,
$$
x[n]=a^n u[n] 
$$

so.
$$
\begin{align*}
X(z)&=\sum_{n=0}^{\infty}a^nz^{-n} \\
\quad&=\sum_{n=0}^{\infty}\left (\frac{a}{z} \right)^{n} \\
\quad&=1+\left (\frac{a}{z} \right)^{1}+\left (\frac{a}{z} \right)^{2}+\cdots+\left (\frac{a}{z} \right)^{n}+\cdots, \left | \frac{a}{z} \right |<1 \rightarrow |z| >|a|\\
\quad&=\frac{1}{1-\left( \frac{a}{z} \right )}, |z|>|a|\\
\quad&=\frac{\frac{z}{a}}{\frac{z}{a}-1}, |z|>|a| \\
\quad&=\frac{z}{z-a}, |z|>|a|
\end{align*}
$$

## sinusoial functions.

다음과 같은 $\cos$ function의 경우.

$$
x[n] =\cos (n\Omega) u[n] \\
$$

sol.
오일러 공식을 이용하여 $x[n]$을 치환.
$$
\begin{align*}
x[n] &=\cos (n\Omega) u[n] \\
\quad &= \left ( \frac{e^{jn\Omega}+e^{-jn\Omega}}{2} \right )u[n] \\
\end{align*}
$$

이를 이용하여 z-transform
$$
\begin{align*}
X(z)&=\sum_{n=0}^{\infty} \left [ \left ( \frac{e^{jn\Omega}+e^{-jn\Omega}}{2} \right ) z^{-n} \right ]\\
\quad&=\frac{1}{2} \left [ \sum_{n=0}^{\infty} \left \{ e^{j \Omega n} u[n] z^{-n}\right \}  + \sum_{n=0}^{\infty} \left \{ e^{-j\Omega n} u[n] z^{-n}\right \} \right ] \\
\quad&=\frac{1}{2}\left [ \frac{z}{z-e^{j\Omega}}+\frac{z}{z-e^{-j\Omega}} \right ], |z|>|e^ {\pm j\Omega}|=1\\
\quad&=\frac{z}{2}\left [ \frac{2z- \left ( e^{j\Omega}+e^{-j\Omega} \right ) }{z^2-\left ( e^{j\Omega}+e^{-j\Omega} \right )z+1} \right ], |z|>1\\
\quad&=\frac{z(z-\cos\Omega)}{z^2-2z\cos\Omega+1}, |z|>1
\end{align*}
$$

다음과 같은 $\sin$의 경우에는
$$
x[n]=\sin (n\Omega) u[n]
$$
같은 방법으로 풀면 되고, 답은 다음과 같음.
$$
\begin{align*}
X(z)=\frac{z\sin\Omega}{z^2-2z\cos\Omega+1}, |z|>1
\end{align*}
$$

필요한 사전 지식
* [무한등비급수](http://j1w2k3.tistory.com/685)
* [오일러공식](http://www.ktword.co.kr/word/abbr_view.php?m_temp1=3767)

참고

$$
\begin{align*}
x[n]&=a^n\cos (n\Omega) u[n] \\
X(z)&=\frac{z(z-a\cos\Omega)}{z^2-2az\cos\Omega+a^2}, |z|>|a| \\
\\
x[n]&=a^n\sin(n\Omega) u[n] \\
X(z)&=\frac{az\sin\Omega}{z^2-2az\cos\Omega+a^2}, |z|>|a|
\end{align*}
$$

