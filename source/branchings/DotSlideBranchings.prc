*** The dot-slided critical brancings, declared as local expressions (path A) - (path B).

#procedure DotSlideBranchings();
*We put an idem to force a certain branching since idem get only simplified on the end of the rewriting.

*** R2 ***
local R2dotSlideLeft = cross(1,2)*cross(1,2)*idem*dotup(1)-cross(1,2)*idem*cross(1,2)*dotup(1);
local R2dotSlideRight = cross(1,2)*cross(1,2)*idem*dotup(2)-cross(1,2)*idem*cross(1,2)*dotup(2);

*** braiding ***
local R3dotSlideRight = cross(1,2)*cross(2,3)*cross(1,2)*idem*dotup(3)-cross(1,2)*cross(2,3)*idem*cross(1,2)*dotup(3);
local R3dotSlideCenter = cross(1,2)*cross(2,3)*cross(1,2)*idem*dotup(2)-cross(1,2)*cross(2,3)*idem*cross(1,2)*dotup(2);
local R3dotSlideLeft = cross(1,2)*cross(2,3)*cross(1,2)*idem*dotup(1)-cross(1,2)*cross(2,3)*idem*cross(1,2)*dotup(1);

*** zigzag ***
local ZigzagDotSlide = cap(1,2)*cup(2,3)*idem*dotup(1)-cap(1,2)*idem*cup(2,3)*dotup(1);

*** a cross with two dots on different strands ***
local dotSlideDotSlide = cross(1,2)*dotup(1)*dotup(2)-interchangerule(dot,dot)*cross(1,2)*dotup(2)*dotup(1);

*** upward kink ***
local UpwardKinkDotSlide = cap(1,2)*cross(1,2)*idem*dotup(2)-cap(1,2)*idem*cross(1,2)*dotup(2);

*** cap sliding ***
local CapSlidingDotSlideCenter = cap(2,3)*cross(1,2)*idem*dotup(2)-cap(2,3)*idem*cross(1,2)*dotup(2);
local CapSlidingDotSlideRight = cap(2,3)*cross(1,2)*idem*dotup(3)-cap(2,3)*idem*cross(1,2)*dotup(3);



******************************************************************************
***                       VERTICAL SYMMETRIES                              ***
******************************************************************************

*** zigzag ***
local ZagzigDotSlide = cap(2,3)*cup(1,2)*idem*dotup(1)-cap(2,3)*idem*cup(1,2)*dotup(1);

*** downward kink ***
local DownwardKinkDotSlide = dotdown(2)*cross(1,2)*idem*cup(1,2)-dotdown(2)*idem*cross(1,2)*cup(1,2);

*** cup sliding ***
local CupSlidingDotSlideRight = dotdown(3)*idem*cross(1,2)*cup(2,3)-dotdown(3)*cross(1,2)*idem*cup(2,3);
local CupSlidingDotSlideLeft = cross(1,2)*cup(2,3)*idem*dotup(1)-cross(1,2)*idem*cup(2,3)*dotup(1);

#endprocedure


