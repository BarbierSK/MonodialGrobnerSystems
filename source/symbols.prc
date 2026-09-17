* DECLARATION OF SYMBOLS AND FUNCTIONS

* the building blocks that make up diagrams
Function dot, dotup, dotdown, cross, cup, cap, idem, bubble, bubblewithdot, TD, BD;
Function bubblewithtwodots, bubblewiththreedots, bubblewithfourdots, bubblewithfivedots;

* traffic rules
Function cupOpen, cupStopSign;
Set cups: cup, cupOpen;
* the cups a marker may walk past, as opposed to bounce off
Set allcups: cup, cupOpen, cupStopSign;
Set dots: dot, dotup, dotdown;

* symbols and functions used for pattern matching (x?, blob?) and for loop bounds; the rules
* build these names themselves (x1, x2, n1, blob1, ...), which is what autodeclare is for
autodeclare symbol x,j,n,m;
autodeclare Function blob;

* formal deformation parameters
Symbol v,z,t,q;

* FAMILIES PARAMETERS
* front-end list = (a,d,e,f,zeta,kappa,mu,nu,alpha,b,c,sigma,tau)
*   used in parameter files
* reduction-algorithm list = (cupslide,...)
*   more verbose and explicit
*   contains additional secondary parameters
*   captures all parameters appearing in the rewriting steps
* source/simplifyParameters.prc translates between these two lists

* back-end non-affine parameters
Symbol quad1,quad2,quad3;
Symbol braid;
Symbol cupslide1,cupslide2,cupslide2inv,cupslide3;
Symbol capslide1,capslide2,capslide2inv,capslide3;
Symbol cuppull1,cuppull2,cuppull3;
Symbol cappull1,cappull2,cappull3;
Symbol zigzag,zigzag2,dkink,ukink,delta,lkink,eps;

* back-end affine parameters
Symbol alpha1,alpha2,alpha3,alpha4;
Symbol beta11,beta12,beta13,beta21,beta22,beta23;
Symbol beta31,beta32,beta33,beta41,beta42,beta43;
Symbol gamma11,gamma12,gamma13,gamma21,gamma22,gamma23;
Symbol gamma31,gamma32,gamma33,gamma41,gamma42,gamma43;
Symbol sigma1,sigma2,sigma3,sigma4;
Symbol tau1,tau2,tau3,tau4;


* front-end non-affine parameters
Symbol d,e,f;
Symbol lambda;
Symbol zeta,zetaBIS;
Symbol a,aBIS;
Symbol kappa,mu,nu;
Symbol kappaBIS,muBIS,nuBIS;

* front-end affine parameters
Symbol alpha,alphaBIS;
Symbol b,b1,b2,bBIS,b1BIS,b2BIS;
Symbol c,c1,c2,cBIS,c1BIS,c2BIS;
Symbol sigma,sigmaBIS;
Symbol tau,tauBIS;

Symbol deltaOneDot;

* interchange parameters (encoded as a commuting function)
CFunction interchangerule;

* traffic rules markers
Function orientdn, orientup;
