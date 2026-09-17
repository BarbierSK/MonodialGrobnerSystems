* The q-periplectic Brauer category in the parameter q.
* Rui, Hebing, and Linliang Song. 2025. “The Periplectic $q$-Brauer Category.” Journal of Algebra 661: 82–122. https://doi.org/10.1016/j.jalgebra.2024.06.043.
* the crossing is the negative crossing in op. cit.
* At q=-1 this is the non-affine part of affineVW.h; see AffineBrauerTypeParameters/quantumAffineVW.h.

#define PCROSS "0"
#define PCUPCAP "1"

id d=1;
id e=-(q-q^-1);
id f=0;

id lambda=1;
id lambda^n?neg_=(1)^(n);

id zeta=1;

id a=-q;
id aBIS=q^-1;

id kappa = 0;
id mu = 1;
id mu^n?neg_=1;
id nu = -(q-q^-1);

id kappaBIS = q-q^-1;
id muBIS = 1;
id muBIS^n?neg_=1;
id nuBIS = 0;

id delta =0;
