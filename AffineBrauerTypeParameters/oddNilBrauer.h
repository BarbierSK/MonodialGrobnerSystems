* NON-AFFINE PARAMETERS
#define PCROSS "1"
id eps = -(2*delta+1);

* delta=-1: eps=1 / delta=0: eps=-1
id delta^2=-lambda*mu*delta;
* id delta = 0;
* id delta = -lambda*mu;

id d=0;
id e=0;
id f=0;

id lambda=1;
id lambda^n?neg_=(1)^(n);

id zeta=1;
id zetaBIS=eps;

id a=0;
id aBIS=0;

id kappa=0;
id mu=1;
id mu^n?neg_=1;
id nu=0;

id kappaBIS=0;
id muBIS=1;
id muBIS^n?neg_=1;
id nuBIS=0;


* AFFINE PARAMETERS
#define PDOT "1"

id alpha=-1;
id b=-1;
id c=-eps;
id b1=0;
id b2=0;
id c1=0;
id c2=0;

id sigma=-eps;
id tau=0;

id alphaBIS=-1;
id bBIS=-1;
id cBIS=-1;
id b1BIS=0;
id b2BIS=0;
id c1BIS=0;
id c2BIS=0;

id sigmaBIS=-eps;
id tauBIS=0;

* for the parser:
id eps^n?neg_=(eps)^(-n);
id alpha^n?neg_=(-1)^(n);
id alphaBIS^n?neg_=(-1)^(n);
* id c^n?neg_=(-eps)^(n)*(mu)^(-n);
id sigma^n?neg_=(-eps)^(n);
id sigmaBIS^n?neg_=(-eps)^(n);


