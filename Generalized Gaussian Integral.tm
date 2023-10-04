<TeXmacs|2.1>

<style|generic>

<\body>
  <section|Generalized Gaussian Integral>

  <subsection|Introduction>

  In this note, we explore the Gaussian integral in complex space.

  To define and evaluate Gaussian integral in complex space, we first
  consider the one-dimensional case in section <reference|section:
  One-Dimensional Complex Gaussian Integral>, And then generalize the result
  to multi-dimensional case in section <reference|section: Multi-Dimensional
  Complex Gaussian Integral>. To check the result, we reduce it to real
  Gaussian integral in section <reference|section: From Complex Gaussian
  Integral to Real Gaussian Integral>.

  Importantly, in section <reference|section: Differential Form Is Invariant
  for Unitary Transformation>, <reference|section: Trace of Logarithm Is
  Invariant for Unitary Transformation>, and <reference|section: Complex
  Gaussian Integral Is Invariant for Unitary Transformation>, we find that
  the result of complex Gaussian integral is invariant for unitary
  transformation. This enable us to express it in Dirac's representation
  theory, in section <reference|section: Gaussian Integral in Dirac's
  Representation Theory>. This expression is abstract. Explicit expression
  can be obtained by simply inserting a complete relation. It can be seen as
  a generalization of Gaussian integral.

  <subsection|One-Dimensional Complex Gaussian Integral><label|section:
  One-Dimensional Complex Gaussian Integral>

  In complex plane, we have to ensure that, the measurement is real, so is
  the integrand. So, the only way of writing a complex Gaussian-like integral
  is

  <\equation*>
    <big|int><rsub|\<bbb-C\>>\<mathd\>z\<mathd\><wide|z|\<bar\>>
    exp<around*|(|-<wide|z|\<bar\>> A z+<wide|b|\<bar\>> z+b
    <wide|z|\<bar\>>|)>,
  </equation*>

  for a real positive number <math|A> and a complex number <math|b>. Next, we
  are to integrate this by first converting it to real plane. To do this, let
  <math|z=x+\<mathi\> y> and <math|b=p+\<mathi\> q>. Recall that <math|A> is
  itself real.

  First, we deal with the measurement. It is
  <math|\<mathd\>z\<wedge\>\<mathd\><wide|z|\<bar\>>> in full form. We have

  <\align>
    <tformat|<table|<row|<cell|>|<cell|\<mathd\>z\<wedge\>\<mathd\><wide|z|\<bar\>>>>|<row|<cell|<around*|{|z=x+\<mathi\>
    y|}>=>|<cell|<around*|(|\<mathd\>x+\<mathi\>
    \<mathd\>y|)>\<wedge\><around*|(|\<mathd\>x-\<mathi\>
    \<mathd\>y|)>>>|<row|<cell|<around*|{|expand|}>=>|<cell|-\<mathi\>
    \<mathd\>x\<wedge\>\<mathd\>y+\<mathi\>
    \<mathd\>y\<wedge\>\<mathd\>x>>|<row|<cell|<around*|{|\<mathd\>y\<wedge\>\<mathd\>x=-\<mathd\>x\<wedge\>\<mathd\>y|}>=>|<cell|<around*|(|-2\<mathi\>|)>
    \<mathd\>x\<wedge\>\<mathd\>y.>>>>
  </align>

  Next, we deal with the integrand. We have

  <\align>
    <tformat|<table|<row|<cell|>|<cell|-<wide|z|\<bar\>> A z+<wide|b|\<bar\>>
    z+b <wide|z|\<bar\>>>>|<row|<cell|<around*|{|z,b=\<cdots\>|}>=>|<cell|-<around*|(|x-\<mathi\>
    y|)> A <around*|(|x+\<mathi\> y|)>+<around*|(|p-\<mathi\>
    q|)><around*|(|x+\<mathi\> y|)>+<around*|(|p+\<mathi\>
    q|)><around*|(|x-\<mathi\> y|)>>>|<row|<cell|<around*|{|expand|}>=>|<cell|-A
    x<rsup|2>-A y<rsup|2>+2p x+2q y.>>>>
  </align>

  So, we get

  <\equation*>
    <big|int><rsub|\<bbb-C\>>\<mathd\>z\<mathd\><wide|z|\<bar\>>
    exp<around*|(|-<wide|z|\<bar\>> A z+<wide|b|\<bar\>> z+b
    <wide|z|\<bar\>>|)>=<around*|(|-2\<mathi\>|)><big|int><rsub|\<bbb-R\><rsup|2>>\<mathd\>x\<mathd\>y
    exp<around*|(|-A x<rsup|2>-A y<rsup|2>+2p x+2q y|)>.
  </equation*>

  The right hand side can be integrated as

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<around*|(|-2\<mathi\>|)><big|int><rsub|\<bbb-R\><rsup|2>>\<mathd\>x\<mathd\>y
    exp<around*|(|-A x<rsup|2>-A y<rsup|2>+2p x+2q
    y|)>>>|<row|<cell|=>|<cell|<around*|(|-2\<mathi\>|)><big|int><rsub|\<bbb-R\><rsup|2>>\<mathd\>x\<mathd\>y
    exp<around*|(|-A <around*|(|x-<frac|p|A>|)><rsup|2>-A
    <around*|(|y-<frac|q|A>|)><rsup|2>+<frac|p<rsup|2>+q<rsup|2>|A>|)>>>|<row|<cell|=>|<cell|<around*|(|-2\<mathi\>|)>
    exp<around*|(|<frac|p<rsup|2>+q<rsup|2>|A>|)>\<times\><big|int><rsub|\<bbb-R\><rsup|2>>\<mathd\>x\<mathd\>y
    exp<around*|(|-A <around*|(|x-<frac|p|A>|)><rsup|2>-A
    <around*|(|y-<frac|q|A>|)><rsup|2>|)>.>>>>
  </align>

  Noticing that <math|p<rsup|2>+q<rsup|2>=b <wide|b|\<bar\>>>, and defining
  <math|u\<assign\><sqrt|A><around*|(|x-p/A|)>> and
  <math|v\<assign\><sqrt|A><around*|(|y-q/A|)>>, we get

  <\equation*>
    <frac|-2\<mathi\>|A> exp<around*|(|<frac|b
    <wide|b|\<bar\>>|A>|)>\<times\><big|int><rsub|\<bbb-R\><rsup|2>>\<mathd\>u\<mathd\>v
    \<mathe\><rsup|-<around*|(|u<rsup|2>+v<rsup|2>|)>>.
  </equation*>

  Now, by converting to polar coordinates,

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|\<bbb-R\><rsup|2>>\<mathd\>u\<mathd\>v
    \<mathe\><rsup|-<around*|(|u<rsup|2>+v<rsup|2>|)>>>>|<row|<cell|<around*|{|<text|polar
    coordinates>|}>=>|<cell|<big|int><rsub|0><rsup|2
    \<mathpi\>>\<mathd\>\<theta\><big|int><rsub|0><rsup|+\<infty\>>\<mathd\>r
    r \ \<mathe\><rsup|-r<rsup|2>>>>|<row|<cell|<around*|{|<big|int><rsub|0><rsup|+\<infty\>>\<mathd\>r
    <around*|(|2r|)>=<big|int><rsub|0><rsup|+\<infty\>>\<mathd\>r<rsup|2>|}>=>|<cell|<frac|1|2><big|int><rsub|0><rsup|2
    \<mathpi\>>\<mathd\>\<theta\> <big|int><rsub|0><rsup|+\<infty\>>\<mathd\>r<rsup|2>
    \<mathe\><rsup|-r<rsup|2>>>>|<row|<cell|<around*|{|<big|int><rsub|0><rsup|+\<infty\>>\<mathd\>r<rsup|2>
    \<mathe\><rsup|-r<rsup|2>>=1|}>=>|<cell|\<mathpi\>.>>>>
  </align>

  So, we arrive at

  <\equation>
    <big|int><rsub|\<bbb-C\>>\<mathd\>z\<mathd\><wide|z|\<bar\>>
    exp<around*|(|-<wide|z|\<bar\>> A z+<wide|b|\<bar\>> z+b
    <wide|z|\<bar\>>|)>=<frac|-2\<mathpi\> \<mathi\>|A> exp<around*|(|<frac|b
    <wide|b|\<bar\>>|A>|)>.
  </equation>

  Surprisingly, during this derivation, we did not employ the famous Gauss's
  trick of self-multiplication. That is, to evaluate
  <math|I\<assign\><big|int><rsub|\<bbb-R\>>\<mathd\>x
  \<mathe\><rsup|-x<rsup|2>>>, Gauss instead evaluated
  <math|I<rsup|2>=<big|int><rsub|\<bbb-R\><rsup|2>>\<mathd\>x\<mathd\>y
  \<mathe\><rsup|-<around*|(|x<rsup|2>+y<rsup|2>|)>>> by which polar
  coordinates can then intervene. As what we have calculated, it results in
  <math|I<rsup|2>=\<mathpi\>>. So, Gauss concluded that
  <math|I=<sqrt|\<mathpi\>>>. Contrarily, in our derivation, all is natural.
  It is suspected that Gaussian integral should be expressed in complex
  plane!

  Another difference between the real and complex one-dimensional Gaussian
  integral is that it is <math|1/A> instead of <math|<sqrt|1/A>>. We will
  make this difference clear in section <reference|section: Reducing to Real
  Gaussian Integral>.

  <subsection|Differential Form Is Invariant for Unitary
  Transformation><label|section: Differential Form Is Invariant for Unitary
  Transformation>

  To generalize the previous result multi-dimension, we have to declare the
  complex differential form used for writing down the multi-dimensional
  complex Gaussian integral. A general complex integral has the form

  <\equation*>
    <big|int><rsub|\<bbb-C\><rsup|2n>>\<mathd\>z\<mathd\><wide|z|\<bar\>>
    <around*|{|<text|integrand>|}>,
  </equation*>

  where <math|z\<in\>\<bbb-C\><rsup|n>>, and the differential form
  <math|\<mathd\>z\<mathd\><wide|z|\<bar\>>\<assign\>\<mathd\>z<rsup|1>\<wedge\>\<cdots\>\<wedge\>\<mathd\>z<rsup|n>\<wedge\>\<mathd\><wide|z|\<bar\>><rsup|1>\<wedge\>\<cdots\>\<wedge\>\<mathd\><wide|z|\<bar\>><rsup|n>>.

  Next, we wonder how the <math|\<mathd\>z\<mathd\><wide|z|\<bar\>>> changes
  with unitary transformation. Let <math|U> an <math|n\<times\>n> unitary
  matrix, and <math|w\<assign\><wide|U|\<bar\>> z> where
  <math|<wide|U|\<bar\>>> denotes the <hlink|transjugate|https://en.wikipedia.org/wiki/Conjugate_transpose>
  of <math|U> <\footnote>
    Generally, we should use dagger-notation, instead of bar-notation, for
    transjugate of vector or matrix. Here, it should be
    <math|\<mathd\>z<rsup|\<dagger\>>> instead of
    <math|\<mathd\><wide|z|\<bar\>>>, and <math|U<rsup|\<dagger\>>> instead
    of <math|<wide|U|\<bar\>>>. And usually, the bar-notation is left to
    <hlink|complex conjugate|https://en.wikipedia.org/wiki/Complex_conjugate>.
    But for the fact that complex conjugate is absent in this note, and that
    notations shall be consistent throughout the note, we employ bar-notation
    for representing transjugate.
  </footnote>. Recall the case in real space, we have
  <math|\<mathd\>x=det<around*|(|\<partial\>x/\<partial\>y|)> \<mathd\>y>.
  The derivation of this formula is purely algebraic, thus can be directly
  generalized to complex space. So, from <math|z=U w>, we get
  <math|\<mathd\>z=det<around*|(|U|)> \<mathd\>w>; and from
  <math|<wide|z|\<bar\>>=<wide|w|\<bar\>> <wide|U|\<bar\>>>, we get
  <math|\<mathd\><wide|z|\<bar\>>=det<around*|(|<wide|U|\<bar\>>|)>
  \<mathd\><wide|w|\<bar\>>>. Thus, we have

  <\align>
    <tformat|<table|<row|<cell|>|<cell|\<mathd\>z\<mathd\><wide|z|\<bar\>>>>|<row|<cell|<around*|{|\<mathd\>z,\<mathd\><wide|z|\<bar\>>=\<cdots\>|}>=>|<cell|det<around*|(|U|)>
    det<around*|(|<wide|U|\<bar\>>|)> \<mathd\>w\<mathd\><wide|w|\<bar\>>>>|<row|<cell|<around*|{|det<around*|(|A|)>
    det<around*|(|B|)>=det<around*|(|A B|)>|}>=>|<cell|det<around*|(|U
    <wide|U|\<bar\>>|)> \<mathd\>w\<mathd\><wide|w|\<bar\>>>>|<row|<cell|<around*|{|U
    <wide|U|\<bar\>>=1|}>=>|<cell|\<mathd\>w\<mathd\><wide|w|\<bar\>>.>>>>
  </align>

  So, we find that the differential form is invariant for unitary
  transformation.

  <subsection|Multi-Dimensional Complex Gaussian Integral><label|section:
  Multi-Dimensional Complex Gaussian Integral>

  In this section, we are to generalize the complex Gaussian integral from
  one-dimensional to multi-dimensional, that is

  <\equation*>
    <big|int><rsub|\<bbb-C\><rsup|2n>>\<mathd\>z\<mathd\><wide|z|\<bar\>>
    exp<around*|(|-<wide|z|\<bar\>> A \ z+<wide|b|\<bar\>> z+<wide|z|\<bar\>>
    b|)>,
  </equation*>

  where <math|A> is a positive definite Hermitian matrix and <math|b> a
  complex vector. It must be noted that <math|b> and <math|z> are now
  vectors, <math|<wide|b|\<bar\>>> or <math|<wide|z|\<bar\>>> means more than
  complex conjugate, but including transpose. For this reason, we write
  <math|<wide|z|\<bar\>> b> instead of <math|b <wide|z|\<bar\>>>.

  Following the same strategy used for real Gaussian integral, we first
  diagonalize <math|A> as <math|A=U D <wide|U|\<bar\>>> with <math|U> unitary
  and <math|D> diagonal. Defining the new coordinate
  <math|\<zeta\>\<assign\><wide|U|\<bar\>> z>, we are to change the
  coordinates from <math|z> to <math|\<zeta\>>. We have,
  <math|<wide|z|\<bar\>> A z=<wide|\<zeta\>|\<bar\>> <wide|U|\<bar\>> A U
  \<zeta\>=<wide|\<zeta\>|\<bar\>> D \<zeta\>>. As discussed in section
  <reference|section: Differential Form Is Invariant for Unitary
  Transformation>, we have <math|\<mathd\>z\<mathd\><wide|z|\<bar\>>=\<mathd\>\<zeta\>\<mathd\><wide|\<zeta\>|\<bar\>>>.

  Then, defining <math|h\<assign\><wide|U|\<bar\>> b>, we have
  <math|<wide|b|\<bar\>> z=<wide|h|\<bar\>> <wide|U|\<bar\>> U
  \<zeta\>=<wide|h|\<bar\>> \<zeta\>> and <math|<wide|z|\<bar\>>
  b=<wide|\<zeta\>|\<bar\>> h>. Altogether, we find

  <\equation*>
    <big|int><rsub|\<bbb-C\><rsup|2n>>\<mathd\>z\<mathd\><wide|z|\<bar\>>
    exp<around*|(|-<wide|z|\<bar\>> A \ z+<wide|b|\<bar\>> z+<wide|z|\<bar\>>
    b|)>=<big|int><rsub|\<bbb-C\><rsup|2n>>\<mathd\>\<zeta\>\<mathd\><wide|\<zeta\>|\<bar\>>
    exp<around*|(|-<wide|\<zeta\>|\<bar\>> D \ \<zeta\>+<wide|h|\<bar\>>
    \<zeta\>+<wide|\<zeta\>|\<bar\>> h|)>.
  </equation*>

  Now, we can separate each dimension and compute for each dimension
  individually, as

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|\<bbb-C\><rsup|2n>>\<mathd\>\<zeta\>\<mathd\><wide|\<zeta\>|\<bar\>>
    <big|prod><rsub|\<alpha\>=1><rsup|n>exp<around*|(|-<wide|\<zeta\>|\<bar\>>
    D \<zeta\>+<wide|h|\<bar\>> \<zeta\>+<wide|\<zeta\>|\<bar\>>
    h|)>>>|<row|<cell|<around*|{|<text|move
    <math|\<mathd\>\<zeta\><rsup|\<alpha\>>> to
    <math|\<mathd\><wide|\<zeta\>|\<bar\>><rsup|\<alpha\>>>>|}>=>|<cell|<around*|(|-1|)><rsup|n
    <around*|(|n-1|)>/2> <big|prod><rsub|\<alpha\>=1><rsup|n><around*|[|<big|int><rsub|\<bbb-C\><rsup|2>>\<mathd\>\<zeta\><rsup|\<alpha\>>\<mathd\><wide|\<zeta\>|\<bar\>><rsup|\<alpha\>>exp<around*|(|-<wide|\<zeta\>|\<bar\>><rsup|\<alpha\>>
    D<rsub|\<alpha\>\<alpha\>>\<zeta\><rsup|\<alpha\>>+<wide|h|\<bar\>><rsup|\<alpha\>>
    \<zeta\><rsup|\<alpha\>>+<wide|\<zeta\>|\<bar\>><rsup|\<alpha\>>
    h<rsub|\<alpha\>>|)>|]>>>|<row|<cell|<around*|{|<text|1-dimensional
    result>|}>=>|<cell|<around*|(|-1|)><rsup|n <around*|(|n-1|)>/2>
    <big|prod><rsub|\<alpha\>=1><rsup|n><around*|[|<frac|-2\<mathpi\>
    \<mathi\>|D<rsub|\<alpha\>\<alpha\>>>
    exp<around*|(|<frac|h<rsub|\<alpha\>>
    <wide|h|\<bar\>><rsub|\<alpha\>>|D<rsub|\<alpha\>\<alpha\>>>|)>|]>>>|<row|<cell|=>|<cell|<frac|\<mathi\><rsup|n
    <around*|(|n+2|)>> <around*|(|2\<mathpi\>|)><rsup|n>|<big|prod><rsub|\<alpha\>=1><rsup|n>D<rsub|\<alpha\>\<alpha\>>>
    exp<around*|(|<big|sum><rsub|\<alpha\>=1><rsup|n><frac|h<rsub|\<alpha\>>
    <wide|h|\<bar\>><rsub|\<alpha\>>|D<rsub|\<alpha\>\<alpha\>>>|)>.>>>>
  </align>

  The final step is changing coordinates back to <math|z> from
  <math|\<zeta\>>. Since <math|D=<wide|U|\<bar\>> A U> and
  <math|h=<wide|U|\<bar\>> b>, we have

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<big|prod><rsub|\<alpha\>=1><rsup|n>D<rsub|\<alpha\>\<alpha\>>>>|<row|<cell|=>|<cell|det<around*|(|D|)>>>|<row|<cell|=>|<cell|det<around*|(|<wide|U|\<bar\>>
    A U|)>>>|<row|<cell|=>|<cell|det<around*|(|<wide|U|\<bar\>>|)>
    det<around*|(|A|)> det<around*|(|U|)>>>|<row|<cell|=>|<cell|det<around*|(|U
    <wide|U|\<bar\>>|)> det<around*|(|A|)>>>|<row|<cell|<around*|{|U
    <wide|U|\<bar\>>=1|}>=>|<cell|det<around*|(|A|)>.>>>>
  </align>

  And since <math|U> and <math|<wide|U|\<bar\>>> are mutually inverse, we
  have

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<around*|(|<wide|U|\<bar\>> A
    U|)><rsup|-1>>>|<row|<cell|<around*|{|property of
    inverse|}>=>|<cell|U<rsup|-1> A<rsup|-1>
    <around*|(|<wide|U|\<bar\>>|)><rsup|-1>>>|<row|<cell|<around*|{|U
    <wide|U|\<bar\>>=1|}>=>|<cell|<wide|U|\<bar\>> A<rsup|-1> U,>>>>
  </align>

  thus

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<big|sum><rsub|\<alpha\>=1><rsup|n><frac|h<rsub|\<alpha\>>
    <wide|h|\<bar\>><rsub|\<alpha\>>|D<rsub|\<alpha\>\<alpha\>>>>>|<row|<cell|=>|<cell|<wide|h|\<bar\>>
    D<rsup|-1> h>>|<row|<cell|<around*|{|previous
    conclusion|}>=>|<cell|<wide|b|\<bar\>> U <around*|(|<wide|U|\<bar\>> A
    U|)><rsup|-1> <wide|U|\<bar\>> b>>|<row|<cell|<around*|{|U
    <wide|U|\<bar\>>=1|}>=>|<cell|<wide|b|\<bar\>> U
    <wide|U|\<bar\>>A<rsup|-1> U <wide|U|\<bar\>>
    b>>|<row|<cell|=>|<cell|<wide|b|\<bar\>> A<rsup|-1> b.>>>>
  </align>

  Altogether, we find

  <\equation*>
    <big|int><rsub|\<bbb-C\><rsup|2n>>\<mathd\>z\<mathd\><wide|z|\<bar\>>
    exp<around*|(|-<wide|z|\<bar\>> A \ z+<wide|b|\<bar\>> z+<wide|z|\<bar\>>
    b|)>=<frac|\<mathi\><rsup|n <around*|(|n+2|)>><around*|(|2\<mathpi\>|)><rsup|n>|det<around*|(|A|)>>
    exp<around*|(|<wide|b|\<bar\>> A<rsup|-1> b|)>.
  </equation*>

  By the formula <math|det<around*|(|A|)>=exp<around*|(|tr
  ln<around*|(|A|)>|)>>, we can convert <math|det<around*|(|A|)>> into
  exponential. Finally, we arrive at

  <\equation>
    ln<around*|[|<big|int><rsub|\<bbb-C\><rsup|2n>>\<mathd\>z\<mathd\><wide|z|\<bar\>>
    exp<around*|(|-<wide|z|\<bar\>> A \ z+<wide|b|\<bar\>> z+<wide|z|\<bar\>>
    b|)>|]>=<wide|b|\<bar\>> A<rsup|-1> b-tr ln<around*|(|A|)>+Const,
  </equation>

  where the constant <math|Const=ln<around*|(|\<mathi\><rsup|n
  <around*|(|n+2|)>><around*|(|2\<mathpi\>|)><rsup|n>|)>=n <around*|(|n+2|)>
  <around*|(|\<mathpi\> \<mathi\>/2|)>+n ln<around*|(|2\<mathpi\>|)>>.

  <subsection|From Complex Gaussian Integral to Real Gaussian
  Integral><label|section: From Complex Gaussian Integral to Real Gaussian
  Integral>

  To reduce to multi-dimensional real Gaussian integral, we simply let the
  <math|A> and <math|b> completely real. Then, by changing coordinates from
  <math|\<mathd\>z\<mathd\><wide|z|\<bar\>>> to <math|\<mathd\>x\<mathd\>y>,
  where <math|z=x+\<mathi\> y>, we will arrive at two individual real
  Gaussian integrals. So, the result is a multiplication of two real Gaussian
  integral. It is for this reason, it is the square root of
  <math|det<around*|(|A|)>> in real Gaussian integral.

  Explicitly, we change coordinates from <math|\<mathd\>z\<mathd\><wide|z|\<bar\>>>
  to <math|\<mathd\>x\<mathd\>y>. As it has been derived,

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|\<bbb-C\><rsup|2n>>\<mathd\>z\<mathd\><wide|z|\<bar\>>
    exp<around*|(|-<wide|z|\<bar\>> A \ z+<wide|b|\<bar\>> z+<wide|z|\<bar\>>
    b|)>>>|<row|<cell|<around*|{|z=x+\<mathi\>
    y|}>=>|<cell|<around*|(|-1|)><rsup|n<around*|(|n-1|)>/2> <around*|(|-2
    \<mathi\>|)><rsup|n> <big|int><rsub|\<bbb-R\><rsup|2n>>\<mathd\>x\<mathd\>y
    exp<around*|(|-x<rsup|t> A x-y<rsup|t> A y+2 b<rsup|t>
    x|)>>>|<row|<cell|=>|<cell|\<mathi\><rsup|n <around*|(|n+2|)>> 2<rsup|n>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x exp<around*|(|-x<rsup|t> A
    x+2 b<rsup|t> x|)><big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>y
    exp<around*|(|-y<rsup|t> A y|)>.>>>>
  </align>

  By plugging in the result of complex Gaussian integral, we have

  <\equation*>
    \<mathi\><rsup|n <around*|(|n+2|)>> 2<rsup|n>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x exp<around*|(|-x<rsup|t> A
    x+2 b<rsup|t> x|)><big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>y
    exp<around*|(|-y<rsup|t> A y|)>=<frac|\<mathi\><rsup|n
    <around*|(|n+2|)>><around*|(|2\<mathpi\>|)><rsup|n>|det<around*|(|A|)>>
    exp<around*|(|<wide|b|\<bar\>> A<rsup|-1> b|)>.
  </equation*>

  So, we get

  <\equation*>
    \ <frac|\<mathpi\><rsup|n>|det<around*|(|A|)>>exp<around*|(|<wide|b|\<bar\>>
    A<rsup|-1> b|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
    exp<around*|(|-x<rsup|t> A x+2 b<rsup|t>
    x|)><big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>y exp<around*|(|-y<rsup|t>
    A y|)>
  </equation*>

  First letting <math|b=0>, since both <math|x> and <math|y> are dummy
  variables, we find

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>y exp<around*|(|-y<rsup|t> A
    y|)>=<sqrt|<frac|\<mathpi\><rsup|n>|det<around*|(|A|)>>>.
  </equation*>

  Plugging back, we get

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x exp<around*|(|-x<rsup|t> A
    x+2 b<rsup|t> x|)>=<sqrt|<frac|\<mathpi\><rsup|n>|det<around*|(|A|)>>>
    exp<around*|(|<wide|b|\<bar\>> A<rsup|-1> b|)>.
  </equation*>

  By re-defining <math|A\<rightarrow\>A/2> and <math|b\<rightarrow\>b/2>, we
  finally arrive at

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
    exp<around*|(|-<frac|1|2>x<rsup|t> A x+b<rsup|t>
    x|)>=<sqrt|<frac|<around*|(|2\<mathpi\>|)><rsup|n>|det<around*|(|A|)>>>
    exp<around*|(|<frac|1|2> <wide|b|\<bar\>> A<rsup|-1> b|)>,
  </equation*>

  which is exactly the formula of real multi-dimensional Gaussian integral.

  <subsection|Trace of Logarithm Is Invariant for Unitary
  Transformation><label|section: Trace of Logarithm Is Invariant for Unitary
  Transformation>

  In this section, we are to exam how the <math|tr ln<around*|(|A|)>> changes
  with unitary transformation. We start at the well-known formula

  <\equation*>
    \<mathe\><rsup|<wide|U|\<bar\>> X U>=<wide|U|\<bar\>> \<mathe\><rsup|X>
    U,
  </equation*>

  where <math|U> is a unitary operator and <math|X> is an arbitrary operator.
  It can be proven by simply expanding exponential as series while noticing
  <math|U <wide|U|\<bar\>>=1>. Taking logarithm on both sides, we find

  <\equation*>
    <wide|U|\<bar\>> X U=ln<around*|(|<wide|U|\<bar\>> \<mathe\><rsup|X>
    U|)>.
  </equation*>

  And letting <math|A\<assign\>\<mathe\><rsup|X>>, we arrive at

  <\equation>
    <wide|U|\<bar\>> ln<around*|(|A|)> U=ln <around*|(|<wide|U|\<bar\>> A
    U|)>.
  </equation>

  Taking tace on both side, we get <math|tr<around*|(|<wide|U|\<bar\>>
  ln<around*|(|A|)> U|)>=tr ln<around*|(|A|)>>.<\footnote>
    This is apparent when we write it in component. That is,

    <\align>
      <tformat|<table|<row|<cell|>|<cell|tr<around*|(|<wide|U|\<bar\>>
      ln<around*|(|A|)> U|)>>>|<row|<cell|<around*|{|<text|in
      component>|}>=>|<cell|<big|sum><rsub|\<alpha\>,\<beta\>,\<gamma\>><wide|U|\<bar\>><rsub|\<alpha\>\<beta\>>
      ln<around*|(|A<rsub|\<beta\>\<gamma\>>|)>
      U<rsub|\<gamma\>\<alpha\>>>>|<row|<cell|=>|<cell|<big|sum><rsub|\<beta\>\<comma\>\<gamma\>><around*|(|<big|sum><rsub|\<alpha\>>U<rsub|\<gamma\>\<alpha\>>
      <wide|U|\<bar\>><rsub|\<alpha\>\<beta\>>|)>
      ln<around*|(|A<rsub|\<beta\>\<gamma\>>|)>>>|<row|<cell|<around*|{|U
      <wide|U|\<bar\>>=1|}>=>|<cell|<big|sum><rsub|\<beta\>\<comma\>\<gamma\>>\<delta\><rsub|\<beta\>\<gamma\>>
      \ ln<around*|(|A<rsub|\<beta\>\<gamma\>>|)>>>|<row|<cell|=>|<cell|<big|sum><rsub|\<beta\>>ln<around*|(|A<rsub|\<beta\>\<beta\>>|)>,>>>>
    </align>

    which is the <math|tr ln<around*|(|A|)>> written in component.
  </footnote> Thus,

  <\equation*>
    tr ln<around*|(|A|)>=tr ln<around*|(|<wide|U|\<bar\>> A U|)>.
  </equation*>

  So, trace of logarithm is invariant for unitary transformation.

  <subsection|Complex Gaussian Integral Is Invariant for Unitary
  Transformation><label|section: Complex Gaussian Integral Is Invariant for
  Unitary Transformation>

  Now, we can exam how the result of complex Gaussian integral changes with
  unitary transformation. We restate the result as

  <\equation*>
    ln<around*|[|<big|int><rsub|\<bbb-C\><rsup|2n>>\<mathd\>z\<mathd\><wide|z|\<bar\>>
    exp<around*|(|-<wide|z|\<bar\>> A \ z+<wide|b|\<bar\>> z+<wide|z|\<bar\>>
    b|)>|]>=<wide|b|\<bar\>> A<rsup|-1> b-tr ln<around*|(|A|)>+Const.
  </equation*>

  Taking unitary transformation <math|w\<assign\><wide|U|\<bar\>> z>, the
  matrix or operator <math|A> transforms as <math|B\<assign\><wide|U|\<bar\>>
  A U>, and the <math|b> as <math|c\<assign\><wide|U|\<bar\>> b>. Because of
  <math|U <wide|U|\<bar\>>=1>, we have <math|A<rsup|-1>=U B
  <wide|U|\<bar\>>>. As discussed in section <reference|section: Differential
  Form Is Invariant for Unitary Transformation> and section
  <reference|section: Trace of Logarithm Is Invariant for Unitary
  Transformation>, the differential form and the trace of logarithm are
  invariant for unitary transformation. So, the result of complex Gaussian
  integral is transformed to

  <\equation*>
    ln<around*|[|<big|int><rsub|\<bbb-C\><rsup|2n>>\<mathd\>w\<mathd\><wide|w|\<bar\>>
    exp<around*|(|-<wide|w|\<bar\>> B \ w+<wide|c|\<bar\>> w+<wide|w|\<bar\>>
    c|)>|]>=<wide|c|\<bar\>> B<rsup|-1> c-tr ln<around*|(|B|)>+Const.
  </equation*>

  It is seen that the result of complex Gaussian integral is invariant for
  unitary transformation.

  <subsection|Gaussian Integral in Dirac's Representation
  Theory><label|section: Gaussian Integral in Dirac's Representation Theory>

  In Dirac's representation theory <\footnote>
    For Dirac's representation theory, we reference to the book
    <with|font-shape|italic|<hlink|The Principles of Quantum
    Mechanics|https://www.amazon.com/Principles-Quantum-Mechanics-International-Monographs/dp/0198520115>>
    by P. A. M. Dirac.
  </footnote>, we can change from one representation to another by changing
  the complete orthogonal basis. For instance, let <math|\|\<varphi\>
  \<rangle\>> an abstract ket. In <math|\<alpha\>>-representation with
  complete orthogonal basis <math|<around*|{|\|\<alpha\>
  \<rangle\>\|\<alpha\>\<in\>A|}>>, it is <math|\<langle\>\<alpha\>
  \|\<varphi\> \<rangle\>>. Changing to <math|\<beta\>>-representation with
  complete orthogonal basis <math|<around*|{|\|\<beta\>
  \<rangle\>\|\<beta\>\<in\>B|}>> makes

  <\align>
    <tformat|<table|<row|<cell|>|<cell|\<langle\>\<alpha\> \|\<varphi\>
    \<rangle\>>>|<row|<cell|<around*|{|<big|sum><rsub|\<beta\>\<in\>B>\|\<beta\>
    \<rangle\>\<langle\>\<beta\> \|=1|}>=>|<cell|<big|sum><rsub|\<beta\>\<in\>B>\<langle\>\<alpha\>
    \|\<beta\> \<rangle\>\<langle\>\<beta\> \|\<varphi\> \<rangle\>.>>>>
  </align>

  This change is nothing but a unitary transformation, where the unitary
  matrix or operator has component <math|\<langle\>\<alpha\> \|\<beta\>
  \<rangle\>>. It indicates that the result of complex Gaussian integral can
  be expressed in Dirac's bracket notation, and the invariance for unitary
  transformation means that the expression is independent of specific
  representations.

  Explicitly, for any positive definite Hermitian operator <math|A> and any
  ket <math|\|b \<rangle\>> which may not be normalized, we have

  <\equation>
    <big|int>\<mathd\>\|\<varphi\> \<rangle\>\<mathd\>\<langle\>\<varphi\> \|
    exp<around*|(|-\<langle\>\<varphi\> \|A\|\<varphi\>
    \<rangle\>+\<langle\>b \|\<varphi\> \<rangle\>+\<langle\>\<varphi\> \|b
    \<rangle\>|)>=exp<around*|(|\<langle\>b \|A<rsup|-1>\|b \<rangle\>-tr
    ln<around*|(|A|)>+Const|)>,
  </equation>

  where for any complete orthogonal basis <math|<around*|{|\|x
  \<rangle\>\|x\<in\>X|}>>, <math|\<mathd\>\|\<varphi\>
  \<rangle\>\<mathd\>\<langle\>\<varphi\>
  \|=<big|prod><rsub|x\<in\>X>\<mathd\><around*|[|\<langle\>x \|\<varphi\>
  \<rangle\>|]>\<mathd\><around*|[|\<langle\>\<varphi\> \|x \<rangle\>|]>>.

  This expression is abstract. We can get an explicit expression by simply
  inserting a complete relation, like <math|<big|sum><rsub|\<alpha\>>\|
  \<alpha\>\<rangle\>\<langle\>\<alpha\> \|=1> or
  <math|<big|int><rsub|X>\<mathd\>x\|x \<rangle\>\<langle\>x \|=1>
  <\footnote>
    The expression of <math|tr ln<around*|(|A|)>> for continuous
    representation is discussed in appendix <reference|appendix: Trace in
    Continuous Representation>.
  </footnote>. This this reason, it is called the
  <with|font-series|bold|generalized Gaussian integral>.

  <appendix|Continuous Representation>

  <subsection|Trace in Continuous Representation><label|appendix: Trace in
  Continuous Representation>

  We have known what trace means for finite-dimensional matrix, and even for
  representation with discrete spectrum. We are to determine how trace is
  defined in representation with continuous spectrum. To do so, we convert
  from a discrete representation <math|\| \<alpha\>\<rangle\>> to a
  continuous one <math|\|x \<rangle\>>.

  Let <math|A> an operator. We have known that <math|tr <around*|(|A|)>> in
  representation <math|\| \<alpha\>\<rangle\>> is defined by
  <math|<big|sum><rsub|\<alpha\>>\<langle\>\<alpha\> \|A\|\<alpha\>
  \<rangle\>>. By inserting the complete relation <math|<big|int>\<mathd\>x\|
  x\<rangle\>\<langle\>x \|=1>, we have

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<big|sum><rsub|\<alpha\>>\<langle\>\<alpha\>
    \|A\|\<alpha\> \<rangle\>>>|<row|<cell|<around*|{|<text|insert
    <math|<big|int>\<mathd\>x\| x\<rangle\>\<langle\>x
    \|=1>>|}>=>|<cell|<big|sum><rsub|\<alpha\>><big|int>\<mathd\>x<big|int>\<mathd\>x<rprime|'>
    \<langle\> \<alpha\>\| x\<rangle\>\<langle\>x \|A\|x<rprime|'>
    \<rangle\>\<langle\>x<rprime|'> \|\<alpha\>
    \<rangle\>>>|<row|<cell|=>|<cell|<big|int>\<mathd\>x<big|int>\<mathd\>x<rprime|'>
    \<langle\>x \|A\|x<rprime|'> \<rangle\><around*|(|<big|sum><rsub|\<alpha\>>\<langle\>x<rprime|'>
    \|\<alpha\> \<rangle\>\<langle\> \<alpha\>\|
    x\<rangle\>|)>>>|<row|<cell|<around*|{|<big|sum><rsub|\<alpha\>>\|\<alpha\>
    \<rangle\>\<langle\>\<alpha\> \|=1|}>=>|<cell|<big|int>\<mathd\>x<big|int>\<mathd\>x<rprime|'>
    \<langle\>x \|A\|x<rprime|'> \<rangle\> \<langle\> x\|x<rprime|'>
    \<rangle\>>>|<row|<cell|<around*|{|\<langle\> x\|x<rprime|'>
    \<rangle\>=\<delta\><around*|(|x-x<rprime|'>|)>|}>=>|<cell|<big|int>\<mathd\>x<big|int>\<mathd\>x<rprime|'>
    \<langle\>x \|A\|x<rprime|'> \<rangle\>
    \<delta\><around*|(|x-x<rprime|'>|)>>>|<row|<cell|=>|<cell|<big|int>\<mathd\>x
    \<langle\>x \|A\|x \<rangle\>.>>>>
  </align>

  So, in continuous representation like <math|\|x \<rangle\>>, the
  <math|tr<around*|(|A|)>> is defined as <math|<big|int>\<mathd\>x
  \<langle\>x \|A\|x \<rangle\>>.

  <appendix|Berezin Integral (TODO)>

  C.f. <hlink|wikipedia|https://en.wikipedia.org/wiki/Berezin_integral#Useful_formulas>.

  We have,

  <\equation>
    \<mathi\><rsup|n <around*|(|n+2|)>><around*|(|2\<mathpi\>|)><rsup|n>
    exp<around*|(|<wide|b|\<bar\>> A<rsup|-1> b|)>=<big|int>\<mathd\>z
    \<mathd\><wide|z|\<bar\>> \<mathd\><wide|\<psi\>|\<bar\>>\<mathd\>\<psi\>
    exp<around*|(|-<wide|z|\<bar\>> A \ z+<wide|b|\<bar\>> z+<wide|z|\<bar\>>
    b-<wide|\<psi\>|\<bar\>> A \<psi\>|)>,
  </equation>

  where <math|\<psi\>> is a Grassmann number. The right hand side is
  invariant under infinitisimal transformation

  <\align>
    <tformat|<table|<row|<cell|\<delta\>z>|<cell|=<wide|\<epsilon\>|\<bar\>>
    \<psi\>>>|<row|<cell|\<delta\>\<psi\>>|<cell|=-\<epsilon\>z,>>>>
  </align>

  for any infinitisimal Grassmann number <math|\<epsilon\>>, in the sense
  that the leading order of variance is of
  <math|<with|font|cal|O><around*|(|<around*|\||\<epsilon\>|\|><rsup|2>|)>>.
  It is interesting that this transformation exchanges complex and Grassmann
  numbers.

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|appendix: Trace in Continuous Representation|<tuple|A.1|6>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|A|6>>
    <associate|auto-11|<tuple|A.1|6>>
    <associate|auto-12|<tuple|B|7>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|1.3|2>>
    <associate|auto-5|<tuple|1.4|3>>
    <associate|auto-6|<tuple|1.5|4>>
    <associate|auto-7|<tuple|1.6|5>>
    <associate|auto-8|<tuple|1.7|5>>
    <associate|auto-9|<tuple|1.8|6>>
    <associate|footnote-1|<tuple|1|2>>
    <associate|footnote-2|<tuple|2|5>>
    <associate|footnote-3|<tuple|3|6>>
    <associate|footnote-4|<tuple|4|6>>
    <associate|footnr-1|<tuple|1|2>>
    <associate|footnr-2|<tuple|2|5>>
    <associate|footnr-3|<tuple|3|6>>
    <associate|footnr-4|<tuple|4|6>>
    <associate|section: Complex Gaussian Integral Is Invariant for Unitary
    Transformation|<tuple|1.7|5>>
    <associate|section: Differential Form Is Invariant for Unitary
    Transformation|<tuple|1.3|2>>
    <associate|section: From Complex Gaussian Integral to Real Gaussian
    Integral|<tuple|1.5|4>>
    <associate|section: Gaussian Integral in Dirac's Representation
    Theory|<tuple|1.8|6>>
    <associate|section: Multi-Dimensional Complex Gaussian
    Integral|<tuple|1.4|3>>
    <associate|section: One-Dimensional Complex Gaussian
    Integral|<tuple|1.2|1>>
    <associate|section: Trace of Logarithm Is Invariant for Unitary
    Transformation|<tuple|1.6|5>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Generalized
      Gaussian Integral> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Introduction
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>One-Dimensional Complex
      Gaussian Integral <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Differential Form Is
      Invariant for Unitary Transformation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Multi-Dimensional Complex
      Gaussian Integral <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>From Complex Gaussian
      Integral to Real Gaussian Integral <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|1.6<space|2spc>Trace of Logarithm Is
      Invariant for Unitary Transformation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|1.7<space|2spc>Complex Gaussian Integral Is
      Invariant for Unitary Transformation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|1.8<space|2spc>Gaussian Integral in Dirac's
      Representation Theory <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendix
      A<space|2spc>Continuous Representation>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <with|par-left|<quote|1tab>|A.1<space|2spc>Trace in Continuous
      Representation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendix
      B<space|2spc>Berezin Integral (TODO)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>