* N bounds the strand index for enumerations in the interchange rules.
#define N "6"

* Maximum number of sweeps of the main rewriting loop below.
#define MAXREWRITEPASSES "4"

* rewriting steps
#include source/steps/nonAffineSteps.prc
#include source/steps/dotSlideSteps.prc

* drives
#include source/reduction-algorithm/freezeBubbles.prc
#include source/reduction-algorithm/interchangeMostGenerators.prc
#include source/reduction-algorithm/interchangeCrossings.prc
#include source/reduction-algorithm/forgetIdemMarkers.prc
#include source/reduction-algorithm/trafficRules.prc

#procedure normalize();

*Mark the two ends of every word, so that the algorithm can recognise where the diagram ends:
*TD (top of the diagram) on the left, BD (bottom) on the right.
Multiply left TD;
Multiply right BD;

#do i=1,'MAXREWRITEPASSES'

  #do j=1,'MAXREWRITEPASSES'
    repeat;
      #call nonAffineSteps()
    endrepeat;

    #call addTrafficRules()
    repeat;
      #call dotSlideSteps()
    endrepeat;

*Only the stop signs go: the orientations are used in interchangeMostGenerators()
    #call forgetStopSigns()
    #call freezeBubbles()

    #call interchangeMostGenerators()
    #call interchangeCrossings(left)
  #enddo

  repeat;
    repeat;
      #call nonAffineSteps()
    endrepeat;
    #call interchangeMostGenerators()
    #call interchangeCrossings(right)
    #call forgetIdemMarkers()
  endrepeat;

  #call freezeBubbles()
  .sort
#enddo

* forget placehoders
#call forgetTrafficRules()
#call forgetIdemMarkers()
id TD=1;
id BD=1;


#endprocedure
