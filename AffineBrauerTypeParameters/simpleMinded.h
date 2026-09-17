* simpleMinded, affine

*--#[ INITIAL :
#include AffineBrauerTypeParameters/parametersZigzagInvertible.h
id b1=0;
id b2=0;
id c1=0;
id c2=0;

id b1BIS=0;
id b2BIS=0;
id c1BIS=0;
id c2BIS=0;

* we also assume that b and c are invertible
*--#] INITIAL :

*--#[ GENERIC :
#include BrauerTypeParameters/simpleMinded.h # GENERIC
#include AffineBrauerTypeParameters/simpleMinded.h # INITIAL
*--#] GENERIC :


*--#[ NILGENERIC :
#include BrauerTypeParameters/simpleMinded.h # NIL
#include AffineBrauerTypeParameters/simpleMinded.h # INITIAL

* normalization
id tau=0;
id b=-1;
*--#] NILGENERIC :

*--#[ EVENNILGENERIC :
#include BrauerTypeParameters/simpleMinded.h # NIL
#include AffineBrauerTypeParameters/simpleMinded.h # INITIAL

#define PDOT "0"
#define PCROSS "0"
id eps = mu^2;

* delta
id delta^2 = delta*lambda*mu;

* affine parameters
id alpha=lambda;
id b=-1;
id c=lambda*mu^-1;
id sigma=-lambda;
id tau=0;

* for the parser:
id mu^4 = 1;
id mu^n?neg_=(mu)^(-3*n);
id alpha^n?neg_=(lambda)^(n);
id sigma^n?neg_=(-lambda)^(n);
*--#] EVENNILGENERIC :

*--#[ ODDNILGENERIC :
#include BrauerTypeParameters/simpleMinded.h # NIL
#include AffineBrauerTypeParameters/simpleMinded.h # INITIAL

* delta=-lambda*mu: eps=mu^2 / delta=0: eps=-mu^2
id delta^2=-lambda*mu*delta;
* id delta = 0;
* id delta = -lambda*mu;

#define PDOT "1"
#define PCROSS "1"

* non-affine parameters
id lambda^2=1;
id mu^4=1;
id eps = -(2*delta*lambda*mu^-1+1)*mu^2;

* affine parameters
id alpha=-lambda;
id b=-1;
id c=-eps*mu^2*lambda/mu;
id sigma=-eps*mu^2*lambda;
id tau=0;

* for the parser:
id mu^n?neg_=(mu)^(-3*n);
id lambda^n?neg_=(lambda)^(-n);
id eps^n?neg_=(eps)^(-n);
id alpha^n?neg_=(-lambda)^(n);
id c^n?neg_=(-eps*mu^2*lambda)^(n)*(mu)^(-n);
id sigma^n?neg_=(-eps*mu^2*lambda)^(n);
*--#] ODDNILGENERIC :


*--#[ SYM :
#include BrauerTypeParameters/simpleMinded.h # SYM
#include AffineBrauerTypeParameters/simpleMinded.h # INITIAL

#define PDOT "0"
id alpha=1;
id c=mu^3;
id sigma=-1;
* free: a, b, delta, tau

* normalization:
id a=1;
id b=-1;
id tau=0;

* for the parser:
id mu^4 = 1;
id mu^n?neg_=(mu)^(-3*n);
id alpha^n?neg_=(-lambda)^(n);
id c^n?neg_=(-1)^(n)*(b)^(n)*(eps)^(n)*(mu)^(n);
id sigma^n?neg_=(-1)^(n);
*--#] SYM :

*--#[ SYMDELTAZERO :
#include BrauerTypeParameters/simpleMinded.h # SYMDELTAZERO
#include AffineBrauerTypeParameters/simpleMinded.h # INITIAL

#define PDOT "0"
id alpha=1;
id tau=-a^-1*b;
id c=-mu^3;
id mu^2=-eps;
id sigma=1;

* normalization:
id a=1;
id b=-1;

* for the parser:
id mu^4 = 1;
id mu^n?neg_=(mu)^(-3*n);
id alpha^n?neg_=(1)^(n);
id tau^n?neg_=(-1)^(n)*(a)^(-n)*(b)^(n);
id c^n?neg_=(a)^(n)*(tau)^(n)*(eps)^(n)*(mu)^(n);
id mu^n?neg_=(-1)^(n)*(mu)^(-n)*(eps)^(n);
id sigma^n?neg_=(1)^(n);
*--#] SYMDELTAZERO :
