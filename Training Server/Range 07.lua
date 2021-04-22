_SETTINGS:SetPlayerMenuOff()

range_7_menu_root = MENU_MISSION:New("Range 7 A2A Training",range_root_menu6_10)

range_7_menu_BVR = MENU_MISSION:New("BVR",range_7_menu_root)
range_7_menu_WVR = MENU_MISSION:New("WVR",range_7_menu_root)
range_7_BVR_singleton = MENU_MISSION:New("Singleton",range_7_menu_BVR)
range_7_WVR_singleton = MENU_MISSION:New("Singleton",range_7_menu_WVR)
range_7_BVR_twoship = MENU_MISSION:New("Two Ship",range_7_menu_BVR)
range_7_WVR_twoship = MENU_MISSION:New("Two Ship",range_7_menu_WVR)

function BVRMIG21()

		BVRMIG21 = SPAWN:New( "BVR MIG21" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
BVRSingletonMig21 = MENU_MISSION_COMMAND:New("Spawn MiG-21",range_7_BVR_singleton,BVRMIG21)

function BVRMIG23()

		BVRMIG23 = SPAWN:New( "BVR MIG23" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
BVRSingletonMig23 = MENU_MISSION_COMMAND:New("Spawn MiG-23",range_7_BVR_singleton,BVRMIG23)

function BVRMIG29()

		BVRMIG29 = SPAWN:New( "BVR MIG29S" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
BVRSingletonMig29 = MENU_MISSION_COMMAND:New("Spawn MiG-29",range_7_BVR_singleton,BVRMIG29)

function BVRMIG31()

		BVRMIG31 = SPAWN:New( "BVR MIG31" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
BVRSingletonMig31 = MENU_MISSION_COMMAND:New("Spawn MiG-31",range_7_BVR_singleton,BVRMIG31)

function BVRSU27()

		BVRSU27 = SPAWN:New( "BVR SU27" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
BVRSingletonSU27 = MENU_MISSION_COMMAND:New("Spawn SU-27",range_7_BVR_singleton,BVRSU27)

function BVRJF17()

		BVRJF17 = SPAWN:New( "BVR JF17" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
BVRSingletonJF17 = MENU_MISSION_COMMAND:New("Spawn JF17",range_7_BVR_singleton,BVRJF17)

-------------BVR TwoShips--------------------------------------


function BVR2MIG21()

		BVR2MIG21 = SPAWN:New( "BVR 2MIG21" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
BVRTwoshipMig21 = MENU_MISSION_COMMAND:New("Spawn MiG-21",range_7_BVR_twoship,BVR2MIG21)

function BVR2MIG23()

		BVR2MIG23 = SPAWN:New( "BVR 2MIG23" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
BVRTwoshipMig23 = MENU_MISSION_COMMAND:New("Spawn MiG-23",range_7_BVR_twoship,BVR2MIG23)

function BVR2MIG29()

		BVR2MIG29 = SPAWN:New( "BVR 2MIG29S" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
BVRTwoshipMig29 = MENU_MISSION_COMMAND:New("Spawn MiG-29",range_7_BVR_twoship,BVR2MIG29)

function BVR2MIG31()

		BVR2MIG31 = SPAWN:New( "BVR 2MIG31" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
BVRTwoshipMig31 = MENU_MISSION_COMMAND:New("Spawn MiG-31",range_7_BVR_twoship,BVR2MIG31)

function BVR2SU27()

		BVR2SU27 = SPAWN:New( "BVR 2SU27" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
BVRTwoshipSU27 = MENU_MISSION_COMMAND:New("Spawn SU-27",range_7_BVR_twoship,BVR2SU27)

function BVR2JF17()

		BVR2JF17 = SPAWN:New( "BVR 2JF17" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
BVRTwoshipJF17 = MENU_MISSION_COMMAND:New("Spawn JF17",range_7_BVR_twoship,BVR2JF17)

----------------------WVR Singleton--------------------------------------------------------

function WVRMIG21()

		WVRMIG21 = SPAWN:New( "WVR MIG21" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
WVRSingletonMig21 = MENU_MISSION_COMMAND:New("Spawn MiG-21",range_7_WVR_singleton,WVRMIG21)

function WVRMIG23()

		WVRMIG23 = SPAWN:New( "WVR MIG23" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
WVRSingletonMig23 = MENU_MISSION_COMMAND:New("Spawn MiG-23",range_7_WVR_singleton,WVRMIG23)

function WVRMIG29()

		WVRMIG29 = SPAWN:New( "WVR MIG29S" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
WVRSingletonMig29 = MENU_MISSION_COMMAND:New("Spawn MiG-29",range_7_WVR_singleton,WVRMIG29)

function WVRMIG31()

		WVRMIG31 = SPAWN:New( "WVR MIG31" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
WVRSingletonMig31 = MENU_MISSION_COMMAND:New("Spawn MiG-31",range_7_WVR_singleton,WVRMIG31)

function WVRSU27()

		WVRMIG29 = SPAWN:New( "WVR SU27" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
WVRSingletonSU27 = MENU_MISSION_COMMAND:New("Spawn SU-27",range_7_WVR_singleton,WVRSU27)

function WVRJF17()

		WVRJF17 = SPAWN:New( "WVR JF17" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
WVRSingletonJF17 = MENU_MISSION_COMMAND:New("Spawn JF17",range_7_WVR_singleton,WVRJF17)

-----------------------WVR Twoship---------------------

function WVR2MIG21()

		WVR2MIG21 = SPAWN:New( "WVR 2MIG21" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
WVRTwoshipMig21 = MENU_MISSION_COMMAND:New("Spawn MiG-21",range_7_WVR_twoship,WVR2MIG21)

function WVR2MIG23()

		WVR2MIG23 = SPAWN:New( "WVR 2MIG23" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
WVRTwoshipMig23 = MENU_MISSION_COMMAND:New("Spawn MiG-23",range_7_WVR_twoship,WVR2MIG23)

function WVR2MIG29()

		WVR2MIG29 = SPAWN:New( "WVR 2MIG29S" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
WVRTwoshipMig29 = MENU_MISSION_COMMAND:New("Spawn MiG-29",range_7_WVR_twoship,WVR2MIG29)

function WVR2MIG31()

		WVR2MIG29 = SPAWN:New( "WVR 2MIG31" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
WVRTwoshipMig31 = MENU_MISSION_COMMAND:New("Spawn MiG-31",range_7_WVR_twoship,WVR2MIG31)

function WVR2SU27()

		WVR2SU27 = SPAWN:New( "WVR 2SU27" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
WVRTwoshipSU27 = MENU_MISSION_COMMAND:New("Spawn SU-27",range_7_WVR_twoship,WVR2SU27)

function WVR2JF17()

		BVRJF17 = SPAWN:New( "WVR 2JF17" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
WVRTwoshipJF17 = MENU_MISSION_COMMAND:New("Spawn JF17",range_7_WVR_twoship,WVR2JF17)



---------------------------Random Spawn------------------------


function RandomCAP()
		
		ZoneTable1 = { ZONE:New( "R7A" ), ZONE:New( "R7B" ), ZONE:New( "R7C" ), ZONE:New( "R7D" ), ZONE:New( "R7E" ), ZONE:New( "R7F" ) }
		
		TemplateTable1 = { "WVR 2MIG21", "BVR 2MIG23", "BVR MIG29S", "WVR 2SU27", "BVR MIG31", "BVR JF17" }

		Spawn_RandomAA_1 = SPAWN:New( "Random AA Spawn" )
			:InitLimit( 4, 2 )
			:InitRandomizeTemplate( TemplateTable1 )
			:InitRandomizeZones( ZoneTable1 )
			:SpawnScheduled( 2, .5 )

end
Randomcapspawn = MENU_MISSION_COMMAND:New("Spawn Random",range_7_menu_root,RandomCAP)

trigger.action.outText("Range 7 Loaded ", 15)


