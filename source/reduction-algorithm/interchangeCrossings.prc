*** Crossing-crossing interchange for disjoint crossings (|i-j| >= 2). Sorts the crossings of
*** a word by strand index; the rule may not be applied symmetrically, since interchanging
*** crossings in both directions does not terminate.
*** Assumes crossings are adjacent transpositions cross(i,i+1) with i <= 'N'.
***
*** The direction argument says which of the two crossings ends up at the BOTTOM:
***   direction = left   the left (lower-index) crossing goes to the bottom, i.e. crossings
***                      are sorted by increasing index from bottom to top
***   direction = right  the right (higher-index) crossing goes to the bottom, i.e. sorted
***                      by decreasing index from bottom to top
*** Example: with N>=4, "left" sends cross(3,4)*cross(1,2) to cross(1,2)*cross(3,4),
*** and "right" sends it back.

#procedure interchangeCrossings(direction);

#if "'direction'" != "left" && "'direction'" != "right"
	#message interchangeCrossings: argument must be left or right, got 'direction'
	#terminate
#endif

repeat;
#if "'direction'" == "left"
#do i=1, 'N'
#do j=1, 'i'-2
	id cross('i','i'+1)*cross('j','j'+1) = interchangerule(cross,cross)*cross('j','j'+1)*cross('i','i'+1);
#enddo
#enddo
#else
#do j=1, 'N'
#do i=1, 'j'-2
	id cross('i','i'+1)*cross('j','j'+1) = interchangerule(cross,cross)*cross('j','j'+1)*cross('i','i'+1);
#enddo
#enddo
#endif
endrepeat;

#endprocedure
