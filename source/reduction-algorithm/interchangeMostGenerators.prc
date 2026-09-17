*** Interchange of disjoint generators, with signs recorded via interchangerule(x,y).
*** We push cups up and caps down, and order cups from left bottom to right top, caps from
*** left top to right bottom. Assumes crossings are adjacent transpositions cross(i,i+1).

*** Index shifts: thetap_(y-x) is 1 if x<y and 0 otherwise; theta_(y-x) is 1 if x<=y.
*** (These replace the equivalent but slower sum_(j,...,delta_(...)) construction.)

#procedure interchangeMostGenerators();

repeat;

** interchange top crossing with bottom cup
	id cross(m3?!{m1?,m2?},m4?!{m1?,m2?})*cup(m1?!{m3?,m4?},m2?!{m3?,m4?}) =
		interchangerule(cup,cross)*cup(m1,m2)*cross(m3-2*thetap_(m3-m1),m4-2*thetap_(m3-m1));

** interchange bottom crossing and top cap
	id cap(m1?!{m3?,m4?},m2?!{m3?,m4?})*cross(m3?!{m1?,m2?},m4?!{m1?,m2?}) =
		interchangerule(cross,cap)*cross(m3-2*thetap_(m3-m1),m4-2*thetap_(m3-m1))*cap(m1,m2);

** interchange top cap with bottom cup
	id cap(m1?!{m3?,m4?},m2?!{m3?,m4?})*cup(m3?!{m1?,m2?},m4?!{m1?,m2?}) =
		interchangerule(cup,cap)
		*cup(m3-2*thetap_(m3-m1),m4-2*thetap_(m3-m1))
		*cap(m1-2*thetap_(m1-m3),m2-2*thetap_(m1-m3));

**Interchange left top cup with right bottom cup
#do j=1, 'N'
#do i=1, 'j'
	repeat;
	 id cup('i','i'+1)*cup('j','j'+1) =interchangerule(cup,cup)* cup('j'+2,'j'+3)*cup('i','i'+1);
	endrepeat;
#enddo
#enddo

**Interchange left top cup with right bottom cross cup
#do j=1, 'N'
#do i=1, 'j'
	repeat;
	 id cup('i','i'+1)*cross('j'+1,'j'+2)*cup('j','j'+1) =interchangerule(cup,cross)*interchangerule(cup,cup)*cross('j'+3,'j'+4)* cup('j'+2,'j'+3)*cup('i','i'+1);
	endrepeat;
#enddo
#enddo

**Interchange left top downdot with right bottom downdot
#do j=1, 'N'
	#do i=1, 'j'-1
		repeat;
		id dotdown('i')*dotdown('j')=interchangerule(dot,dot)*dotdown('j')*dotdown('i');
		endrepeat;
	#enddo
#enddo

**Interchange right top updot with left bottom updot
#do i=1, 'N'
	#do j=1, 'i'-1
		repeat;
		id dotup('i')*dotup('j') =interchangerule(dot,dot)*dotup('j')*dotup('i');
		endrepeat;
	#enddo
#enddo

**Interchange right top cap with left bottom cap
#do i=1, 'N'
#do j=1, 'i'
	repeat;
	 id cap('i','i'+1)*cap('j','j'+1) =interchangerule(cap,cap)*cap('j','j'+1)*cap('i'+2,'i'+3);
	endrepeat;
#enddo
#enddo

**Interchange right top capcross with left bottom cap
#do i=1, 'N'
#do j=1, 'i'
	repeat;
	 id cap('i','i'+1)*cross('i'+1,'i'+2)*cap('j','j'+1) =interchangerule(cross,cap)*interchangerule(cap,cap)*cap('j','j'+1)*cap('i'+2,'i'+3)*cross('i'+3,'i'+4);
	endrepeat;
#enddo
#enddo


*** Rules to interchange oriented dots; we always push a dot in the direction of its orientation ***

**Interchange top down dot with bottom cup
	id dotdown(m3?!{m1?,m2?})*cup(m1?!{m3?},m2?!{m3?}) =
		interchangerule(cup,dot)*cup(m1,m2)*dotdown(m3-2*thetap_(m3-m1));

**Interchange top down dot with bottom cap
*Unlike the cup rule above, no exclusion m3 != m1,m2 is needed here: the cap occupies
*positions m1,m2 only at ITS OWN bottom level, so at the level where the dot lives there is
*no cap strand to collide with. Consequently the shift deliberately includes equality
*(theta_, i.e. m1<=m3): a dot at or right of the cap position moves down past it and its
*index grows by 2.
	id dotdown(m3?)*cap(m1?,m2?) =
		interchangerule(cap,dot)*cap(m1,m2)*dotdown(m3+2*theta_(m3-m1));

**Interchange top down dot with bottom cross
	id dotdown(m3?!{m1?,m2?})*cross(m1?!{m3?},m2?!{m3?}) =
		interchangerule(cross,dot)*cross(m1,m2)*dotdown(m3);

**Interchange top cap with bottom updot
	id cap(m1?!{m3?},m2?!{m3?})*dotup(m3?!{m1?,m2?}) =
		interchangerule(dot,cap)*dotup(m3-2*thetap_(m3-m1))*cap(m1,m2);

**Interchange top cup with bottom updot
*As for the dotdown/cap rule: the cup has no strands at the dot's level, so no exclusion,
*and the shift includes equality.
	id cup(m1?,m2?)*dotup(m3?) =
		interchangerule(dot,cup)*dotup(m3+2*theta_(m3-m1))*cup(m1,m2);

**Interchange top cross with bottom updot
	id cross(m1?!{m3?},m2?!{m3?})*dotup(m3?!{m1?,m2?}) =
		interchangerule(dot,cross)*dotup(m3)*cross(m1,m2);

**Interchange top downdot with bottom updot
	id dotdown(m1?!{m2?})*dotup(m2?!{m1?}) = interchangerule(dot,dot)*dotup(m2)*dotdown(m1);

endrepeat;


*** Interchanging crossings symmetrically does not terminate; see reduction-algorithm/interchangeCrossings.prc
*** and the Known issues section of the README. The failed attempts are kept below for reference.

** interchange ??left bottom cross and right top cross?? Now it just changes crossings, leads to infinite loop in repeat.
*id  cross(m1?!{m3?,m4?},m2?!{m3?,m4?})*cross(m3?!{m1?,m2?},m4?!{m1?,m2?}) = interchangerule(cross,cross)*cross(m3,m4)*cross(m1,m2);

*Rule to prevent getting stuck by for example cross(1,2)*cross(3,4)*cross(2,3)*cross(1,2)*cross(3,4)*cross(2,3) or cross(3,4)*cross(1,2)*cross(2,3)*cross(3,4)*cross(1,2)*cross(2,3); Does not seem to work, however.
*id cross(?x1)*cross(?x2)*cross(?x3)*cross(?x1)*cross(?x2)*cross(?x3) = cross(?x1)*idem*cross(?x2)*cross(?x3)*cross(?x1)*cross(?x2)*cross(?x3);

#endprocedure
