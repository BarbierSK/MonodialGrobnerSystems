*** The interchange signs interchangerule(x,y), collected in one place: the identities that
*** hold for every category, and the table determined by the parities the parameter file
*** declared.
***
*** A parameter file declares the parities it knows, and nothing more:
***
***   #define PCROSS  "0"   parity of cross
***   #define PCUPCAP "1"   parity of cup and cap, which simplifyParameters forces to be equal
***   #define PDOT    "0"   parity of dot
***
*** and resolveBranchings.frm calls this procedure once, after the parameter file has been
*** included, so that the call sees every parity any part of it declared. A parity left
*** undeclared is unknown, not zero: its rules stay standing as free constants for the solver.
***
*** An even generator interchanges trivially with EVERY other one, whatever their parities, so
*** it needs no companion parity; only an odd-odd pair does, and it carries -1.

*** "unknown", overwritten by the #define of a parameter file. Set here, on including this
*** file, which every entry point does before it reads a parameter file. FORM's #ifdef and
*** #ifndef are no use for this: they are true and false whatever the name.
#define PCROSS "-1"
#define PCUPCAP "-1"
#define PDOT "-1"

*** All the rules involving one even generator, in one wildcard pattern.
#procedure evenInterchange(g)
id interchangerule(`g',blob?) = 1;
id interchangerule(`g',blob?)^n?neg_ = 1;
id interchangerule(blob?,`g') = 1;
id interchangerule(blob?,`g')^n?neg_ = 1;
#endprocedure

*** One ordered pair of odd generators.
#procedure oddInterchange(g1,g2)
id interchangerule(`g1',`g2') = -1;
id interchangerule(`g1',`g2')^n?neg_ = (-1)^(n);
#endprocedure

#procedure setInterchangeRules();

*** ------------------------------------------------------------------
*** UNCONDITIONAL: holds for every category.
*** ------------------------------------------------------------------
id interchangerule(cap,cap) = eps;
id interchangerule(cap,cup) = eps;
id interchangerule(cup,cap) = eps;
id interchangerule(cup,cup) = eps;
id eps*eps = 1;
id eps^2 = 1;
id eps^n?neg_ = (eps)^(-n);
* symmetry
id interchangerule(m1?,m2?)*interchangerule(m2?,m1?) = 1;
* parity cup = parity cap
id interchangerule(m1?,cap)*interchangerule(m1?,cup) = 1;
id interchangerule(m1?,cup)*interchangerule(m1?,cap) = 1;
id interchangerule(cup,m1?)*interchangerule(cap,m1?) = 1;
id interchangerule(cap,m1?)*interchangerule(cup,m1?) = 1;
id interchangerule(cross,cap) = interchangerule(cup,cross);
id interchangerule(cross,cup) = interchangerule(cap,cross);
id interchangerule(dot,cap) = interchangerule(cup,dot);
id interchangerule(dot,cup) = interchangerule(cap,dot);

*** ------------------------------------------------------------------
*** FROM THE DECLARED PARITIES.
*** ------------------------------------------------------------------

#if `PCROSS' != -1 && `PCROSS' != 0 && `PCROSS' != 1
	#message setInterchangeRules: PCROSS must be 0 or 1, got `PCROSS'
	#terminate
#endif
#if `PCUPCAP' != -1 && `PCUPCAP' != 0 && `PCUPCAP' != 1
	#message setInterchangeRules: PCUPCAP must be 0 or 1, got `PCUPCAP'
	#terminate
#endif
#if `PDOT' != -1 && `PDOT' != 0 && `PDOT' != 1
	#message setInterchangeRules: PDOT must be 0 or 1, got `PDOT'
	#terminate
#endif

#if `PCROSS' == 0
	#call evenInterchange(cross)
#elseif `PCROSS' == 1
	#call oddInterchange(cross,cross)
#endif

#if `PCUPCAP' == 0
	#call evenInterchange(cup)
	#call evenInterchange(cap)
	id eps = 1;
#elseif `PCUPCAP' == 1
	#call oddInterchange(cup,cup)
	#call oddInterchange(cup,cap)
	#call oddInterchange(cap,cup)
	#call oddInterchange(cap,cap)
	id eps = -1;
#endif

#if `PDOT' == 0
	#call evenInterchange(dot)
#elseif `PDOT' == 1
	#call oddInterchange(dot,dot)
#endif

*** The mixed pairs. Only the odd-odd ones are left to do: if either generator is even, the
*** wildcard rules above have already covered every pair it belongs to.

#if `PCROSS' == 1 && `PCUPCAP' == 1
	#call oddInterchange(cross,cup)
	#call oddInterchange(cup,cross)
	#call oddInterchange(cross,cap)
	#call oddInterchange(cap,cross)
#endif

#if `PCROSS' == 1 && `PDOT' == 1
	#call oddInterchange(cross,dot)
	#call oddInterchange(dot,cross)
#endif

#if `PCUPCAP' == 1 && `PDOT' == 1
	#call oddInterchange(cup,dot)
	#call oddInterchange(dot,cup)
	#call oddInterchange(cap,dot)
	#call oddInterchange(dot,cap)
#endif

#endprocedure
