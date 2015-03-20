--commands
--C:\Users\Mark Miller\Documents\School\SE_422\Homework_3\partTwoCommands.x

--README
--Use this command file to populate a object diagram. Players start
--out with initial health and a name. Weapons are assigned manually and
--do static damage, only one may be held at a time. 
--Player commands are shoot(enemy), move(), changeWeapon(weapon) and
--takeDamage(amount). Enemies can only shoot() and takeDamage(amount)
--Players become panicked when below half health, this will persist until
--they attack or die. Being panicked reduces the damage dealt by weapons
--and increases how far you can move, attacking does the opposite. 

!create p1:Player
!p1.name := 'Mark_Emmit'

!create cState:PlayerState
!p1.currentState := cState
!cState.player := p1;

!create nState:PlayerState
!p1.neutralState := nState
!nState.player := p1;

!create aState:PlayerState
!p1.attackState := aState
!aState.player := p1;

!create pState:PlayerState
!p1.panicState := pState
!pState.player := p1;

!create dState:PlayerState
!p1.dieState := dState
!dState.player := p1;

!p1.currentState := nState;
!insert (p1, cState) into playerState

!create w1:Weapon
!w1.name := 'Bazooka'
!w1.damage := 100

!create w2:Weapon
!w2.name := 'Sniper Rifle'
!w2.damage := 75

!create w3:Weapon
!w3.name := 'Machine Gun'
!w3.damage := 50

!p1.weapon := w2
!insert (p1, w2) into playerWeapon

!create e1:Enemy
!e1.name := 'UML'
!e1.weapon := w1
!insert (e1, w1) into enemyWeapons
!insert (p1, e1) into playerEnemies

!create e2:Enemy
!e2.name := 'OCL'
!e2.weapon := w2
!insert (e2, w2) into enemyWeapons
!insert (p1, e2) into playerEnemies

!create e3:Enemy
!e3.name := 'SOIL'
!e3.weapon := w3
!insert (e3, w3) into enemyWeapons
!insert (p1, e3) into playerEnemies

!p1.initialize()