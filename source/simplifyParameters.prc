*** Dictionary between program symbols and the USER SYMBOLS of Definition 1.13.
*** UNCONDITIONAL: holds for every category.

#procedure simplifyParameters();

*** ------------------------------------------------------------------
*** IDENTITIES, in program notation.
*** ------------------------------------------------------------------

*Reverse of each dot-through-generator rule, forced by pushing the dot back.
id alpha4 = alpha1^-1;
id alpha4^n?neg_ = alpha1^-n;
id alpha1^2=1;
id beta41 = -alpha1^-1*beta11;
id beta42 = -alpha1^-1*beta12;
id beta43 = -alpha1^-1*beta13;
id gamma41= -alpha1^-1*gamma11;
id gamma42= -alpha1^-1*gamma12;
id gamma43= -alpha1^-1*gamma13;

id alpha3 = alpha2^-1;
id alpha3^n?neg_ = alpha2^-n;
id alpha2^2=1;
id beta31 = -alpha2^-1*beta21;
id beta32 = -alpha2^-1*beta22;
id beta33 = -alpha2^-1*beta23;
id gamma31= -alpha2^-1*gamma21;
id gamma32= -alpha2^-1*gamma22;
id gamma33= -alpha2^-1*gamma23;

id sigma2 = sigma1^-1;
id sigma2^n?neg_ = sigma1^-n;
id tau2= -sigma1^-1*tau1;

id sigma4 = sigma3^-1;
id sigma4^n?neg_ = sigma3^-n;
id tau4= -sigma3^-1*tau3;

*The two pulls, from branchings R2capSliding (cap) and R2cupSliding (cup); linear in capslide2, resp. cupslide2.
id cappull2 = quad2 - capslide3;
id cappull3 = capslide2^-1*(quad1 + quad2*capslide3 - capslide3^2);
id cappull1 = capslide2^-1*(quad3*zigzag2 + quad2*capslide1 - ukink*capslide1 - capslide1*capslide3);

id cuppull2 = quad2 - cupslide3;
id cuppull3 = cupslide2^-1*(quad1 + quad2*cupslide3 - cupslide3^2);
id cuppull1 = cupslide2^-1*(quad3*zigzag + quad2*cupslide1 - dkink*cupslide1 - cupslide1*cupslide3);

*Delooping, from branching capSlidingLeftKink.
id lkink = interchangerule(cap,cap)*(capslide1*zigzag2
         + interchangerule(cup,cross)*capslide2*zigzag2*ukink
         + interchangerule(cup,cap)*capslide3*delta);

*Second zigzag, from branching zigzags: zigzag2 is zigzag up to the cap/cap interchange sign.
id zigzag2 = interchangerule(cap,cap)*zigzag;


*** Interchange lives in source/setInterchangeRules.prc, called after the parameter file.

*** ------------------------------------------------------------------
*** RENAMING: program symbol to user symbol.
*** ------------------------------------------------------------------

id quad1=d;
id quad2=e;
id quad3=f;

id braid=lambda;

id zigzag=zeta;

id ukink=a;
id dkink=aBIS;

id capslide1=kappa;
id capslide2 = mu;
id capslide2^n?neg_ = mu^n;
id capslide3=nu;

id cupslide1=kappaBIS;
id cupslide2 = muBIS;
id cupslide2^n?neg_ = muBIS^n;
id cupslide3=nuBIS;

id alpha1 = alpha;
id alpha1^n?neg_ = alpha^n;
id beta11=b;
id beta12=b1;
id beta13=b2;
id gamma11=c;
id gamma12=c1;
id gamma13=c2;

id alpha2 = alphaBIS;
id alpha2^n?neg_ = alphaBIS^n;
id beta21=bBIS;
id beta22=b1BIS;
id beta23=b2BIS;
id gamma21=cBIS;
id gamma22=c1BIS;
id gamma23=c2BIS;

id sigma1 = sigma;
id sigma1^n?neg_ = sigma^n;
id tau1=tau;

id sigma3 = sigmaBIS;
id sigma3^n?neg_ = sigmaBIS^n;
id tau3=tauBIS;


#endprocedure
