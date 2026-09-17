* A category of affine Brauer type in the formal parameters q and t: its non-affine part is the
* q-periplectic category, and at q=-1, t=-1 it is the affine VW supercategory.

* Dotted bubbles are zero, as in affineVW.h. Without that the branching DownwardKinkDotSlide
* leaves a residue on bubblewithdot and neither solution below survives.

* non-affine parameters
#include BrauerTypeParameters/qperiplectic.h

* affine parameters
#define PDOT "0"

* Two solutions, images of one another under b1 <-> b2, c1 <-> c2 and sigma <-> sigmaBIS.
* They are the transport of the solutions found in the old crossing convention along
* cross -> -cross-(q-q^-1); on the dot-through-crossing constants that transport reads
*   alpha' = alpha, b' = -b, b1' = -b1-(q-q^-1), b2' = -b2+alpha*(q-q^-1), c1234' = -c1234,
* with sigma and tau untouched, the cup and cap rules containing no crossing.

* solution 1: b1 non-zero, b2 zero
id alpha=1;
id alpha^n?neg_=(1)^(n);
id alphaBIS=1;
id alphaBIS^n?neg_=(1)^(n);
id b=-t/q;
id b^n?neg_=(-1)^(n)*(t)^(n)*(q)^(-n);
id b1=-q+1/q;
id b1^n?neg_=(-q+1/q)^(n);
id b1BIS=q-1/q;
id b1BIS^n?neg_=(q-1/q)^(n);
id b2=0;
id b2BIS=0;
id bBIS=t/q;
id bBIS^n?neg_=(t)^(n)*(q)^(-n);
id c=-t/q^3;
id c^n?neg_=(-1)^(n)*(t)^(n)*(q)^(-3*n);
id c1=0;
id c1BIS=0;
id c2=(1-q^2)/q^3;
id c2^n?neg_=(q)^(-3*n)*(1-q^2)^(n);
id c2BIS=-q+1/q;
id c2BIS^n?neg_=(-q+1/q)^(n);
id cBIS=-t/q;
id cBIS^n?neg_=(-1)^(n)*(t)^(n)*(q)^(-n);
id sigma=q^(-2);
id sigma^n?neg_=(q)^(-2*n);
id sigmaBIS=q^2;
id sigmaBIS^n?neg_=(q)^(2*n);
id tau=-t/q^2;
id tau^n?neg_=(-1)^(n)*(t)^(n)*(q)^(-2*n);
id tauBIS = t;

* solution 2: b2 non-zero and b1 zero
* id alpha=1;
* id alpha^n?neg_=(1)^(n);
* id alphaBIS=1;
* id alphaBIS^n?neg_=(1)^(n);
* id b=-q*t;
* id b^n?neg_=(-1)^(n)*(q)^(n)*(t)^(n);
* id b1=0;
* id b1BIS=0;
* id b2=q-1/q;
* id b2^n?neg_=(q-1/q)^(n);
* id b2BIS=-q+1/q;
* id b2BIS^n?neg_=(-q+1/q)^(n);
* id bBIS=q*t;
* id bBIS^n?neg_=(q)^(n)*(t)^(n);
* id c=-q*t;
* id c^n?neg_=(-1)^(n)*(q)^(n)*(t)^(n);
* id c1=q-1/q;
* id c1^n?neg_=(q-1/q)^(n);
* id c1BIS=(q^2-1)/q^3;
* id c1BIS^n?neg_=(q)^(-3*n)*(q^2-1)^(n);
* id c2=0;
* id c2BIS=0;
* id cBIS=-t/q;
* id cBIS^n?neg_=(-1)^(n)*(t)^(n)*(q)^(-n);
* id sigma=q^2;
* id sigma^n?neg_=(q)^(2*n);
* id sigmaBIS=q^(-2);
* id sigmaBIS^n?neg_=(q)^(-2*n);
* id tau=-q^2*t;
* id tau^n?neg_=(-1)^(n)*(t)^(n)*(q)^(2*n);
* id tauBIS = t;

* bubbles: a closed component carrying any number of dots is zero
id bubblewithdot(?a)=0;
id bubblewithtwodots(?a)=0;
id bubblewiththreedots(?a)=0;
id bubblewithfourdots(?a)=0;
id bubblewithfivedots(?a)=0;
