<TeXmacs|2.1>

<style|generic>

<\body>
  <section|Generalized Gaussian Integral>

  <subsection|Representation Theory May Generalize Gaussian Integral>

  Originally, the multi-dimensional Gaussian integral is, for any positive
  definite real symmetric matrix <math|A> and vector <math|b>,

  <\equation>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<varphi\>
    exp<around*|(|-<frac|1|2>\<varphi\><rsup|t> A \<varphi\>+b<rsup|t>
    \<varphi\>|)>=<sqrt|<frac|<around*|(|2\<mathpi\>|)><rsup|n>|det<around*|(|A|)>>>exp<around*|(|<frac|1|2>b<rsup|t>
    A<rsup|-1> b|)>.
  </equation>

  With <math|det<around*|(|A|)>=exp<around*|(|tr ln<around*|(|A|)>|)>>, we
  can obsorb the <math|<around*|(|det<around*|(|A|)>|)><rsup|-1/2>> factor
  into the exponential, as

  <\equation>
    ln<around*|[|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<varphi\>
    exp<around*|(|-<frac|1|2>\<varphi\><rsup|t> A \<varphi\>+b<rsup|t>
    \<varphi\>|)>|]>=<frac|1|2>b<rsup|t> A<rsup|-1> b-<frac|1|2>tr
    ln<around*|(|A|)>+<frac|n|2>ln<around*|(|2\<mathpi\>|)>.
  </equation>

  There is, however, a functional version, which is very useful in quantum
  field theory. Let <math|A> a positive definite symmetric kernel and
  <math|b> a function,

  <\align>
    <tformat|<table|<row|<cell|>|<cell|ln<around*|[|<around*|(|<big|prod><rsub|x\<in\>V><big|int><rsub|\<bbb-R\>>\<mathd\><around*|[|\<varphi\><around*|(|x|)>|]>|)>exp<around*|(|-<frac|1|2><big|int><rsub|V>\<mathd\>x<big|int><rsub|V>\<mathd\>y
    \<varphi\><around*|(|x|)>A<around*|(|x,y|)>\<varphi\><around*|(|y|)>+<big|int><rsub|V>\<mathd\>x
    b<around*|(|x|)>\<varphi\><around*|(|x|)>|)>|]>>>|<row|<cell|=>|<cell|<frac|1|2><big|int><rsub|V>\<mathd\>x<big|int><rsub|V>\<mathd\>y
    b<around*|(|x|)> <around*|(|A<rsup|-1>|)><around*|(|x,y|)>
    b<around*|(|y|)>-<frac|1|2><big|int><rsub|V>\<mathd\>x
    ln<around*|(|A<around*|(|x,x|)>|)>+Const,>>>>
  </align>

  where <math|A<rsup|-1>> is the functional inverse of <math|A>, defined as
  <math|<big|int><rsub|V>\<mathd\>y A<around*|(|x,y|)>
  <around*|(|A<rsup|-1>|)><around*|(|y,z|)>=\<delta\><around*|(|x-z|)>>. It
  must be noted that, in functional integral, product like
  <math|<big|prod><rsub|x>\<mathd\><around*|[|\<varphi\><around*|(|x|)>|]>>
  shall be realized as wedged product. This, however, is not the end. There
  is also functional version in momentum space, and so on, and so on.

  This motives us to seek for a generalized version of Gaussian integral,
  which reduces to all these formulae just in one step.

  An educated guess is using Dirac's representation theory. Let <math|A> a
  Hermitian operator and <math|\|b \<rangle\>> a general ket, we may have

  \;

  <\equation>
    ln<around*|[|<big|int>\<mathd\>\<mu\><around*|(|\|\<varphi\>
    \<rangle\>|)> exp<around*|(|-\<langle\> \<varphi\>\|A\|\<varphi\>
    \<rangle\>+\<langle\> b\|\<varphi\> \<rangle\>+\<langle\> \<varphi\>\|b
    \<rangle\>|)>|]>=<frac|1|2>\<langle\> b\|A<rsup|-1>\|b
    \<rangle\>-<frac|1|2>tr ln<around*|(|A|)>+Const.
  </equation>

  With this expression, by inserting <math|<big|sum><rsub|\<alpha\>>\|\<alpha\>
  \<rangle\>\<langle\> \<alpha\>\|=1>, we recover the multi-dimensional
  version; and by inserting <math|<big|int><rsub|V>\<mathd\>x\|
  x\<rangle\>\<langle\>x \|=1>, we recover the functional version. This
  provides an abstract expression by using Dirac's bracket notation.

  The problems left are:

  <\itemize>
    <item>How is the measurement <math|\<mathd\>\<mu\><around*|(|\|\<varphi\>
    \<rangle\>|)>> defined?

    <item>Is <math|tr ln<around*|(|A|)>> independent of representation?
  </itemize>

  <subsection|One-Dimensional Complex Gaussian Integral>

  Now, we are to deal with the first problem. Recall that bracket notation
  deals with wave-function of quantum state, which is complex. So, <math|\|
  \<varphi\>\<rangle\>> is intrinsically complex. This hints us that we shall
  consider the Gaussian integral on complex plane.

  In complex plane, we have to ensure that, the measurement is real, so is
  the integrand. So, the only way of writting a complex Gaussian-like
  integral is

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

  <subsection|Multi-Dimensional Complex Gaussian Integral>

  We are to generalize the previous result from one-dimensional to
  multi-dimensional, that is

  <\equation*>
    <big|int><rsub|\<bbb-C\><rsup|2n>>\<mathd\>z\<mathd\><wide|z|\<bar\>>
    exp<around*|(|-<wide|z|\<bar\>> A \ z+<wide|b|\<bar\>> z+<wide|z|\<bar\>>
    b|)>,
  </equation*>

  where <math|A> is a positive definite Hermitian matrix and <math|b> a
  complex vector. Notice that <math|b> and <math|z> are now vectors,
  <math|<wide|b|\<bar\>>> or <math|<wide|z|\<bar\>>> means more than
  <math|b<rsup|\<ast\>>> and <math|z<rsup|\<ast\>>>, but including transpose
  <\footnote>
    For a complex vector <math|z>, <math|<wide|z|\<bar\>>\<assign\><around*|(|z<rsup|\<ast\>>|)><rsup|t>>.
  </footnote>. For this reason, we write <math|<wide|z|\<bar\>> b> instead of
  <math|b <wide|z|\<bar\>>> which is meaningless. In addition,
  <math|\<mathd\>z\<mathd\><wide|z|\<bar\>>> means
  <math|\<mathd\>z<rsup|1>\<wedge\>\<mathd\><wide|z<rsup|1>|\<bar\>>\<wedge\>\<cdots\>\<wedge\>\<mathd\>z<rsup|n>\<wedge\>\<mathd\><wide|z<rsup|n>|\<bar\>>>.

  Following the same strategy used for real Gaussian integral, we first
  diagonalize <math|A> as <math|A=U D <wide|U|\<bar\>>> with <math|U> unitary
  and <math|D> diagonal. Defining the new coordinate
  <math|w\<assign\><wide|U|\<bar\>> z>, we are to change the coordinates from
  <math|z> to <math|w>.

  First, we have to declare how <math|\<mathd\>z\<mathd\><wide|z|\<bar\>>>
  changes with coordinates. <with|color|red|Since that <math|z=U w> and that
  <math|\<mathd\>z> changes algebrically, we can employ the result in real
  forms, as <math|\<mathd\>z=det<around*|(|U|)> \<mathd\>w>.> The same,
  <math|\<mathd\><wide|z|\<bar\>>=det<around*|(|<wide|U|\<bar\>>|)>
  \<mathd\><wide|w|\<bar\>>>. So,

  <\align>
    <tformat|<table|<row|<cell|>|<cell|\<mathd\>z\<mathd\><wide|z|\<bar\>>>>|<row|<cell|<around*|{|\<mathd\>z,\<mathd\><wide|z|\<bar\>>=\<cdots\>|}>=>|<cell|det<around*|(|U|)>
    det<around*|(|<wide|U|\<bar\>>|)> \<mathd\>w\<mathd\><wide|w|\<bar\>>>>|<row|<cell|<around*|{|det<around*|(|A|)>
    det<around*|(|B|)>=det<around*|(|A B|)>|}>=>|<cell|det<around*|(|U
    <wide|U|\<bar\>>|)> \<mathd\>w\<mathd\><wide|w|\<bar\>>>>|<row|<cell|<around*|{|U
    <wide|U|\<bar\>>=1|}>=>|<cell|\<mathd\>w\<mathd\><wide|w|\<bar\>>.>>>>
  </align>

  Then, letting <math|b\<backassign\>U h>, we have <math|<wide|z|\<bar\>> A
  z=<wide|w|\<bar\>> <wide|U|\<bar\>> A U w=<wide|w|\<bar\>> D w>,
  <math|<wide|b|\<bar\>> z=<wide|h|\<bar\>> <wide|U|\<bar\>> U
  w=<wide|h|\<bar\>> w>, <math|b <wide|z|\<bar\>>=h <wide|w|\<bar\>>>.
  Altogether, we find

  <\equation*>
    <big|int><rsub|\<bbb-C\><rsup|2n>>\<mathd\>z\<mathd\><wide|z|\<bar\>>
    exp<around*|(|-<wide|z|\<bar\>> A \ z+<wide|b|\<bar\>> z+b
    <wide|z|\<bar\>>|)>=<big|int><rsub|\<bbb-C\><rsup|2n>>\<mathd\>w\<mathd\><wide|w|\<bar\>>
    exp<around*|(|-<wide|w|\<bar\>> D \ w+<wide|h|\<bar\>> w+h
    <wide|w|\<bar\>>|)>.
  </equation*>

  Now, we can separate each dimension and compute for each dimension
  individually, as

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|\<bbb-C\><rsup|2n>>\<mathd\>z\<mathd\><wide|z|\<bar\>>
    exp<around*|(|-<wide|z|\<bar\>> A \ z+<wide|b|\<bar\>> z+b
    <wide|z|\<bar\>>|)>>>|<row|<cell|<around*|{|<text|<math|separate
    dimensions>>|}>=>|<cell|<big|prod><rsub|\<alpha\>=1><rsup|n><around*|[|<big|int><rsub|\<bbb-C\><rsup|2>>\<mathd\>w<rsup|\<alpha\>>\<mathd\><wide|w<rsup|\<alpha\>>|\<bar\>>exp<around*|(|-<wide|w<rsup|\<alpha\>>|\<bar\>>
    D<rsub|\<alpha\>\<alpha\>>w<rsup|\<alpha\>>+<wide|h<rsub|\<alpha\>>|\<bar\>>
    w<rsup|\<alpha\>>+h<rsub|\<alpha\>> <wide|w<rsup|\<alpha\>>|\<bar\>>|)>|]>>>|<row|<cell|<around*|{|<text|1-dimensional
    result>|}>=>|<cell|<big|prod><rsub|\<alpha\>=1><rsup|n><around*|[|<frac|-2\<mathpi\>
    \<mathi\>|D<rsub|\<alpha\>\<alpha\>>>
    exp<around*|(|<frac|h<rsub|\<alpha\>>
    <wide|h<rsub|\<alpha\>>|\<bar\>>|D<rsub|\<alpha\>\<alpha\>>>|)>|]>>>|<row|<cell|=>|<cell|<frac|<around*|(|-2\<mathpi\>
    \<mathi\>|)><rsup|n>|<big|prod><rsub|\<alpha\>=1><rsup|n>D<rsub|\<alpha\>\<alpha\>>>
    exp<around*|(|<big|sum><rsub|\<alpha\>=1><rsup|n><frac|h<rsub|\<alpha\>>
    <wide|h<rsub|\<alpha\>>|\<bar\>>|D<rsub|\<alpha\>\<alpha\>>>|)>.>>>>
  </align>

  The final step is changing coordinates back to <math|z> from <math|w>. We
  have <math|D=<wide|U|\<bar\>> A U> and <math|h=<wide|U|\<bar\>> b>. We have

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<big|prod><rsub|\<alpha\>=1><rsup|n>D<rsub|\<alpha\>\<alpha\>>>>|<row|<cell|=>|<cell|det<around*|(|D|)>>>|<row|<cell|<around*|{|D=\<cdots\>|}>=>|<cell|det<around*|(|<wide|U|\<bar\>>
    A U|)>>>|<row|<cell|=>|<cell|det<around*|(|<wide|U|\<bar\>>|)>
    det<around*|(|A|)> det<around*|(|U|)>>>|<row|<cell|=>|<cell|det<around*|(|U
    <wide|U|\<bar\>>|)> det<around*|(|A|)>>>|<row|<cell|<around*|{|U
    <wide|U|\<bar\>>=1|}>=>|<cell|det<around*|(|A|)>.>>>>
  </align>

  And since

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<around*|(|<wide|U|\<bar\>> A
    U|)><rsup|-1>>>|<row|<cell|<around*|{|property of
    inverse|}>=>|<cell|U<rsup|-1> A<rsup|-1>
    <around*|(|<wide|U|\<bar\>>|)><rsup|-1>>>|<row|<cell|<around*|{|U
    <wide|U|\<bar\>>=1|}>=>|<cell|<wide|U|\<bar\>> A<rsup|-1> U,>>>>
  </align>

  \ we have

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<big|sum><rsub|\<alpha\>=1><rsup|n><frac|h<rsub|\<alpha\>>
    <wide|h<rsub|\<alpha\>>|\<bar\>>|D<rsub|\<alpha\>\<alpha\>>>>>|<row|<cell|=>|<cell|<wide|h|\<bar\>>
    D<rsup|-1> h>>|<row|<cell|<around*|{|previous
    conclusion|}>=>|<cell|<wide|b|\<bar\>> U <around*|(|<wide|U|\<bar\>> A
    U|)><rsup|-1> <wide|U|\<bar\>> b>>|<row|<cell|<around*|{|U
    <wide|U|\<bar\>>=1|}>=>|<cell|<wide|b|\<bar\>> U
    <wide|U|\<bar\>>A<rsup|-1> U <wide|U|\<bar\>>
    b>>|<row|<cell|=>|<cell|<wide|b|\<bar\>> A<rsup|-1> b.>>>>
  </align>

  Altogether, we find

  <\equation>
    <big|int><rsub|\<bbb-C\><rsup|2n>>\<mathd\>z\<mathd\><wide|z|\<bar\>>
    exp<around*|(|-<wide|z|\<bar\>> A \ z+<wide|b|\<bar\>> z+b
    <wide|z|\<bar\>>|)>=<frac|<around*|(|-2\<mathpi\>
    \<mathi\>|)><rsup|n>|det<around*|(|A|)>> exp<around*|(|<wide|b|\<bar\>>
    A<rsup|-1> b|)>,
  </equation>

  or, since <math|1/det<around*|(|A|)>=det<around*|(|A<rsup|-1>|)>>,

  <\equation>
    <big|int><rsub|\<bbb-C\><rsup|2n>>\<mathd\>z\<mathd\><wide|z|\<bar\>>
    exp<around*|(|-<wide|z|\<bar\>> A \ z+<wide|b|\<bar\>> z+b
    <wide|z|\<bar\>>|)>=<around*|(|-2\<mathpi\> \<mathi\>|)><rsup|n>
    det<around*|(|A<rsup|-1>|)> exp<around*|(|<wide|b|\<bar\>> A<rsup|-1>
    b|)>.
  </equation>

  Go back to the first problem: what is the measurement
  <math|\<mu\><around*|(|\|\<varphi\> \<rangle\>|)>>? Now, we can say, given
  a complete orthogonal basis <math|\|x \<rangle\>>,
  <math|\<mu\><around*|(|\|\<varphi\> \<rangle\>|)>=<big|prod><rsub|x>\<mathd\><around*|[|\<varphi\><around*|(|x|)>|]>\<mathd\><around*|[|<wide|\<varphi\><around*|(|x|)>|\<bar\>>|]>>
  which is invariant when changing from <math|\|x \<rangle\>> to another
  complete orthogonal basis. Indeed, when <math|\|x
  \<rangle\>\<rightarrow\>\|k \<rangle\>> where <math|\|k \<rangle\>> is
  another complete orthogonal basis, we have
  <math|<big|prod><rsub|x>\<mathd\><around*|[|\<varphi\><around*|(|x|)>|]>\<mathd\><around*|[|<wide|\<varphi\><around*|(|x|)>|\<bar\>>|]>=det<around*|(|U|)>
  det<around*|(|<wide|U|\<bar\>>|)> <big|prod><rsub|k>\<mathd\><around*|[|\<varphi\><around*|(|k|)>|]>\<mathd\><around*|[|<wide|\<varphi\><around*|(|k|)>|\<bar\>>|]>=<big|prod><rsub|k>\<mathd\><around*|[|\<varphi\><around*|(|k|)>|]>\<mathd\><around*|[|<wide|\<varphi\><around*|(|k|)>|\<bar\>>|]>>,
  where <math|U<rsub|x,k>\<assign\>\<langle\>x \|k \<rangle\>> is unitary.

  <subsection|Reducing to Real Gaussian Integral (TODO)><label|section:
  Reducing to Real Gaussian Integral>

  To reduce to real Gaussian integral, say multi-dimensional version, we
  simply let the <math|A> and <math|b> completely real. Then, by changing
  coordinates from <math|\<mathd\>z\<mathd\><wide|z|\<bar\>>> to
  <math|\<mathd\>x\<mathd\>y>, where <math|z=x+\<mathi\> y>, we will arrive
  at two individual real Gaussian integrals. So, the result is a
  multiplication of two real Gaussian integral. It is for this reason, it is
  the sqrt of <math|det<around*|(|A|)>> in real Gaussian integral.

  Explicitly, TODO

  <appendix|Berezin Integral (TODO)>

  C.f. <hlink|wikipedia|https://en.wikipedia.org/wiki/Berezin_integral#Useful_formulas>.

  We have,

  <\equation>
    <around*|(|-2\<mathpi\> \<mathi\>|)><rsup|n>
    exp<around*|(|<wide|b|\<bar\>> A<rsup|-1> b|)>=<big|int>\<mathd\>z
    \<mathd\><wide|z|\<bar\>> \<mathd\>\<theta\>\<mathd\>\<eta\>
    exp<around*|(|-<wide|z|\<bar\>> A \ z+<wide|b|\<bar\>> z+b
    <wide|z|\<bar\>>-\<theta\><rsup|t> A \<eta\>|)>
  </equation>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|1.3|3>>
    <associate|auto-5|<tuple|1.4|4>>
    <associate|auto-6|<tuple|A|4>>
    <associate|footnote-1|<tuple|1|3>>
    <associate|footnr-1|<tuple|1|3>>
    <associate|section: Reducing to Real Gaussian Integral|<tuple|1.4|4>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Generalized
      Gaussian Integral> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Representation Theory May
      Generalize Gaussian Integral <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>One-Dimensional Complex
      Gaussian Integral <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Multi-Dimensional Complex
      Gaussian Integral <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Reducing to Real Gaussian
      Integral <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendix
      A<space|2spc>Berezin Integral> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>