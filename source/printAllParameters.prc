*** Declares one local expression per PROGRAM symbol, so that the final value of every
*** parameter is printed alongside the residues. Optional; resolveBranchings.frm calls it commented
*** out.

#procedure printAllParameters();

*A definition may not follow a statement inside a module, and normalize() leaves statements
*behind, so open a module of our own.
.sort

*** Non-affine.

local Zigzag = zigzag;
local Zigzag2 = zigzag2;
local Dkink = dkink;
local Ukink = ukink;
local Quad1 = quad1;
local Quad2 = quad2;
local Quad3 = quad3;
local Delta = delta;
local Lkink = lkink;
local Cupslide1 = cupslide1;
local Cupslide2 = cupslide2;
local Cupslide3 = cupslide3;
local Capslide1 = capslide1;
local Capslide2 = capslide2;
local Capslide3 = capslide3;
local Cuppull1 = cuppull1;
local Cuppull2 = cuppull2;
local Cuppull3 = cuppull3;
local Cappull1 = cappull1;
local Cappull2 = cappull2;
local Cappull3 = cappull3;
local Epsilon = eps;

*** Affine: the crossing and the cup/cap.

local Alpha1 = alpha1;
local Alpha2 = alpha2;
local Alpha3 = alpha3;
local Alpha4 = alpha4;
local Sigma1 = sigma1;
local Sigma2 = sigma2;
local Sigma3 = sigma3;
local Sigma4 = sigma4;
local Tau1 = tau1;
local Tau2 = tau2;
local Tau3 = tau3;
local Tau4 = tau4;

local Beta11 = beta11;
local Beta12 = beta12;
local Beta13 = beta13;
local Beta21 = beta21;
local Beta22 = beta22;
local Beta23 = beta23;
local Beta31 = beta31;
local Beta32 = beta32;
local Beta33 = beta33;
local Beta41 = beta41;
local Beta42 = beta42;
local Beta43 = beta43;

local Gamma11 = gamma11;
local Gamma12 = gamma12;
local Gamma13 = gamma13;
local Gamma21 = gamma21;
local Gamma22 = gamma22;
local Gamma23 = gamma23;
local Gamma31 = gamma31;
local Gamma32 = gamma32;
local Gamma33 = gamma33;
local Gamma41 = gamma41;
local Gamma42 = gamma42;
local Gamma43 = gamma43;

#endprocedure
