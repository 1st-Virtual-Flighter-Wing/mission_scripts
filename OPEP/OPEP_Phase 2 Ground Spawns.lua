--Ground Units Spawning on map
-- 
-- Available Groups:
-- - Spawn Uragan Arty 				- Wheeled MRLS 			- 10 units per group 	- 2 groups
-- - Spawn Akatsia Arty 			- Self Propelled guns 	- 10 units per group	- 2 groups
-- - Spawn Grad Arty 				- Wheeled Rocket arty 	- 10 units per group	- 3 groups
-- - Spawn Syria Tank Platoon 		- Tank Platoon 			- 10 unit per group		- 3 groups
-- - Spawn Syria Infantry 			- Infantry Platoon 		- 20 units per group	- 5 groups
-- - Spawn Syria Mech Infantry platoon 						- 25 units per group	- 5 groups

-- Zone Tables
P1_Arty_ZoneTable = {
	ZONE:New("P1_R_2"), 
	ZONE:New("P1_R_5"), 
	ZONE:New("P1_R_6"), 
	ZONE:New("P1_R_7"), 
	ZONE:New("P1_R_9"), 
	ZONE:New("P1_R_10")}
	
P1_Armor_ZoneTable = {
	ZONE:New("P1_R_1"), 
	ZONE:New("P1_R_5"), 
	ZONE:New("P1_R_6"), 
	ZONE:New("P1_R_7"), 
	ZONE:New("P1_R_8"),
	ZONE:New("P1_R_9"), 
	ZONE:New("P1_R_10")}

P1_Infantry_ZoneTable = {
	ZONE:New("P1_R_1"), 
	ZONE:New("P1_R_3"), 
	ZONE:New("P1_R_4"), 
	ZONE:New("P1_R_6"), 
	ZONE:New("P1_R_7"),
	ZONE:New("P1_R_8"), 
	ZONE:New("P1_R_9")}

P2_NW = {
	ZONE:New("P2_1"), 
	ZONE:New("P2_3"),
	ZONE:New("P2_2"),
	ZONE:New("P2_5"),
	ZONE:New("P2_8")}

P2_NE = {
	ZONE:New("P2_8"),
	ZONE:New("P2_10"),
	ZONE:New("P2_9"),
	ZONE:New("P2_5")}

P2_SW = {
	ZONE:New("P2_3"),
	ZONE:New("P2_12"),
	ZONE:New("P2_4"),
	ZONE:New("P2_6"),
	ZONE:New("P2_7")}
	
P2_SE = {
	ZONE:New("P2_3"),
	ZONE:New("P2_6"),
	ZONE:New("P2_7"),
	ZONE:New("P2_11")}

P2_N = {
	ZONE:New("P2_1"), 
	ZONE:New("P2_3"),
	ZONE:New("P2_2"),
	ZONE:New("P2_5"),
	ZONE:New("P2_8"),
	ZONE:New("P2_8"),
	ZONE:New("P2_10"),
	ZONE:New("P2_9"),
	ZONE:New("P2_5")}	

P2_S = {
	ZONE:New("P2_3"),
	ZONE:New("P2_12"),
	ZONE:New("P2_4"),
	ZONE:New("P2_7"),
	ZONE:New("P2_6"),
	ZONE:New("P2_7"),
	ZONE:New("P2_11")}

P2_All = {
	ZONE:New("P2_1"),
	ZONE:New("P2_2"),
	ZONE:New("P2_3"),
	ZONE:New("P2_4"),
	ZONE:New("P2_5"),
	ZONE:New("P2_6"),
	ZONE:New("P2_7"),
	ZONE:New("P2_8"),
	ZONE:New("P2_9"),
	ZONE:New("P2_10"),
	ZONE:New("P2_11"),
	ZONE:New("P2_12")}
		
P3_NW = {
	ZONE:New("P2_4"),
	ZONE:New("P2_7"),
	ZONE:New("P3_2"),
	ZONE:New("P3_4"),
	ZONE:New("P3_5"),
	ZONE:New("P3_6"),
	ZONE:New("P3_10"),
	ZONE:New("P3_8"),
	ZONE:New("P3_9")}
	
P3_NE = {
	ZONE:New("P3_13"),
	ZONE:New("P3_11"),
	ZONE:New("P3_14"),
	ZONE:New("P2_11")}
	
P3_SE = {
	ZONE:New("P3_7"),
	ZONE:New("P3_12"),
	ZONE:New("P3_13"),
	ZONE:New("P3_14")}
	

Spawn_Arty_1 = SPAWN:New("Spawn Uragan Arty")
	Spawn_Arty_1:InitLimit(20,20)
	Spawn_Arty_1:InitRandomizeZones(P2_NW)
	Spawn_Arty_1:SpawnScheduled(5,.5)
	
Spawn_Arty_2 = SPAWN:New("Spawn Akatsia Arty")
	Spawn_Arty_2:InitLimit(10,10)
	Spawn_Arty_2:InitRandomizeZones(P2_SW)
	Spawn_Arty_2:SpawnScheduled(5,.5)

Spawn_Arty_3 = SPAWN:New("Spawn Grad Arty")
	Spawn_Arty_3:InitLimit(30,30)
	Spawn_Arty_3:InitRandomizeZones(P2_N)
	Spawn_Arty_3:SpawnScheduled(5,.5)
	
Spawn_Tanks_4 = SPAWN:New("Spawn Syria Tank Platoon")
	Spawn_Tanks_4:InitLimit(30,30)
	Spawn_Tanks_4:InitRandomizeZones(P2_All)
	Spawn_Tanks_4:SpawnScheduled(5,.5)
	
Spawn_MechInf_5 = SPAWN:New("Spawn Syria Mech Infantry")
	Spawn_MechInf_5:InitLimit(125,125)
	Spawn_MechInf_5:InitRandomizeZones(P2_All)
	Spawn_MechInf_5:SpawnScheduled(5,.5)
	
Spawn_Inf_6 = SPAWN:New("Spawn Syria Infantry")
	Spawn_Inf_6:InitLimit(100,100)
	Spawn_Inf_6:InitRandomizeZones(P2_All)
	Spawn_Inf_6:SpawnScheduled(5,.5)