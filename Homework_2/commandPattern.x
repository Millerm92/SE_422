--Command file
--
!create cS1:ConcreteSubject
!set cS1.name:='Rainfall in inches'
!set cS1.data:= 10

!create cO1:ConcreteObserver
!set cO1.name:='Mark'
!set cO1.data:= 0

!create cO2:ConcreteObserver
!set cO2.name:='Emmett'
!set cO2.data:= 0

!insert (cO1, cS1) into observers
!insert (cS1, cO1) into subject

!cS1.update(20)
!cS1.notify()
!cS1.regObs(cO2)
!cS1.update(25)
!cS1.notify()
