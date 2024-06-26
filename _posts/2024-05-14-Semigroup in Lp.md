Let $\mathcal{L}$ be an essentially self-adjoint operator with respect to the $\sigma$-finite measure $\mu$ of the measurable space $(E, \mathcal{F})$.  By spectral theory, $\mathcal{L}$ is uniquely associated with a self-adjoint strongly continuous contraction semigroup $(P_t)_{t \in \mathbb{R}_+}$ on $L^2(E,\mu)$.

In this note, our goal is to explain the extension this semigroup beyond $L^2$ space, focusing on constructing corresponding semigroups $(P_t)$ for $L^p$ spaces using the interpolation theorem. Additionally, we will examine the exponential convergence rate of $(P_t)$ across all $L^p$ spaces (for $p \in [1, \infty]$ ) under ultracontractivity and the Poincaré inequality. These results are stated as follows:

**Proposition** Let $(P_t)$ be a self-adjoint contraction semigroup on $L^2( \mu)$ that satisfies the submarkov property i.e. $0 \le P_tf \le 1$ if $0 \le f \le 1$ and $f \in L^2,t>0$. Then, there is a unique family of contraction semigroup $P_t^{(p)}: L^p \rightarrow L^p$ such that $P_t^{(p)} \equiv P_t$ on $L^1 \cap L^{\infty}$. i.e.

+ $P_t^{(p)} f = P_tf$ for all $f \in L^1 \cap L^{\infty}.$
+ $\| P_tf \|_p \le \|f\|_p$  for all $p \in [1, \infty[$, $f \in L^p$.
+ $\| P_tf \|_\infty \le \|f\|_\infty$  for all $f \in L^\infty\cap L^1$.

*Remark*:  The main technical issue for $p= \infty$ is that $L^1\cap L^\infty$ is ,in general, not dense in $L^\infty$. Hence, the image of $L_1\cap L^\infty$  into $L^\infty$ by $P_t$ does not uniquely define the mapping $P_t$ on $L^\infty$.  Nonetheless, when $\mu$ is finite, $L_1\cap L^\infty= L^\infty$.

**Proposition**  Consider a strongly continuous contraction operator $(P_t)$ on $L^2(\mu)$ that satisfies the submarkov property, where $\mu$ is assumed to be a probability measure. If $(P_t)$ satisfies the Poincaré's inequality for some constant $\lambda>0$ ,i.e. $$\| P_tf \|_2 \le e^{-\lambda t} \| f\|_2  \qquad \text{ for all }t>0 \text{, } f \in L^2_0(\mu)$$with $L^2_0(\mu):=\{f \in L^2 \text{ such that } \int f \mathrm{d} \mu =0 \}$,
and the ultracontractivity at some instant $t>0$, i.e. there exists a constant $c>0$ and $t>0$ such that:
$$\| P_t f\|_{\infty} \le c \|f\|_1 \qquad \text{ for all }f.$$
Then there is a constant $c_0 \ge 1$ independent of $p \in [1, \infty]$ such that for all $f$ such that $\int f \mathrm{d} \mu =0$

$$\|P_t f \|_p \le c_0 e^{-\lambda t} \|f\|_p.$$
In short, $$\text{Poincaré's ineq.} +\text{Ultraconctivity}+\text{Finite measure} \Rightarrow \text{Exponential decay}$$

# Some premilinaries

## Contraction semigroup

Let $(B, \| \cdot\|)$ be Banach space (which for us will be the spaces $L^p(\mu), 1 \le p \le +\infty$ )

**Definition** A family $(T_t)_{t \ge 0}$ of bounded operators on $B$ is called a contraction semigroup if

+ $T_0 = Id$ and $T_sT_t=T_{s+t}$ for all $s,t \ge 0$.
+ $\| T_t x\| \le \| x \|$ for all $x \in B$ and $t \ge 0$. 
  T is then said to be strongly continuous if $t \mapsto Tx$ is continuous for all $x$.

Given a strongly continuous contraction semigroup $(T_t)$  there is always an unbounded operator $\mathcal{A}$ that "generates" $(T_t)$ 

**Definition** There always exits a closed, densely defined operator $\mathcal{A}: \mathcal{D}(\mathcal{A}) \rightarrow B$ such that $\mathcal{D}(\mathcal{A}) = \{ x \in B: \lim_{t \rightarrow 0^+} \frac{T_tx-x}{t} \text{ exists} \}$  with $\mathcal{A} x = \lim_{t \rightarrow 0^+} \frac{T_tx -x }{t}$. This operator is called the genrator of $(T_t)$.

The following theorem is due to Hille-Yoshida, which explains when a densely  defined closed operator $\mathcal{A}$ generates a strongly continuous contraction semigroup.


**Theorem** A densely defined closed operator generates a strongly continuous contraction semigroup if and only if:

+ $\mathrm{Spec}(\mathcal{A}) \subset (-\infty,0]$.
+ $\| (\lambda \mathbf{Id} - \mathcal{A})^{-1} \| \le \frac{1}{\lambda}$ for all $\lambda  >0$.
  where the spectrum $\mathrm{Spec}(\mathcal{A})$ of $\mathcal{A}$ is the set of all $\lambda$ such that $\lambda \mathrm{Id}-\mathcal{A}$ is not bijective.

*Remark:*  When $\lambda \mathrm{Id}- \mathcal{A}$ is bijective, by closed graph theoerem, its inverse $(\lambda \mathbf{Id} -\mathcal{A})^{-1}$ is a continuous closed operator. Therefore, $\| (\lambda \mathbf{Id} - \mathcal{A} )^{-1}\|  <\infty$.

## Semigroup on Hilbert space

Let $(H, \langle \cdot ,  \cdot\rangle)$  be a Hilbert space. 

**Definition** The self-adjoint operator $\mathcal{A}^*$ of a densely defined operator $\mathcal{A}: \mathcal{D}(\mathcal{A}) \rightarrow H$   is the unique operator defined on $\mathcal{D}(\mathcal{A}^*):= \{g \in H \text{ such that } f \mapsto \langle g, \mathcal{A}f \rangle \text{ is continuous} \}$  such that:
$$\langle \mathcal{A} f,g \rangle = \langle f , \mathcal{A}^* g \rangle \qquad \forall f \in \mathcal{D}(\mathcal{A}), g \in \mathcal{D}(\mathcal{A}^*).$$
An operator is said to be self-adjoint if its adjoint is itsself.

*Remark:* By definition, if $\mathcal{A}$ is symmetric i.e. $\langle \mathcal{A}f, g \rangle = \langle f, \mathcal{A}g \rangle$ for all $f,g \in \mathcal{D}(A)$,  $\mathcal{A}^*$ is then an extension of $\mathcal{A}$.

*Remark:* Given a densely defined symmetric operator $\mathcal{A}$, there is always a closed self-adjoint operator $\mathcal{A}^F$ that extends $\mathcal{A}$ (by Friedrichs extension). However, $\mathcal{A}$ might have many closed self-adjoint extensions.

In the above discussion, we see that Hille-Yoshida's theorem provides a method to characterize generators of contraction semigroup. When restricted to Hilbert spaces, we have another characterization using spectral theory.

**Proposition** A densely defined closed operator $\mathcal{A}$ on $H$ generates a self-adjoint strongly continuous contraction semigroup if and only if it is essentially self-adjoint and non-postive i.e. $\langle \mathcal{A}f, f \rangle \le 0$.

*Remark*: Nonetheless, these characterizations are all unfortunately difficult to check directly.

**Definition** A semigroup $(P_t)$ on $L^2(E,\mu)$ is said to satisfy Poincare's inequality for $\lambda>0$ if for all $t>0$ and $f \in L^2_0:=\{f \in L^2\cap L^1: \int_E f \mathrm{d} \mu=0 \}$ ,
$$\| P_tf\|_2 \le e^{-\lambda t} \| f\|_2.$$

# Proofs of main results

## Extension of an self-adjoint operator in $L^2$

In this part, we prove the firstly mentioned proposition:

**Proposition** Let $T$ be a self-adjoint contraction operator on $L^2( \mu)$ that satisfies the submarkov property i.e. $0 \le Tf \le 1$ if $0 \le f \le 1$ and $f \in L^2$. Then, there is a unique family of contraction operators $T^{(p)}: L^p \rightarrow L^p$ such that $T^{(p)} \equiv T$ on $L^1 \cap L^{\infty}$. i.e.

+ $T^{(p)} f = Tf$ for all $f \in L^1 \cap L^{\infty}.$
+ $\| Tf \|_p \le \|f\|_p$  for all $p \in [1, \infty[$, $f \in L^p$. 
+ $\| Tf \|_\infty \le \|f\|_\infty$  for all  $f \in L^1\cap L^{\infty}$. 

We begin with giving the Riesz-Thorin interpolation principle,

**Theorem** Let $1\le p_0,p_1,q_0,q_1 \le \infty$ and a parameter $\theta \in (0,1)$ Define $p,q \in [1, \infty]$ by $\frac{1}{p} = \frac{1-\theta}{p_0}+\frac{\theta}{p_1}$ and $\frac{1}{q} = \frac{1-\theta}{q_0}+\frac{\theta}{q_1}$. If $T$ is a linear map such that $T: L^{p_0} \rightarrow L^{q_0}, T: L^{p_1} \rightarrow L^{q_1}$ are bounded with $\| T\|_{ p_0 \rightarrow q_0}= M_0; \| T\|_{ p_1 \rightarrow q_1}= M_1$. Then, $T$ extends uniquely as bounded map $T: L^p \rightarrow L^q$ and $\| T\|_{ p \rightarrow q } \le M_0^\theta M_1^{1-\theta}$.


*Proof of Proposition*

We know that for all $p \in [1, \infty)$, $L^1 \cap L^{\infty}$ is dense $L^p$.
Moreover, the submarkov property also implies that $\| T\|_{ \infty \rightarrow \infty }  \le 1$ on $L^1\cap L^{\infty}$ . Besides, $T$ is a contraction map on $L^2$. Therefore, $\|T \|_{2\rightarrow 2} \le 1$. Thus, by Riesz-Thorin interpolation principle, for each $p \in [2,\infty)$,  $T$ extends uniquely to an operator on $L^p$ and $\| T\|_{p \rightarrow p} \le 1$.

For any $p \in (1,2)$, let $q$ be defined by $\frac{1}{p}+\frac{1}{q}=1$. For any $f \in L^p, g \in L^q$, by the self-adjointness of $T$ and Hölder's inequality, one has:
$$|\langle Tf ,g \rangle| =|\langle f ,Tg \rangle| \le   \| f\|_p \| Tg \|_q \le \| f\|_p \| g\|_q$$
Hence, by duality, $\| T\|_{p \rightarrow p} \le 1$. Thus, we imply the desired conclusion.

**Corollary**  $\langle P_t^{(p)} f,g \rangle =\langle f,P_t^{(q)}g \rangle$ for all $f \in L^p, g \in L^q$ and $\frac{1}{p}+\frac{1}{q}=1$ with $p,q \in (1,\infty)$

## Ultracontractivity and exponential decay

In this part, we discuss the convergence of $P_tf$. 

*Proof of the second proposition*

For all $s>0$ and $f \in L^\infty_0$, due to the ultracontractivity and Poincaré's inequality, we have:

$$\| P_{s+t_0}f \|_\infty \le c \| P_s f\|_1\le c\| P_s f\|_2 \le c e^{-\lambda s} \| f\|_2 \le  c e^{-\lambda s} \| f\|_\infty.$$
Thus, there is a constant $c_0 \ge 1$ such that for all $f \in L^\infty$ and $t>0$, $$\| P_t f\|_\infty \le c_0e^{-\lambda t} \|f \|_\infty.$$
Besides, by the self-adjointness $P_t$, for all $f,g \in L^\infty$,
$$|\langle P_tf,g \rangle| =|\langle f,P_tg \rangle|\le \| f\|_1 \|P_tg\|_\infty \le \|f\|_1 c_0e^{-\lambda t}\|g\|_\infty $$
Hence, for all $f\in L^\infty$,
$$\| P_tf \|_1 \le c_0e^{-\lambda t} \|f\|_1.$$
Thus, by Riesz-Thorin interpolation, for all $t>0$, $f \in L^\infty$ and $p \in [1,\infty]$,
$$\| P_t f\|_p \le c_0e^{-\lambda t} \| f\|_p.$$
The conclusion then comes from the density of $L^\infty$ in $L^p$ for all $p \in [1,\infty]$.

## Digression: $\| T\|_{1 \rightarrow 2} = \| T\|_{2\rightarrow \infty}$

In this section, we will prove the following result:

**Proposition**
Let $\mu$ be a finite measure and  $T:  L^\infty  \rightarrow L^\infty$ be a bounded operator such that $\|T\|_{1 \rightarrow 1 } <\infty$. Then, if  $T: L^2 \rightarrow L^2$ is symmetric, $\| T\|_{1 \rightarrow 2} = \| T\|_{2\rightarrow \infty}$.

*Proof*
Indeeds, for any $f,g \in L^\infty$, we have:
$$|\langle Tf,g  \rangle| = |\langle f,Tg  \rangle| \le \| f\|_2  \| Tg\|_2 \le \|T\|_{1\rightarrow 2}\times \|f\|_2 \|g\|_1.$$
Thus, $\| Tf \|_\infty \le \|T\|_{1 \rightarrow 2} \times \|f\|_2$ for all $f \in L^\infty$. Hence, $\|T\|_{2 \rightarrow \infty} \le \| T\|_{1\rightarrow 2}$.
On the other hand, 
$$|\langle Tf,g  \rangle| = |\langle f,Tg  \rangle| \le \| f\|_1  \| Tg\|_\infty \le \|T\|_{2 \rightarrow \infty}\times \|f\|_1 \|g\|_2.$$
From which, we have $\| Tf\|_2 \le \| T\|_{2\rightarrow \infty} \| f\|_1$. Or, $\|T\|_{1 \rightarrow 2} \le \|T\|_{2\rightarrow \infty}$.
Hence, the conclusion.

*Remark* Note that for all $p,q$ \in $[1,\infty]$ and a sequence of functions $(f_n) \subset L^p\cap L^q$. If $f_n \rightarrow g$  in $L^p$ and $f_n \rightarrow h$ in $L^q$, then $h=g$ almost everywhere and $g \in L^p \cap L^q$.


# Worked examples

**Example 1** (Brownian motion $(B_t)$)
The semigroup $(P_t)$ of a standard Brownian motion in $\mathbb{R}$ has the following forms:
$$ P_tf(x) = \int_\mathbb{R} \frac{1}{\sqrt{2t\pi}} f(y+x)e^{-y^2/(2t)}\mathrm{d}y \quad \forall f \in L^\infty,$$
whose its unique invariant measure (up to a constant factor) is the Lebesque measure $\mathrm{d}x$. 
It is clear that for all $t>0$, $$\| P_t f\|_{\infty} \le \frac{1}{\sqrt{2t\pi}} \int_\mathbb{R} | f(y)| \mathrm{d} y =\frac{1}{\sqrt{2t\pi}}  \| f\|_1.$$
Hence, the semigroup of a Brownian motion is ultracontractive.
Besides, it is clear that $\| P_t f\|_\infty \le \| f\|_\infty$ and $$\| P_tf\|_1 \le \int_{x \in \mathbb{R}} \int_{y \in\mathbb{R}} \frac{1}{\sqrt{2t\pi}}|f(y+x)|e^{-y^2/(2t)}\mathrm{d}y \mathrm{d} x=\|f\|_1$$
Hence, $(P_t)$ is extendable to a family of contraction semigroups on $L^p$ with $p \in [1,\infty]$ after interpolation principle. i.e.,
$$\|P_tf \|_p \le \|f\|_p \qquad \forall f \in L^\infty, p \in [1,\infty]$$

Nonetheless, this semigroup does not satisfies any Poincare's inequality.
Indeeds, let us consider the function $f(x)=e^{i\lambda x}$ for some real constant $\lambda$ .Then, $P_tf(x)= \mathbb{E}( e^{i\lambda (B_t+x)})=e^{i\lambda x} e^{-t^2\lambda^2/2}=e^{-t^2\lambda^2/2} f(x).$ 
Thus, for any even continuous compactly supported function $\hat{f} \in \mathcal{C}_c(\mathbb{R})$ such that $\hat{f}(0)=0$, if we consider the function $f(x)= \int_{\mathbb{R}} \hat{f}(\lambda) e^{i\lambda x}\mathrm{d} \lambda$, we observe that 

+ $f \in L^1 \cap L^\infty$.
+ By Plancherel's theorem, $\int f = \hat{f}(0)=0$.
+ $P_tf(x) =\int_\mathbb{R} \hat{f}(\lambda)e^{-t^2\lambda^2/2}$    
  Hence, by Plancherel's theorem again, we have:
+ $\|P_tf\|_2^2 = \int_{\mathbb{R}} \| \hat{f}(\lambda) \|^2e^{-t^2\lambda^2} \mathrm{d} \lambda$.
+ $\|f\|^2_2= \int_\mathbb{R} \| \hat{f}(\lambda) \|^2 \mathrm{d} \lambda.$
  Which shows concretely that we cannot construct a Poincare's inequality for this Brownian motion semigroup.

**Example 2:** (Orstein-Uhlenbeck process)
Let $(P_t)$ be the semigroup of the Orstein-Uhlenbeck process $(X_t)$ driven by a Brownian motion $(B_t)$:
$$\mathrm{d}X_t= -X_t \mathrm{d}t+ 
\sqrt{2}\mathrm{d} B_1$$
This SDE has the analytic solution:
$$X_t=x_0e^{-t}+\sqrt{2}e^{-t}\int_0^te^s \mathrm{d}B_s,$$
or
$$X_t=x_0e^{-t}+e^{-t}W_{e^{2t}-1},$$
for a time-changed Brownian motion of $(B_t)$.
The generator $\mathcal{L}$ of $(P_t)$ is then $\mathcal{Lf}(x)=-xf(x)+f''(x)$, and for any $f \in L^\infty$,
$$P_tf(x)= \int_\mathbb{R} \frac{1}{\sqrt{2\pi}}f(y\sqrt{1-e^{-2t}}+ e^{-t}x)e^{-y^2/2}\mathrm{d}y.$$
Its invarant measure is then $\mu(\mathrm{d}x)=e^{-x^2/2}\mathrm{d}x$.
Clearly, $(P_t)$ is not ultra-contractive. Indeeds, by considering the function $f(x)=|x|$, we observer that for any $t>0$, $\|f\|_1=\int_\mathbb{R} \frac{1}{\sqrt{2\pi}}|x|e^{-x^2/2} \mathrm{d}x=\sqrt{2/\pi}$, wheareas,
$$\lim_{x \rightarrow \infty} \frac{P_tf(x)}{|x|} \ge \lim_{x \rightarrow \infty} \int_\mathbb{R} \frac{1}{\sqrt{2\pi}}\frac{ e^{-t}|x|-|y|\sqrt{1-e^{-2t}}}{|x|}e^{-y^2/2}\mathrm{d}y=e^{-t}$$
Thus, $\| P_t f\|_\infty = \infty$.

Nonetheless, $(P_t)$ satisfies the Poincare's inequality in $L^2$ for $\lambda=1$, indeed, the Gaussian Poincaré's inequality show that for any standard normal variable $X$ and differentiable function $f$:
$$\mathrm{Var}f(X) \le \mathbb{E}(|\nabla f(X)|^2),$$
which implies that for any centered smooth compactly supported function $f$,
$$\|P_0f\|_2^2=\|f\|_2^2 \le-\langle \mathcal{L}f,f \rangle=- \frac{\mathrm{d \|P_t f \|_2}^2}{\mathrm{d}t}\big|_{t=0}$$
The last equation is due the fact that $\mathcal{L}$ is the generator of $P_t$.
Hence, for all $t \ge 0$ and $f \in L^2_0$,
$$\| P_t f\|_2 \le e^{-t/2}\| f\|_2.$$
**Example 3** (Brownian motion in circle ($\mathbb{T}^1$))
We now consider the Brownian motion $(X_t)$ on a circle and show that this Brownian motion is ultracontractive and satisfies Pointcaré's inequality.
A Brownian motion $(X_t)$ in circle when embedded in $\mathbb{R}^2$, is a $\mathbb{R}^2$-valued stochastic process that can be rewritten as:
$$X_t= (\cos(2\pi B_t+\theta), \sin(2\pi B_t+\theta))$$
where $(B_t)$ is a standard Brownian motion.
Because, a circle is isometric to a flat torus $\mathbb{T}^1$, we may also write $X_t$ $X_t= [B_t]$, where $[x]$ denotes the projection of a real number $x$ into the quotient space $\mathbb{R}/\mathbb{Z}.$
To study this Brownian motion, we will also identify $\mathbb{T}^1$ with $[0,1]$. We also  identify a continuous function $f$ on $\mathbb{T}^1$ with a function $\tilde{f}: [0,1] \rightarrow \mathbb{R}$ that is extendable to a continuous function on $\mathbb{R}$,i.e. $f(0)=f(1)$ . Thus, by default, all the smooth functions on $[0,1]$ we considered in the rest of this example are extendable to a smooth periodic function on $\mathbb{R}$, i.e., $f^{(n)}(0)=f^{(n)}(1)$ for all $n$.

Let $(P_t)$ be the semigroup associated to $(X_t)$, then for all  smooth $f$
$$P_tf(x)= \int_\mathbb{R} \frac{1}{\sqrt{2\pi t}} f([y+x])e^{-y^2/2t} \mathrm{d} y,$$
whose generator $\mathcal{L}$ is: $\mathcal{L}f= f''$. The unique invariant measure of $(P_t)$ is the Lebesque measure on $[0,1]$.

Clearly, $(P_t)$ is ultracontractive because $P_tf = \int_{[0,1]} f(x) g_t(x)\mathrm{d}x$ with 
$$g_t(x)=\frac{1}{\sqrt{2\pi t}}\sum_{z \in \mathbb{Z}} e^{-(x+z)^2/2t},$$
and $\| g_t\|_\infty < \infty$ for all $t>0$.
Besides, by for any $1$-periodic smooth function $f$, we have:
$$\langle f , \mathcal{L}f \rangle=\int_{[0,1]} ff''=-\int_{[0,1]} (f')^2 $$
Besides, using Fourrier series, we know that whenever $\int_{[0,1]} f =0$,
$$\int_{[0,1]} (f')^2 \ge (2\pi)^2 \int_{[0,1]} f^2$$
Hence, for all $f \in L^2$,
$$\| P_tf \|_2 \le e^{-2\pi t} \|f\|_2.$$
Thus, there exists a constant $c_0 \ge 1$ such that for all $f$  such that $\int f=0$ and $p \in [1,\infty]$,
$$\| P_t f\|_p \le c_0 e^{-2\pi t} \| f\|_p.$$
*Remark*: If $f$ is only a differentiable function such that $f(0)=f(1)$, i.e., we do not assume $f'(0)=f'(1)$. Then, we only have:
$$\int_{[0,1]} (f')^2 \ge (\pi)^2 \int_{[0,1]} f^2.$$

