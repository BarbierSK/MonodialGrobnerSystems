*** Non-affine critical branchings, declared as local expressions (path A) - (path B).
*** The expression carries the descriptive name; the comment above it gives the numbering of
*** the Lemmas in the appendix of http://arxiv.org/abs/2406.18436v1, the B-prefixed ones being
*** overlaps missing from that appendix. Suffixes ID and CRO mark the identity and crossing
*** variations of a branching that occurs in several forms.

*We put an idem to force a certain branching since idem get only simplified on the end of the rewriting.

#procedure NonAffineBranchings();


*Lemma A3, formerly A34
local R2R2=cross(1,2)*cross(1,2)*idem*cross(1,2) -cross(1,2)*idem*cross(1,2)*cross(1,2);

*Lemma A7, formerly A72
local R2R3= cross(1,2)*idem*cross(1,2)*cross(2,3)*cross(1,2)-cross(1,2)*cross(1,2)*idem*cross(2,3)*cross(1,2);

*Needs a manual fix, as it get stuck on
*cross(2,3)*cross(3,4)*cross(1,2)*cross(2,3)*cross(3,4)*cross(1,2) and cross(3,4)*cross(1,2)*cross(2,3)*cross(3,4)*cross(1,2)*cross(2,3):
* Lemma A9, formerly B9crossmanualintervention
local R3R3crossingCRO = cross(2,3)*cross(3,4)*idem*cross(1,2)*cross(2,3)*cross(3,4)* cross(1,2) * (  - 1 )+ cross(3,4)*idem*cross(1,2)*cross(2,3)*cross(3,4)*cross(1,2)*cross(2,3) * ( interchangerule(cross,cross) );

*Lemma A1, formerly A12
local zigzags =cap(1,2)*cap(1,2)*idem*cup(2,3)-cap(1,2)*idem*cap(1,2)*cup(2,3);

*Lemma A5, formerly A52
local R2capSliding = cap(2,3)*cross(1,2)*idem*cross(1,2)-cap(2,3)*idem*cross(1,2)*cross(1,2);

*Lemma A19, formerly A192
local R3capSlidingID = cap(2,3)*cross(1,2)*cross(2,3)*idem*cross(1,2)-cap(2,3)*idem*cross(1,2)*cross(2,3)*cross(1,2);

*Lemma A6, formerly A62, Needs interchange rule
local R3capSlidingBIS= cap(3,4)*idem*cross(1,2)*cross(2,3)*cross(1,2)-cap(3,4)*cross(1,2)*idem*cross(2,3)*cross(1,2);

*Lemma A2, formerly A22, Needs interchange rule
local capSlidingZigzag = cap(2,3)*cross(1,2)*idem*cup(3,4)-cap(2,3)*idem*cross(1,2)*cup(3,4);

*Lemma A18, formerly A182, Needs interchange rule
local capSlidingCapPulling= cap(1,2)*idem*cap(1,2)*cross(2,3)*cross(1,2)-cap(1,2)*cap(1,2)*idem*cross(2,3)*cross(1,2);

*Lemma A14, formerly A141
local capSlidingCupSlidingID = cap(2,3)*cross(1,2)*idem*cup(2,3)-cap(2,3)*idem*cross(1,2)*cup(2,3);

*Variations on Lemma A14, formerly B14cross
local capSlidingCupSlidingCRO = cap(2,3)*cross(1,2)*idem*cross(3,4)*cup(2,3)-cap(2,3)*idem*cross(1,2)*cross(3,4)*cup(2,3);

*Lemma A17, formerly A171
local capPullingCupSlidingID= cap(1,2)*cross(2,3)*cross(1,2)*idem*cup(2,3) -cap(1,2)*idem*cross(2,3)*cross(1,2)*cup(2,3);

*Variations on Lemma A17, formerly B171cross
local capPullingCupSlidingCRO= cap(1,2)*cross(2,3)*cross(1,2)*idem*cross(3,4)*cup(2,3) -cap(1,2)*cross(2,3)*idem*cross(1,2)*cross(3,4)*cup(2,3);

*Lemma A3, formerly A32
local R2upKink = cap(1,2)*cross(1,2)*idem*cross(1,2)-cap(1,2)*idem*cross(1,2)*cross(1,2);

*Lemma A8, formerly A82
local R3upKink =  cap(1,2)*idem*cross(1,2)*cross(2,3)*cross(1,2)-cap(1,2)*cross(1,2)*cross(2,3)*idem*cross(1,2) ;

*Lemma A13, formerly A132
local capSlidingDownKink = cap(2,3)*cross(1,2)*idem*cup(1,2)-cap(2,3)*idem*cross(1,2)*cup(1,2);

*Lemma A3, formerly A33
local upKinkDownKink = cap(1,2)*cross(1,2)*idem* cup(1,2)-cap(1,2)*idem*cross(1,2)* cup(1,2);



******************************************************************************
***                       VERTICAL SYMMETRIES                              ***
******************************************************************************
*Lemma A7, formerly A71
local R3R2= cross(1,2)*cross(2,3)*cross(1,2)*idem*cross(1,2)-cross(1,2)*cross(2,3)*idem*cross(1,2)* cross(1,2);

*Lemma A1, formerly A11
local zigzagsVERT = cap(2,3)*cup(1,2)*idem*cup(1,2)-cap(2,3)*idem*cup(1,2)*cup(1,2);

*Lemma A5, formerly A51
local R2cupSliding = cross(1,2)*cross(1,2)*idem* cup(2,3)-cross(1,2)*idem*cross(1,2)* cup(2,3);

*Lemma A19, formerly, A191
local R3cupSlidingID = cross(1,2)*cross(2,3)*cross(1,2)*idem*cup(2,3)-cross(1,2)*idem*cross(2,3)*cross(1,2)* cup(2,3);

*Lemma A6, formerly A61, Needs interchange rule
local R3cupSlidingBIS= cross(1,2)*cross(2,3)*cross(1,2)*idem* cup(3,4)- cross(1,2)*cross(2,3)*idem*cross(1,2)* cup(3,4);

*Lemma A2, formerly A21, Needs interchange rule
local cupSlidingZigzag = cap(3,4)*cross(1,2)*idem*cup(2,3)- cap(3,4)*idem*cross(1,2)*cup(2,3);

*Lemma A18, formerly A181, Needs interchange rule
local cupSlidingCupPulling= cross(1,2)*cross(2,3)*cup(1,2)*idem*cup(1,2)- cross(1,2)*cross(2,3)*idem*cup(1,2)*cup(1,2);

*Lemma A17, formerly A172
local capSlidingCupPullingID= cap(2,3)*cross(1,2)*cross(2,3)*idem*cup(1,2) -cap(2,3)*idem*cross(1,2)*cross(2,3)*cup(1,2);

*Variations on Lemma A17, formerly B172cross
local capSlidingCupPullingCRO= cap(2,3)*cross(3,4)*idem*cross(1,2)*cross(2,3)*cup(1,2) -cap(2,3)*cross(3,4)*cross(1,2)*idem*cross(2,3)*cup(1,2);

*Lemma A3, formerly A31
local R2downKink = cross(1,2)*cross(1,2)*idem *cup(1,2)-cross(1,2)*idem*cross(1,2)* cup(1,2);

*Lemma A8, formerly A81
local R3downKink = cross(1,2)*cross(2,3)*cross(1,2)*idem* cup(1,2)-cross(1,2)*cross(2,3)*idem*cross(1,2)* cup(1,2) ;

*Lemma A13, formerly A131
local cupSlidingUpKink = cap(1,2)*cross(1,2)*idem*cup(2,3)-cap(1,2)*idem*cross(1,2)*cup(2,3);


#endprocedure


