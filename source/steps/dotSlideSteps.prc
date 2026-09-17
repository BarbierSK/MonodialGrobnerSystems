*** The cup rules name cup, so a cup carrying the stop sign of reduction-algorithm/trafficRules.prc
*** blocks them. That is what stops the dots of a closed component from circulating, and it is
*** why this procedure no longer has to freeze bubbles as it goes.

#procedure dotSlideSteps();

**           Dot pushing through cups and caps          **
*left cap
	id cap(m1?,m2?)*dotup(m2?) = sigma1*cap(m1,m2)*dotdown(m1) + tau1 *cap(m1,m2);
*right cap
	id cap(m1?,m2?)*dotup(m1?) = sigma2*cap(m1,m2)*dotdown(m2) + tau2 *cap(m1,m2);

*left cup
	id dotdown(m2?)*cup(m1?,m2?) = sigma3*dotup(m1)*cup(m1,m2) + tau3 *cup(m1,m2);
*right cup
	id dotdown(m1?)*cup(m1?,m2?) = sigma4*dotup(m2)*cup(m1,m2) + tau4 *cup(m1,m2);

** 		Dot pushing through crossings 		**
*Left top dot
	id dotdown(m1?)*cross(m1?,m2?) =
		  alpha1*cross(m1,m2)*dotdown(m2)
		+ beta11*idem + beta12*dot(m1) + beta13*dot(m2)
		+ gamma11*cup(m1,m2)*cap(m1,m2)
		+ gamma12*dot(m1)*cup(m1,m2)*cap(m1,m2)
		+ gamma13*cup(m1,m2)*cap(m1,m2)*dot(m1);

*Right top dot
	id dotdown(m2?)*cross(m1?,m2?) =
		  alpha2*cross(m1,m2)*dotdown(m1)
		+ beta21*idem + beta22*dot(m1) + beta23*dot(m2)
		+ gamma21*cup(m1,m2)*cap(m1,m2)
		+ gamma22*dot(m1)*cup(m1,m2)*cap(m1,m2)
		+ gamma23*cup(m1,m2)*cap(m1,m2)*dot(m1);

*Left bottom dot
	id cross(m1?,m2?)*dotup(m1?) =
		  alpha3*dotup(m2)*cross(m1,m2)
		+ beta31*idem + beta32*dot(m1) + beta33*dot(m2)
		+ gamma31*cup(m1,m2)*cap(m1,m2)
		+ gamma32*dot(m1)*cup(m1,m2)*cap(m1,m2)
		+ gamma33*cup(m1,m2)*cap(m1,m2)*dot(m1);

*Right bottom dot
	id cross(m1?,m2?)*dotup(m2?) =
		  alpha4*dotup(m1)*cross(m1,m2)
		+ beta41*idem + beta42*dot(m1) + beta43*dot(m2)
		+ gamma41*cup(m1,m2)*cap(m1,m2)
		+ gamma42*dot(m1)*cup(m1,m2)*cap(m1,m2)
		+ gamma43*cup(m1,m2)*cap(m1,m2)*dot(m1);

#endprocedure
