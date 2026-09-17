* parameters when the zigzag relation has an invertible coefficient zeta

* ZigzagDotSlide
id sigmaBIS = sigma^-1;
id sigmaBIS^n?neg_ = sigma^-n;
id tauBIS = -sigmaBIS*tau;

* CapSlidingDotSlideCenter
id alphaBIS = alpha;
id alphaBIS^n?neg_ = alpha^n;
id bBIS     = -b1BIS*tau
              +kappa*tau*alpha*mu^-1
              +eps*zeta*c*mu^-1;
id b1BIS    = kappa*alpha*mu^-1
              +eps*zeta*c2*sigma^-1*mu^-1;
id b2BIS    = -mu^-1*kappa
              +mu^-1*eps*zeta*c1;
id cBIS     = b*zeta^-1*mu^-1
              +c1BIS*sigmaBIS^-1*tauBIS;
id c1BIS    = b1*sigmaBIS*zeta^-1*mu^-1
              -nu*sigmaBIS*zeta^-1*mu^-1;
id c2BIS    = b2*zeta^-1*mu^-1
              +nu*zeta^-1*mu^-1*alpha;
