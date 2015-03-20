-- read C:\Users\Mark Miller\Documents\School\SE_422\Homework_2\commands.x
!create c1:Customer 
!create m1:Movie 
!create r1:Rental 
!set c1.name := 'Mark'
!set m1.priceCode := #regular 
!set m1.title := 'LOTR' 
!set r1.daysRented := 1 
!insert (c1,r1) into custRentals 
!insert (r1,m1) into movRental 
 
!create m2:Movie 
!create r2:Rental 
!set c2.name := 'Emmit'
!set m2.priceCode := #family 
!set m2.title := 'Matrix' 
!set r2.daysRented := 2 
!insert (c1,r2) into custRentals 
!insert (r2,m2) into movRental 

!create m3:Movie 
!create r3:Rental 
!set c3.name := 'Clem'
!set m3.priceCode := #newRelease 
!set m3.title := 'The Notebook' 
!set r3.daysRented := 3 
!insert (c1,r3) into custRentals 
!insert (r3,m3) into movRental
 
!c1.Statement()
!c1.getTotalCharge()