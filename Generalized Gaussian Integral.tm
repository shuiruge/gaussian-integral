<TeXmacs|2.1>

<style|generic>

<\body>
  <chapter|Generalized Gaussian Integral>

  <section|Basic Idea>

  <subsection|Dirac's Representation Theory May Generalize Gaussian Integral>

  Originally, the multi-dimensional Gaussian integral is, for any positive
  definite real symmetric matrix <math|A> and vector <math|b>,

  <\equation>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<varphi\>
    exp<around*|(|-<frac|1|2>\<varphi\><rsup|t> A \<varphi\>+b<rsup|t>
    \<varphi\>|)>=<sqrt|<frac|<around*|(|2\<mathpi\>|)><rsup|n>|det<around*|(|A|)>>>exp<around*|(|<frac|1|2>b<rsup|t>
    A<rsup|-1> b|)>,
  </equation>

  where <math|\<varphi\><rsup|t>> denotes the transpose of vector
  <math|\<varphi\>>. With <math|det<around*|(|A|)>=exp<around*|(|tr
  ln<around*|(|A|)>|)>>, we can obsorb the
  <math|<around*|(|det<around*|(|A|)>|)><rsup|-1/2>> factor into the
  exponential, as

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

  This motives us to seek for a generalized version of Gaussian integral, so
  that all these formulae are nothing but viewing the same result from
  different perspectives.

  An educated guess is using Dirac's representation theory. For instance,
  letting <math|A> an Hermitian operator and <math|\|b \<rangle\>> a general
  ket, we may have

  \;

  <\equation>
    ln<around*|[|<big|int>\<mathd\>\|\<varphi\> \<rangle\>
    exp<around*|(|-\<langle\> \<varphi\>\|A\|\<varphi\> \<rangle\>+\<langle\>
    b\|\<varphi\> \<rangle\>|)>|]>=<frac|1|2>\<langle\> b\|A<rsup|-1>\|b
    \<rangle\>-<frac|1|2>tr ln<around*|(|A|)>+Const.
  </equation>

  With this expression, by inserting <math|<big|sum><rsub|\<alpha\>>\|\<alpha\>
  \<rangle\>\<langle\> \<alpha\>\|=1>, we recover the multi-dimensional
  version; and by inserting <math|<big|int><rsub|V>\<mathd\>x\|
  x\<rangle\>\<langle\>x \|=1>, we recover the functional version. This
  provides an abstract expression by using Dirac's bracket notation.

  The problems left are:

  <\itemize>
    <item>How is the measurement <math|\<mathd\>\|\<varphi\> \<rangle\>>
    defined?

    <item>Is <math|tr ln<around*|(|A|)>> independent of representation?
  </itemize>

  Now, we are to deal with the first problem. Recall that bracket notation
  deals with wave-function of quantum state, which is complex. So, <math|\|
  \<varphi\>\<rangle\>> is intrinsically complex. This hints us that we shall
  consider the Gaussian integral on complex plane.

  <section|Complex Gaussian Integral>

  <subsection|One-Dimensional Complex Gaussian Integral>

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
  complex vector. It must be noted that <math|b> and <math|z> are now
  vectors, <math|<wide|b|\<bar\>>> or <math|<wide|z|\<bar\>>> means more than
  <math|b<rsup|\<ast\>>> and <math|z<rsup|\<ast\>>>, but including transpose
  <\footnote>
    For a complex vector <math|z>, <math|<wide|z|\<bar\>>\<assign\><around*|(|z<rsup|\<ast\>>|)><rsup|t>>.
  </footnote>. For this reason, we write <math|<wide|z|\<bar\>> b> instead of
  <math|b <wide|z|\<bar\>>>. In addition,
  <math|\<mathd\>z\<mathd\><wide|z|\<bar\>>> means
  <math|\<mathd\>z<rsup|1>\<wedge\>\<cdots\>\<wedge\>\<mathd\>z<rsup|n>\<wedge\>\<mathd\><wide|z|\<bar\>><rsup|1>\<wedge\>\<cdots\>\<wedge\>\<mathd\><wide|z|\<bar\>><rsup|n>>.

  Following the same strategy used for real Gaussian integral, we first
  diagonalize <math|A> as <math|A=U D <wide|U|\<bar\>>> with <math|U> unitary
  and <math|D> diagonal. Defining the new coordinate
  <math|w\<assign\><wide|U|\<bar\>> z>, we are to change the coordinates from
  <math|z> to <math|w>.

  First, we have to declare how <math|\<mathd\>z\<mathd\><wide|z|\<bar\>>>
  changes with coordinates. Recall the case in real space, we have
  <math|\<mathd\>x=det<around*|(|\<partial\>x/\<partial\>y|)> \<mathd\>y>.
  The derivation of this formula is purely algebric, thus can be directly
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

  Then, defining <math|h> by <math|b\<backassign\>U h>, we have
  <math|<wide|z|\<bar\>> A z=<wide|w|\<bar\>> <wide|U|\<bar\>> A U
  w=<wide|w|\<bar\>> D w>, <math|<wide|b|\<bar\>> z=<wide|h|\<bar\>>
  <wide|U|\<bar\>> U w=<wide|h|\<bar\>> w>, <math|b <wide|z|\<bar\>>=h
  <wide|w|\<bar\>>>. Altogether, we find

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
    <wide|z|\<bar\>>|)>>>|<row|<cell|=>|<cell|<big|int><rsub|\<bbb-C\><rsup|2n>>\<mathd\>w\<mathd\><wide|w|\<bar\>>
    <big|prod><rsub|\<alpha\>=1><rsup|n>exp<around*|(|-<wide|w|\<bar\>><rsup|\<alpha\>>
    D<rsub|\<alpha\>\<alpha\>>w<rsup|\<alpha\>>+<wide|h|\<bar\>><rsup|\<alpha\>>
    w<rsup|\<alpha\>>+h<rsub|\<alpha\>> <wide|w|\<bar\>><rsup|\<alpha\>>|)>>>|<row|<cell|<around*|{|<text|move
    <math|\<mathd\>w<rsup|\<alpha\>>> to <math|\<mathd\><wide|w|\<bar\>><rsup|\<alpha\>>>>|}>=>|<cell|<around*|(|-1|)><rsup|n
    <around*|(|n-1|)>/2> <big|prod><rsub|\<alpha\>=1><rsup|n><around*|[|<big|int><rsub|\<bbb-C\><rsup|2>>\<mathd\>w<rsup|\<alpha\>>\<mathd\><wide|w|\<bar\>><rsup|\<alpha\>>exp<around*|(|-<wide|w|\<bar\>><rsup|\<alpha\>>
    D<rsub|\<alpha\>\<alpha\>>w<rsup|\<alpha\>>+<wide|h|\<bar\>><rsup|\<alpha\>>
    w<rsup|\<alpha\>>+h<rsub|\<alpha\>> <wide|w|\<bar\>><rsup|\<alpha\>>|)>|]>>>|<row|<cell|<around*|{|<text|1-dimensional
    result>|}>=>|<cell|<around*|(|-1|)><rsup|n <around*|(|n-1|)>/2>
    <big|prod><rsub|\<alpha\>=1><rsup|n><around*|[|<frac|-2\<mathpi\>
    \<mathi\>|D<rsub|\<alpha\>\<alpha\>>>
    exp<around*|(|<frac|h<rsub|\<alpha\>>
    <wide|h|\<bar\>><rsub|\<alpha\>>|D<rsub|\<alpha\>\<alpha\>>>|)>|]>>>|<row|<cell|=>|<cell|<frac|\<mathi\><rsup|n
    <around*|(|n+2|)>> <around*|(|2\<mathpi\>|)><rsup|n>|<big|prod><rsub|\<alpha\>=1><rsup|n>D<rsub|\<alpha\>\<alpha\>>>
    exp<around*|(|<big|sum><rsub|\<alpha\>=1><rsup|n><frac|h<rsub|\<alpha\>>
    <wide|h|\<bar\>><rsub|\<alpha\>>|D<rsub|\<alpha\>\<alpha\>>>|)>.>>>>
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
    <wide|h|\<bar\>><rsub|\<alpha\>>|D<rsub|\<alpha\>\<alpha\>>>>>|<row|<cell|=>|<cell|<wide|h|\<bar\>>
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
    <wide|z|\<bar\>>|)>=<frac|\<mathi\><rsup|n
    <around*|(|n+2|)>><around*|(|2\<mathpi\>|)><rsup|n>|det<around*|(|A|)>>
    exp<around*|(|<wide|b|\<bar\>> A<rsup|-1> b|)>,
  </equation>

  or, since <math|1/det<around*|(|A|)>=det<around*|(|A<rsup|-1>|)>>,

  <\equation>
    <big|int><rsub|\<bbb-C\><rsup|2n>>\<mathd\>z\<mathd\><wide|z|\<bar\>>
    exp<around*|(|-<wide|z|\<bar\>> A \ z+<wide|b|\<bar\>> z+b
    <wide|z|\<bar\>>|)>=\<mathi\><rsup|n <around*|(|n+2|)>><around*|(|2\<mathpi\>|)><rsup|n>
    det<around*|(|A<rsup|-1>|)> exp<around*|(|<wide|b|\<bar\>> A<rsup|-1>
    b|)>.
  </equation>

  <subsection|Reducing to Real Gaussian Integral (TODO)><label|section:
  Reducing to Real Gaussian Integral>

  To reduce to real Gaussian integral, say multi-dimensional version, we
  simply let the <math|A> and <math|b> completely real. Then, by changing
  coordinates from <math|\<mathd\>z\<mathd\><wide|z|\<bar\>>> to
  <math|\<mathd\>x\<mathd\>y>, where <math|z=x+\<mathi\> y>, we will arrive
  at two individual real Gaussian integrals. So, the result is a
  multiplication of two real Gaussian integral. It is for this reason, it is
  the sqrt of <math|det<around*|(|A|)>> in real Gaussian integral.

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
    exp<around*|(|-y<rsup|t> A y|)>>>|<row|<cell|<around*|{|previous
    result|}>=>|<cell|<frac|\<mathi\><rsup|n
    <around*|(|n+2|)>><around*|(|2\<mathpi\>|)><rsup|n>|det<around*|(|A|)>>
    exp<around*|(|<wide|b|\<bar\>> A<rsup|-1> b|)>.>>>>
  </align>

  So, we have

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

  Plugging back, we find

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x exp<around*|(|-x<rsup|t> A
    x+2 b<rsup|t> x|)>=<sqrt|<frac|\<mathpi\><rsup|n>|det<around*|(|A|)>>>
    exp<around*|(|<wide|b|\<bar\>> A<rsup|-1> b|)>,
  </equation*>

  which is exactly the formula of real multi-dimensional Gaussian integral.

  <subsection|Measurement is Representation Independent>

  Go back to the first problem: what is the measurement
  <math|\<mathd\>\|\<varphi\> \<rangle\>>? Now, we can answer this problem:
  we should use <math|\<mathd\>\|\<varphi\>
  \<rangle\>\<mathd\>\<langle\>\<varphi\> \|> instead of
  <math|\<mathd\>\|\<varphi\> \<rangle\>>. Explicitly, given a complete
  orthogonal basis <math|\|x \<rangle\>>, <math|\<mathd\>\|\<varphi\>
  \<rangle\>\<mathd\>\<langle\>\<varphi\>
  \|\<assign\><big|prod><rsub|x>\<mathd\><around*|[|\<langle\>x \|\<varphi\>
  \<rangle\>|]>\<mathd\><around*|[|\<langle\>\<varphi\> \|x \<rangle\>|]>>.
  Remark that <math|\<mathd\>\|\<varphi\>
  \<rangle\>\<mathd\>\<langle\>\<varphi\> \|> is invariant when changing from
  <math|\|x \<rangle\>> to another complete orthogonal basis. Indeed, when
  <math|\|x \<rangle\>\<rightarrow\>\|k \<rangle\>> where <math|\|k
  \<rangle\>> is another complete orthogonal basis, we have
  <math|<big|prod><rsub|x>\<mathd\><around*|[|\<langle\>x \|\<varphi\>
  \<rangle\>|]>\<mathd\><around*|[|\<langle\>\<varphi\> \|x
  \<rangle\>|]>=det<around*|(|U|)> det<around*|(|<wide|U|\<bar\>>|)>
  <big|prod><rsub|k>\<mathd\><around*|[|\<langle\>k \|\<varphi\>
  \<rangle\>|]>\<mathd\><around*|[|\<langle\>\<varphi\> \|k
  \<rangle\>|]>=<big|prod><rsub|k>\<mathd\><around*|[|\<langle\>k
  \|\<varphi\> \<rangle\>|]>\<mathd\><around*|[|\<langle\>\<varphi\> \|k
  \<rangle\>|]>>, where <math|U<rsub|x,k>\<assign\>\<langle\>x \|k
  \<rangle\>> is unitary.

  <section|Trace>

  <subsection|Trace in Continuous Representation>

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
    \|A\|\<alpha\> \<rangle\>>>|<row|<cell|=>|<cell|<big|sum><rsub|\<alpha\>><big|int>\<mathd\>x<big|int>\<mathd\>x<rprime|'>
    \<langle\> \<alpha\>\| x\<rangle\>\<langle\>x \|A\|x<rprime|'>
    \<rangle\>\<langle\>x<rprime|'> \|\<alpha\>
    \<rangle\>>>|<row|<cell|<around*|{|<big|sum><rsub|\<alpha\>>\|\<alpha\>
    \<rangle\>\<langle\>\<alpha\> \|=1|}>=>|<cell|<big|int>\<mathd\>x<big|int>\<mathd\>x<rprime|'>
    \<langle\>x \|A\|x<rprime|'> \<rangle\><around*|(|<big|sum><rsub|\<alpha\>>\<langle\>x<rprime|'>
    \|\<alpha\> \<rangle\>\<langle\> \<alpha\>\|
    x\<rangle\>|)>>>|<row|<cell|=>|<cell|<big|int>\<mathd\>x<big|int>\<mathd\>x<rprime|'>
    \<langle\>x \|A\|x<rprime|'> \<rangle\>
    \<delta\><around*|(|x-x<rprime|'>|)>>>|<row|<cell|=>|<cell|<big|int>\<mathd\>x
    \<langle\>x \|A\|x \<rangle\>.>>>>
  </align>

  So, in continuous representation like <math|\|x \<rangle\>>, the
  <math|tr<around*|(|A|)>> is defined as <math|<big|int>\<mathd\>x
  \<langle\>x \|A\|x \<rangle\>>.

  <subsection|Trace of Logorithm is Representation Independent>

  Now, we have solved the first problem and come to the second. That is, how
  <math|tr ln <around*|(|A|)>> changes with representation.

  But, first of all, we have to check what happens when changing
  representation. We start at a known formula

  <\equation*>
    \<mathe\><rsup|U X <wide|U|\<bar\>>>=U \<mathe\><rsup|X>
    <wide|U|\<bar\>>,
  </equation*>

  where <math|U> is a unitary operator and <math|X> is an arbitrary operator.
  It can be proven by simply noticing <math|U <wide|U|\<bar\>>=1>. Taking
  logorithm on both sides, we find

  <\equation*>
    U X <wide|U|\<bar\>>=ln<around*|(|U \<mathe\><rsup|X>
    <wide|U|\<bar\>>|)>.
  </equation*>

  And letting <math|A\<assign\>\<mathe\><rsup|X>>, we arrive at

  <\equation>
    U ln<around*|(|A|)> <wide|U|\<bar\>>=ln <around*|(|U A
    <wide|U|\<bar\>>|)>.
  </equation>

  When changing representation from <math|\|\<alpha\> \<rangle\>> to
  <math|\|\<beta\> \<rangle\>>, unitary operator <math|U> represents
  <math|\<langle\>\<alpha\> \|\<beta\> \<rangle\>>. And this formula states
  that

  <\equation*>
    <big|sum><rsub|\<beta\>><big|sum><rsub|\<beta\><rprime|'>>\<langle\>
    \<alpha\>\|\<beta\> \<rangle\> ln<around*|(|\<langle\>\<beta\>
    \|A\|\<beta\><rprime|'> \<rangle\>|)> \<langle\>\<beta\><rprime|'>
    \|\<alpha\><rprime|'> \<rangle\>=ln<around*|(|<big|sum><rsub|\<beta\>><big|sum><rsub|\<beta\><rprime|'>>\<langle\>
    \<alpha\>\|\<beta\> \<rangle\> \<langle\>\<beta\> \|A\|\<beta\><rprime|'>
    \<rangle\> \<langle\>\<beta\><rprime|'> \|\<alpha\><rprime|'>
    \<rangle\>|)>.
  </equation*>

  Notice that <math|<big|sum><rsub|\<beta\>><big|sum><rsub|\<beta\><rprime|'>>\<langle\>
  \<alpha\>\|\<beta\> \<rangle\> \<langle\>\<beta\> \|A\|\<beta\><rprime|'>
  \<rangle\> \<langle\>\<beta\><rprime|'> \|\<alpha\><rprime|'>
  \<rangle\>=\<langle\>\<alpha\> \|A\|\<alpha\><rprime|'>\<rangle\>>, we then
  have

  <\equation*>
    <big|sum><rsub|\<beta\>><big|sum><rsub|\<beta\><rprime|'>>\<langle\>
    \<alpha\>\|\<beta\> \<rangle\> ln<around*|(|\<langle\>\<beta\>
    \|A\|\<beta\><rprime|'> \<rangle\>|)> \<langle\>\<beta\><rprime|'>
    \|\<alpha\><rprime|'> \<rangle\>=ln<around*|(|\<langle\>\<alpha\>
    \|A\|\<alpha\><rprime|'>\<rangle\>|)>.
  </equation*>

  Now, we take trace on both sides. The right hand side comes to be the
  <math|tr ln<around*|(|A|)>> under the <math|\|\<alpha\> \<rangle\>>
  representation. While the left hand side comes to be

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<big|sum><rsub|\<alpha\>><big|sum><rsub|\<beta\>><big|sum><rsub|\<beta\><rprime|'>>\<langle\>
    \<alpha\>\|\<beta\> \<rangle\> ln<around*|(|\<langle\>\<beta\>
    \|A\|\<beta\><rprime|'> \<rangle\>|)> \<langle\>\<beta\><rprime|'>
    \|\<alpha\>\<rangle\>>>|<row|<cell|=>|<cell|<big|sum><rsub|\<beta\>><big|sum><rsub|\<beta\><rprime|'>>
    ln<around*|(|\<langle\>\<beta\> \|A\|\<beta\><rprime|'> \<rangle\>|)>
    <around*|(|<big|sum><rsub|\<alpha\>>\<langle\>\<beta\><rprime|'>
    \|\<alpha\><rprime|'> \<rangle\>\<langle\> \<alpha\>\|\<beta\>
    \<rangle\>|)>>>|<row|<cell|<around*|{|<big|sum><rsub|\<alpha\>>\|\<alpha\>
    \<rangle\>\<langle\>\<alpha\> \|=1|}>=>|<cell|<big|sum><rsub|\<beta\>><big|sum><rsub|\<beta\><rprime|'>>
    ln<around*|(|\<langle\>\<beta\> \|A\|\<beta\><rprime|'> \<rangle\>|)>
    \<langle\>\<beta\><rprime|'> \|\<beta\>
    \<rangle\>>>|<row|<cell|=>|<cell|<big|sum><rsub|\<beta\>>ln<around*|(|\<langle\>\<beta\>
    \|A\|\<beta\> \<rangle\>|)>,>>>>
  </align>

  which is the <math|tr ln<around*|(|A|)>> under the <math|\|\<beta\>
  \<rangle\>> representation. So, <math|tr ln<around*|(|A|)>> in different
  representations are equal.

  Now, we can answer the second problem: <math|tr ln<around*|(|A|)>> is
  independent of representation.

  <section|Gaussian Integral in Dirac's Representation Theory>

  Putting all discussions in this chapter together, we arrive at a Gaussian
  integral in Dirac's representation theory, as

  <\equation>
    <big|int>\<mathd\>\|\<varphi\> \<rangle\>\<mathd\>\<langle\>\<varphi\> \|
    exp<around*|(|-\<langle\>\<varphi\> \|A\|\<varphi\>
    \<rangle\>+\<langle\>b \|\<varphi\> \<rangle\>+\<langle\>\<varphi\> \|b
    \<rangle\>|)>=exp<around*|(|\<langle\>b \|A<rsup|-1>\|b \<rangle\>-tr
    ln<around*|(|A|)>+Const|)>,
  </equation>

  where for any representation <math|\|x \<rangle\>>,
  <math|\<mathd\>\|\<varphi\> \<rangle\>\<mathd\>\<langle\>\<varphi\>
  \|=<big|prod><rsub|x>\<mathd\><around*|[|\<langle\>x \|\<varphi\>
  \<rangle\>|]>\<mathd\><around*|[|\<langle\>\<varphi\> \|x \<rangle\>|]>>.
  Remark that both <math|\<mathd\>\|\<varphi\> \<rangle\>\<langle\>\<varphi\>
  \|> and <math|tr ln<around*|(|A|)>> are independent of representation,
  which means keeping invariant when representation is changed.

  <appendix|Berezin Integral (TODO)>

  C.f. <hlink|wikipedia|https://en.wikipedia.org/wiki/Berezin_integral#Useful_formulas>.

  We have,

  <\equation>
    \<mathi\><rsup|n <around*|(|n+2|)>><around*|(|2\<mathpi\>|)><rsup|n>
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
    <associate|auto-10|<tuple|3.1|5>>
    <associate|auto-11|<tuple|3.2|5>>
    <associate|auto-12|<tuple|4|6>>
    <associate|auto-13|<tuple|A|6>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-3|<tuple|1.1|1>>
    <associate|auto-4|<tuple|2|2>>
    <associate|auto-5|<tuple|2.1|2>>
    <associate|auto-6|<tuple|2.2|3>>
    <associate|auto-7|<tuple|2.3|4>>
    <associate|auto-8|<tuple|2.4|5>>
    <associate|auto-9|<tuple|3|5>>
    <associate|footnote-1|<tuple|1|3>>
    <associate|footnr-1|<tuple|1|3>>
    <associate|section: Reducing to Real Gaussian Integral|<tuple|2.3|4>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|1<space|2spc>Generalized
      Gaussian Integral> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Basic
      Idea> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Dirac's Representation
      Theory May Generalize Gaussian Integral
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Complex
      Gaussian Integral> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>One-Dimensional Complex
      Gaussian Integral <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Multi-Dimensional Complex
      Gaussian Integral <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Reducing to Real Gaussian
      Integral (TODO) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|2.4<space|2spc>Measurement is
      Representation Independent <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Trace
      (TODO)> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Trace in Continuous
      Representation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Trace of Logorithm is
      Representation Independent <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Gaussian
      Integral in Dirac's Representation Theory>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Appendix
      A<space|2spc>Berezin Integral (TODO)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>