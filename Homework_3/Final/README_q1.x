--command file 
--C:\Users\Mark Miller\Documents\School\SE_422\Homework_3\commandFile.x

--README
--Use this file if you'd like to create the objects that work with our
--Miller_Wester_q1.use file. It creates the coffee dispenser and required
--states. All accept(), brew, and reset() commands should be executed on
--cd (ex. !cd.accept(20))

--NOTE: we decided to allow the coffee dispenser to continue to accept
--coins while in the enoughCoins state, the totals change but the state
--does not. In this way you ban brew two cups in a row so long as you have
--the right amount.

!create cd:CoffeeDispenser
!create cs:CoffeeState
!cd.coffeeState := cs
!cs.thisDispenser := cd

!insert (cd, cs) into dispenserState

!create noC:noCoins
!noC.thisDispenser := cd
!create hasC:hasCoins
!hasC.thisDispenser := cd
!create enC:enoughCoins
!enC.thisDispenser := cd

!cd.noCoinsState := noC
!cd.hasCoinsState := hasC
!cd.enoughCoinsState := enC

!cd.initInstance()

