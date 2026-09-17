* capSlidingDownKink
id aBIS = kappa*mu*eps
          +nu
          +delta*mu*nu*zeta^-1*eps
          +delta*kappa*zeta^-1*eps
          +interchangerule(cup,cross)*a*mu^2*eps;

* cupSlidingZigzag
id kappaBIS = -nu*muBIS;
id muBIS    = mu^-1;
id nuBIS    = -kappa*muBIS;
