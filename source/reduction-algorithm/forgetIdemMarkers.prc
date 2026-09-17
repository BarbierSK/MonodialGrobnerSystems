* Removes the idem placeholders that pin the two halves of a critical branching apart.
#procedure forgetIdemMarkers();
repeat;
* id idem*idem = idem;
* id blob?{cup,cap,cross,dot,dotdown,dotup}(?x)*idem = blob(?x);
* id idem*blob?{cup,cap,cross,dot,dotdown,dotup}(?x) = blob(?x);
  id idem = 1;
endrepeat;
#endprocedure
