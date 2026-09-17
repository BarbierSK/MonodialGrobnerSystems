*** The BMW category, or quantum Brauer category, or Kauffman category
* two free parameters t and z, compared to ref, crossing is negative crossing
* Savage, Alistair, and Ben Webster. 2026. “Bubbles in the Affine Brauer and Kauffman Categories.” Journal of the Australian Mathematical Society 120 (2): 243–86. https://doi.org/10.1017/S144678872510116X.


#define PCROSS "0"
#define PCUPCAP "0"

id d=1;
id e=-z;
id f=z*t;

id lambda=1;
id lambda^n?neg_=(1)^(n);

id zeta=1;

id a=t;
id aBIS= t;

id kappa=z;
id mu=1;
id mu^n?neg_=1;
id nu=-z;

id kappaBIS=z;
id muBIS=1;
id muBIS^n?neg_=1;
id nuBIS=-z;

id delta = (t-t^-1)*z^-1+1;

id bubblewithdot(?a) = deltaOneDot;
