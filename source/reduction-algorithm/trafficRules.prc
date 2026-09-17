#procedure forgetStopSigns();

id cupOpen(?a) = cup(?a);
id cupStopSign(?a) = cup(?a);

#endprocedure


#procedure forgetTrafficRules();

#call forgetStopSigns()
id dotup(?a) = dot(?a);
id dotdown(?a) = dot(?a);

#endprocedure



* make the orientation marker walk along its strand, marking traffic rules along the way
#procedure trafficWalk();

repeat;
* FIRST: what happens at a cup
* a marker coming back down into the cup it started from has closed its component; it left on
* the left leg, so a companion rule on m1 would only hide a bug
id orientdn(m2?)*cupStopSign(m1?,m2?) = cupStopSign(m1,m2);

* when a marker meets a cup, it marks it as cupOpen
id orientdn(m1?)*blobcup?cups(m1?,m2?) = orientup(m2)*cupOpen(m1,m2);
id orientdn(m2?)*blobcup?cups(m1?,m2?) = orientup(m1)*cupOpen(m1,m2);

* THEN: walk through the next generator
*** ------------------------------ walking down ------------------------------
* a marker "orientdn" sliding through a cup or cap becomes "orientup", and vice-versa
id orientdn(m1?)*cross(m1?,m2?) = cross(m1,m2)*orientdn(m2);
id orientdn(m2?)*cross(m1?,m2?) = cross(m1,m2)*orientdn(m1);

* a marker "orientdn" sliding through a dot mark it as dotup, and vice-versa
* if the dot is already marked, does not change the marking
id orientdn(m1?)*dot(m1?)                        = dotup(m1)*orientdn(m1);
id orientdn(m1?)*dotup(m2?)                      = dotup(m2)*orientdn(m1);
id orientdn(m1?)*dotdown(m2?)                    = dotdown(m2)*orientdn(m1);

* for the remaining generators, it just slides through, staying on its strand
id orientdn(m1?)*cross(m2?!{m1?},m3?!{m1?})      = cross(m2,m3)*orientdn(m1);
id orientdn(m1?)*blobcup?allcups(m2?!{m1?},m3?!{m1?}) = blobcup(m2,m3)*orientdn(m1-2*thetap_(m1-m2));
id orientdn(m1?)*cap(m2?,m3?)                    = cap(m2,m3)*orientdn(m1+2*theta_(m1-m2));
id orientdn(m1?)*dot(m2?!{m1?})                  = dot(m2)*orientdn(m1);
id orientdn(m1?)*idem                            = idem*orientdn(m1);
id orientdn(m1?)*bubble(?a)                      = bubble(?a)*orientdn(m1);
id orientdn(m1?)*bubblewithdot(?a)               = bubblewithdot(?a)*orientdn(m1);
id orientdn(m1?)*bubblewithtwodots(?a)               = bubblewithtwodots(?a)*orientdn(m1);
id orientdn(m1?)*bubblewiththreedots(?a)             = bubblewiththreedots(?a)*orientdn(m1);
id orientdn(m1?)*bubblewithfourdots(?a)              = bubblewithfourdots(?a)*orientdn(m1);
id orientdn(m1?)*bubblewithfivedots(?a)              = bubblewithfivedots(?a)*orientdn(m1);

*** ------------------------------ walking up --------------------------------
id cap(m1?,m2?)*orientup(m1?) = cap(m1,m2)*orientdn(m2);
id cap(m1?,m2?)*orientup(m2?) = cap(m1,m2)*orientdn(m1);

id cross(m1?,m2?)*orientup(m1?) = orientup(m2)*cross(m1,m2);
id cross(m1?,m2?)*orientup(m2?) = orientup(m1)*cross(m1,m2);

id dot(m1?)*orientup(m1?) = orientup(m1)*dotdown(m1);

id cross(m1?,m2?)*orientup(m3?!{m1?,m2?})     = orientup(m3)*cross(m1,m2);
id cap(m1?,m2?)*orientup(m3?!{m1?,m2?})       = orientup(m3-2*thetap_(m3-m1))*cap(m1,m2);
id blobcup?allcups(m1?,m2?)*orientup(m3?)     = orientup(m3+2*theta_(m3-m1))*blobcup(m1,m2);
id dot(m2?)*orientup(m3?!{m2?})               = orientup(m3)*dot(m2);
id dotup(m2?)*orientup(m3?)                   = orientup(m3)*dotup(m2);
id dotdown(m2?)*orientup(m3?)                 = orientup(m3)*dotdown(m2);
id idem*orientup(m3?)                         = orientup(m3)*idem;
id bubble(?a)*orientup(m3?)                   = orientup(m3)*bubble(?a);
id bubblewithdot(?a)*orientup(m3?)            = orientup(m3)*bubblewithdot(?a);
id bubblewithtwodots(?a)*orientup(m3?)        = orientup(m3)*bubblewithtwodots(?a);
id bubblewiththreedots(?a)*orientup(m3?)      = orientup(m3)*bubblewiththreedots(?a);
id bubblewithfourdots(?a)*orientup(m3?)       = orientup(m3)*bubblewithfourdots(?a);
id bubblewithfivedots(?a)*orientup(m3?)       = orientup(m3)*bubblewithfivedots(?a);

* END: reach to top or bottom of the diagram
*** ------------------------- leaving the diagram ----------------------------
id TD*orientup(m1?) = TD;
id orientdn(m1?)*BD = BD;

endrepeat;

#endprocedure


#procedure addTrafficRules();

#call forgetTrafficRules()

* add orientdn markers to top boundary points, from left to right.
#do k=1,'N'
	if ( match(cup(m1?,m2?)) || match(dot(m1?)) );
		id TD = TD*orientdn('k');
	endif;
	#call trafficWalk()
#enddo

*Then the bottom boundary points, from left to right. What is still unoriented here sits on a
*generalized cap, since every strand with a top endpoint has been walked already.
#do k=1,'N'
	if ( match(cup(m1?,m2?)) || match(dot(m1?)) );
		id BD = orientup('k')*BD;
	endif;
	#call trafficWalk()
#enddo

*Whatever is still unmarked sits on a closed component. Stop-sign one of its cups and send a
*marker up its left leg: the walk orients that component's dots, opens its other cups, and dies
*when it comes back down the right leg into the stop sign. So each closed component keeps exactly
*one stop sign, and its dots collect on the left leg of that cup, where freezeBubbles reads them.
repeat;
	id once cup(m1?,m2?) = orientup(m1)*cupStopSign(m1,m2);
	#call trafficWalk()
endrepeat;

id cupOpen(?a) = cup(?a);

#endprocedure
