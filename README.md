# FORM computations for categories of Brauer type and affine Brauer type

This program checks the confluence of the rewriting system of an (affine) Brauer-type
category. A *critical branching* is a diagram two rules both apply to, encoded as the
difference `(path A) - (path B)`; the program reduces that difference to a normal form and
prints what is left. Zero means the two paths agree. Anything else is a condition the
structure constants of the category must satisfy.

This program is written for FORM 5.0.0-beta.1, but works probably for other versions as well.


## Running

```sh
form -l -q resolveBranchings.frm
```

Run it from this directory. `-l` writes the results to `resolveBranchings.log`, `-q` keeps the source out of it.
Two things in `resolveBranchings.frm` decide what a run asks. 

Under *CHOOSE BRANCHINGS*, the branchings which will be simplified are called.
Standardly, two sets of branchings are called:
`NonAffineBranchings()` are the non-affine critical branchings (including vertical symmetries),
`DotSlideBranchings()` the dot-slide critical branchings.
You can also add your own branchings to be simplified. If diagrams with more than six strands are introduced, the parameter N in normalize.prc should be adapted. 

Under *CHOOSE PARAMETERS*, the parameters used in the run are defined by setting a variable PARAMETERS equal to a path to the parameter file without the `.h`.



## Parameter files

A parameter set fixes the structure constants. `BrauerTypeParameters/` holds the non-affine
sets, `AffineBrauerTypeParameters/` the affine ones. `generic.h`, in either folder, is empty: every constant stays free and the
residues print as conditions on all of them.

You can create your own parameter file.
End the file with a newline: FORM drops the last line of a file that has none.

The interchange signs are not written out one by one. A parameter file declares the parity of
each generator it fixes,

```
#define PCROSS  "0"
#define PCUPCAP "1"
#define PDOT    "0"
```

(`"0"` even, `"1"` odd; cup and cap share one parity), and `interchangerule(x,y)` becomes
`(-1)^{p(x)p(y)}`. A parity left undeclared is unknown, and its interchange signs stay free
constants, to be solved for like any other. A sign that is not of this form is still set by
hand, with an `id` statement.



