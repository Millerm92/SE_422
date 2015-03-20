-- read C:\Users\Mark Miller\Documents\School\SE_422\Homework_2\mofCommands.x

!create i1:Interface
!set i1.name:='ISubject'
!create i2:Interface
!set i2.name:='IObserver'


!create c1:Class
!set c1.name:='ConcreteSubject'
!create c2:Class
!set c2.name:='ConcreteObserver'

!create o1:Operation
!set o1.name:='registerObserver()'
!create o2:Operation
!set o2.name:='removeObserver()'
!create o3:Operation
!set o3.name:='notifyObserver()'
!create o4:Operation
!set o4.name:='update()'
!create o5:Operation
!set o5.name:='getState()'
!create o6:Operation
!set o6.name:='setState()'

!insert(i1,o1) into features
!insert(i1,o2) into features
!insert(i1,o3) into features
!insert(i2,o4) into features
!insert(i2,o5) into features
!insert(i2,o6) into features

!insert(o1,i1) into type
!insert(o2,i1) into type
!insert(o3,i1) into type
!insert(o4,i2) into type
!insert(o5,i2) into type
!insert(o6,i2) into type


!create dt1:DataType
!set dt1.name:='Observers[]'
!create dt2:DataType
!set dt2.name:='Integer'
!create attD1:Attribute
!set attD1.name:='Object'
!insert(attD1,dt1) into type
!insert(dt1,attD1) into features

!create att1:Attribute
!set att1.name:='Private'
!insert(c2,att1) into features
!insert(att1,c2) into type

!create att2:Attribute
!set att2.name:='Public'
!insert(i2, att2) into features
!insert(att2,i2) into type

!create att3:Attribute
!set att3.name:='Non-Zero'
!insert(dt2, att3) into features
!insert(att3, dt2) into type

!insert(dt2,c1) into genSpec
!insert(dt1,c1) into genSpec

!create ae1:AssociationEnd
!set ae1.name:='ISubEnd'
!create ae2:AssociationEnd
!set ae2.name:='IObvEnd'

!create ae3:AssociationEnd
!set ae3.name:='CSubEnd'
!create ae4:AssociationEnd
!set ae4.name:='CObvEnd'

!create Observers:Association
!create Subjects:Association

!insert(Subjects,ae3) into midCon
!insert(Subjects,ae4) into midCon
!insert(c2,ae4) into features
!insert(c1,ae3) into features
!insert(ae4,c2) into type
!insert(ae3,c1) into type

!insert(i2,c2) into impleInter 
!insert(i1,c1) into impleInter

!insert(Observers,ae1) into midCon
!insert(Observers,ae2) into midCon
!insert(i2,ae2) into features
!insert(i1,ae1) into features
!insert(ae2,i2) into type
!insert(ae1,i1) into type



 