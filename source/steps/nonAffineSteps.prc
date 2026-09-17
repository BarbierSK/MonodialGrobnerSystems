#procedure nonAffineSteps();

*R3
	id cross(m1?,m2?)*cross(m2?,m3?)*cross(m1?,m2?) = lambda*cross(m2,m3)*cross(m1,m2)*cross(m2,m3);

*R2
	id cross(m1?,m2?)*cross(m1?,m2?) =
		  quad1*idem
		+ quad2*cross(m1,m2)
		+ quad3*cup(m1,m2)*cap(m1,m2);

*Cap sliding
	id cap(m2?,m3?)*cross(m1?,m2?) =
		  capslide1*cap(m1,m2)
		+ capslide2*cap(m1,m2)*cross(m2,m3)
		+ capslide3*cap(m2,m3);

*Cup sliding
	id cross(m1?,m2?)*cup(m2?,m3?) =
		  cupslide1*cup(m1,m2)
		+ cupslide2*cross(m2,m3)*cup(m1,m2)
		+ cupslide3*cup(m2,m3);

*Cup pulling
	id cross(m1?,m2?)*cross(m2?,m3?)*cup(m1?,m2?) =
		  cuppull1*cup(m1,m2)
		+ cuppull2*cross(m2,m3)*cup(m1,m2)
		+ cuppull3*cup(m2,m3);

*Cap pulling
	id cap(m1?,m2?)*cross(m2?,m3?)*cross(m1?,m2?) =
		  cappull1*cap(m1,m2)
		+ cappull2*cap(m1,m2)*cross(m2,m3)
		+ cappull3*cap(m2,m3);

*Zigzag
	id cap(m1?,m2?)*cup(m2?,m3?) = zigzag *idem;
	id cap(m2?,m3?)*cup(m1?,m2?) = zigzag2 *idem;

*Kinks
	id cap(m1?,m2?)*cross(m1?,m2?) = ukink*cap(m1,m2);
	id cross(m1?,m2?)*cup(m1?,m2?) = dkink*cup(m1,m2);
	id cap(m1?,m2?)*cross(m2?,m3?)*cup(m1?,m2?) = lkink *idem;

*Bubbles
	id cap(m1?,m2?)*cup(m1?,m2?) = bubble(m1);

#endprocedure
