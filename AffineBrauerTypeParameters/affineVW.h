* non-affine parameters
#define PCROSS "0"
#define PCUPCAP "1"

id d=1;
id e=0;
id f=0;

id lambda=1;
id lambda^n?neg_=(1)^(n);

id zeta=1;

id a=1;
id aBIS=-1;

id kappa=0;
id mu=1;
id mu^n?neg_=1;
id nu=0;

id kappaBIS=0;
id muBIS=1;
id muBIS^n?neg_=1;
id nuBIS=0;

id delta=0;


* affine parameters
#define PDOT "0"

id alpha=1;
id alpha^n?neg_=1;
id b=-1;
id b1=0;
id b2=0;
id c=-1;
id c1=0;
id c2=0;

id alphaBIS=1;
id alphaBIS^n?neg_=1;
id bBIS=1;
id b1BIS=0;
id b2BIS=0;
id cBIS=-1;
id c1BIS=0;
id c2BIS=0;

id sigma=1;
id sigma^n?neg_=1;
id tau=1;

id sigmaBIS=1;
id sigmaBIS^n?neg_=1;
id tauBIS=-1;

* bubbles: a closed component carrying any number of dots is zero
id bubblewithdot(?a)=0;
id bubblewithtwodots(?a)=0;
id bubblewiththreedots(?a)=0;
id bubblewithfourdots(?a)=0;
id bubblewithfivedots(?a)=0;
