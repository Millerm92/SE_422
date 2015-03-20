--command file 
--C:\Users\Mark Miller\Documents\School\SE_422\Homework_3\commandFile.x


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

