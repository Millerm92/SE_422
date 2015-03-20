-- read C:\Users\Mark Miller\Documents\School\SE 422\mr_cmds-v1.x
-- This file creates 1 customer, 2 movies, and 2 rentals. It sets up 
-- associations between them, and finally calls the Statement() method 
-- for the customer. 
-- It assumes that Regular movies are coded as 0, New movies are 1, and 
-- Family movies are 2. 
 
!create c1:Customer 
!create m1:Movie 
!create r1:Rental 
!set m1.priceCode := 0 
!set m1.title := 'Movie1' 
!set r1.daysRented := 5 
!insert (c1,r1) into custRentals 
!insert (r1,m1) into movRental 
 
!create m2:Movie 
!create r2:Rental 
!set m2.priceCode := 2 
!set m2.title := 'Movie2' 
!set r2.daysRented := 3 
!insert (c1,r2) into custRentals 
!insert (r2,m2) into movRental 
 
!c1.Statement() 
