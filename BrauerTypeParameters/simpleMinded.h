* simpleMinded

*--#[ INITIAL :
#include BrauerTypeParameters/parametersZigzagInvertible.h
id e=0;
id f=0;

id zeta=1;
id zeta^n?neg_=(1)^(n);

id kappa=0;
id nu=0;
*--#] INITIAL :

*--#[ GENERIC :
#include BrauerTypeParameters/simpleMinded.h # INITIAL
*--#] GENERIC :

*--#[ NIL :
#include BrauerTypeParameters/simpleMinded.h # INITIAL
* lambda is any 2th root of 1
id lambda^2=1;
id lambda^n?neg_=(lambda)^(-n);
id a=0;
id d=0;
* free: delta, eps, interchangerule(cross,cross), interchangerule(cup,cross), mu, muBIS
*--#] NIL :

*--#[ SYMDELTAZERO :
#include BrauerTypeParameters/simpleMinded.h # INITIAL
* mu is any 4th root of 1
id mu^4=1;
id mu^n?neg_=(mu)^(-3*n);
id d=a^2;
id d^n?neg_=(a)^(2*n);
id delta=0;
id lambda=1;
id lambda^n?neg_=(1)^(n);
id interchangerule(cross,cross)=1;
id interchangerule(cross,cross)^n?neg_=(1)^(n);
id interchangerule(cup,cross)=1;
id interchangerule(cup,cross)^n?neg_=(1)^(n);
id muBIS=mu^3;
id muBIS^n?neg_=(mu)^(3*n);
* free: a, eps
*--#] SYMDELTAZERO :

*--#[ SYM :
#include BrauerTypeParameters/simpleMinded.h # INITIAL
* mu is any 4th root of 1
id mu^2=eps;
id mu^n?neg_=(mu)^(-n)*(eps)^(n);
id d=a^2;
id d^n?neg_=(a)^(2*n);
* id eps=mu^2;
* id eps^n?neg_=(mu)^(2*n);
id lambda=1;
id lambda^n?neg_=(1)^(n);
id interchangerule(cross,cross)=1;
id interchangerule(cross,cross)^n?neg_=(1)^(n);
id interchangerule(cup,cross)=1;
id interchangerule(cup,cross)^n?neg_=(1)^(n);
id muBIS=mu^3;
id muBIS^n?neg_=(mu)^(3*n);
* free: a, delta
*--#] SYM :
