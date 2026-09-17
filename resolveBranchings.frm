* run program in terminal by the commando form -l -q resolveBranchings.frm
* The option -l writes the output to the logfile.  The option -q prevents the code to be also written to the logfile. 

Off statistics; *do not print statistics
#include source/symbols.prc
#include source/branchings/NonAffineBranchings.prc
#include source/branchings/DotSlideBranchings.prc
#include source/reduction-algorithm/normalize.prc
#include source/simplifyParameters.prc
#include source/setInterchangeRules.prc
#include source/printAllParameters.prc


************************************************************************
***                    CHOOSE BRANCHINGS                             ***
************************************************************************
* uncomment the branchings you want to use in the rewriting
* You can also create your own diagrams for the program to rewrite. An example is as follows
**local R2cupPulling = cross(1,2)*cross(1,2)*idem*cross(2,3)*cup(1,2)-cross(1,2)*idem*cross(1,2)*cross(2,3)*cup(1,2);
#call NonAffineBranchings()
#call DotSlideBranchings()




************************************************************************
***                    CHOOSE PARAMETERS                             ***
************************************************************************
* Here you choose the parameter file path you want to use. You can also create your own parameter file. 
* choose "generic" to keep parameters free

* categories of Brauer type
* #define PARAMETERS "BrauerTypeParameters/generic"
* #define PARAMETERS "BrauerTypeParameters/Brauer"
* #define PARAMETERS "BrauerTypeParameters/BTLZ"
* #define PARAMETERS "BrauerTypeParameters/qperiplectic"
* #define PARAMETERS "BrauerTypeParameters/BMW"
* #define PARAMETERS "BrauerTypeParameters/simpleMinded"
*   this one is split into folds: set PARAMETERSFOLD below to "# GENERIC",
*   "# NIL", "# SYMDELTAZERO" or "# SYM"

* categories of affine Brauer type
 #define PARAMETERS "AffineBrauerTypeParameters/generic"
* #define PARAMETERS "AffineBrauerTypeParameters/affineBrauer"
* #define PARAMETERS "AffineBrauerTypeParameters/affineVW"
* #define PARAMETERS "AffineBrauerTypeParameters/nilBrauer"
* #define PARAMETERS "AffineBrauerTypeParameters/oddNilBrauer"
* #define PARAMETERS "AffineBrauerTypeParameters/BTLZAffine"
* #define PARAMETERS "AffineBrauerTypeParameters/simpleMinded"
*   this one is split into folds: set PARAMETERSFOLD below to "# GENERIC",
*   "# NIL1" to "# NIL4", "# SYM" or "# SYMDELTAZERO"
* #define PARAMETERS "AffineBrauerTypeParameters/generic"
* #define PARAMETERS "AffineBrauerTypeParameters/quantumAffineBrauer"
* #define PARAMETERS "AffineBrauerTypeParameters/quantumAffineVW"

* the fold of the parameter file to include "# PARAMATER", empty for a file without folds
#define PARAMETERSFOLD ""


************************************************************************
***                         PROGRAM                                  ***
************************************************************************
* apply rewriting algorithm to every branching defined above
#call normalize()

* OPTIONAL: also print the final value of every parameter, in program notation.
* Must stay above the repeat below, which is what gives those values.
* #call printAllParameters()

* simplify the output using the parameters defined above
* simplifyParameters() translate from front-end notations to back-end notations,
* and define the values of secondary parameters used in rewriting
* setInterchangeRules() comes last: it reads the parities the parameter file declared,
* which are preprocessor variables and so only exist once that file has been included
repeat;
  #call simplifyParameters()
  #include `PARAMETERS'.h `PARAMETERSFOLD'
  #call setInterchangeRules()
endrepeat;




* group the terms corresponding to the same diagram: one bracket per diagram, and no
* alignment spaces or line wrapping.
Format nospaces;
Format 255;
Bracket cross,cap,cup,dot,dotup,dotdown,idem,bubble,bubblewithdot,TD,BD,
        bubblewithtwodots,bubblewiththreedots,bubblewithfourdots,bubblewithfivedots;

* print the results to output and logfile
* +f flag means the output is only written to the log file
Print	-f;
.end
