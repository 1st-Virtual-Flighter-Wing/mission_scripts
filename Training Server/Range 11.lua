_SETTINGS:SetPlayerMenuOff()

range_11_menu_root = MENU_MISSION:New("Range 11 A2A Training",range_root_menu11_15)

range_11_menu_BVR = MENU_MISSION:New("BVR",range_11_menu_root)
range_11_menu_WVR = MENU_MISSION:New("WVR",range_11_menu_root)
range_11_BVR_singleton = MENU_MISSION:New("Singleton",range_11_menu_BVR)
range_11_WVR_singleton = MENU_MISSION:New("Singleton",range_11_menu_WVR)
range_11_BVR_twoship = MENU_MISSION:New("Two Ship",range_11_menu_BVR)
range_11_WVR_twoship = MENU_MISSION:New("Two Ship",range_11_menu_WVR)

function BVRMIG212()

		BVRMIG212 = SPAWN:New( "BVR MIG212" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
BVRSingletonMig212 = MENU_MISSION_COMMAND:New("Spawn MiG-21",range_11_BVR_singleton,BVRMIG212)

function BVRMIG232()

		BVRMIG232 = SPAWN:New( "BVR MIG232" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
BVRSingletonMig232 = MENU_MISSION_COMMAND:New("Spawn MiG-23",range_11_BVR_singleton,BVRMIG232)

function BVRMIG292()

		BVRMIG292 = SPAWN:New( "BVR MIG292S" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
BVRSingletonMig292 = MENU_MISSION_COMMAND:New("Spawn MiG-29",range_11_BVR_singleton,BVRMIG292)

function BVRMIG312()

		BVRMIG312 = SPAWN:New( "BVR MIG312" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
BVRSingletonMig312 = MENU_MISSION_COMMAND:New("Spawn MiG-31",range_11_BVR_singleton,BVRMIG312)

function BVRSU272()

		BVRSU272 = SPAWN:New( "BVR SU272" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
BVRSingletonSU272 = MENU_MISSION_COMMAND:New("Spawn SU-27",range_11_BVR_singleton,BVRSU272)

function BVRJF172()

		BVRJF172 = SPAWN:New( "BVR JF172" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
BVRSingletonJF172 = MENU_MISSION_COMMAND:New("Spawn JF172",range_11_BVR_singleton,BVRJF172)

-------------BVR TwoShips--------------------------------------


function BVR2MIG212()

		BVR2MIG212 = SPAWN:New( "BVR 2MIG212" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
BVRTwoshipMig212 = MENU_MISSION_COMMAND:New("Spawn MiG-21",range_11_BVR_twoship,BVR2MIG212)

function BVR2MIG232()

		BVR2MIG232 = SPAWN:New( "BVR 2MIG232" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
BVRTwoshipMig232 = MENU_MISSION_COMMAND:New("Spawn MiG-23",range_11_BVR_twoship,BVR2MIG232)

function BVR2MIG292()

		BVR2MIG292 = SPAWN:New( "BVR 2MIG292S" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
BVRTwoshipMig292 = MENU_MISSION_COMMAND:New("Spawn MiG-29",range_11_BVR_twoship,BVR2MIG292)

function BVR2MIG312()

		BVR2MIG312 = SPAWN:New( "BVR 2MIG312" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
BVRTwoshipMig312 = MENU_MISSION_COMMAND:New("Spawn MiG-31",range_11_BVR_twoship,BVR2MIG312)

function BVR2SU272()

		BVR2SU272 = SPAWN:New( "BVR 2SU272" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
BVRTwoshipSU272 = MENU_MISSION_COMMAND:New("Spawn SU-27",range_11_BVR_twoship,BVR2SU272)

function BVR2JF172()

		BVR2JF172 = SPAWN:New( "BVR 2JF172" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
BVRTwoshipJF172 = MENU_MISSION_COMMAND:New("Spawn JF172",range_11_BVR_twoship,BVR2JF172)

----------------------WVR Singleton--------------------------------------------------------

function WVRMIG212()

		WVRMIG212 = SPAWN:New( "WVR MIG212" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
WVRSingletonMig212 = MENU_MISSION_COMMAND:New("Spawn MiG-21",range_11_WVR_singleton,WVRMIG212)

function WVRMIG232()

		WVRMIG232 = SPAWN:New( "WVR MIG232" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
WVRSingletonMig232 = MENU_MISSION_COMMAND:New("Spawn MiG-23",range_11_WVR_singleton,WVRMIG232)

function WVRMIG292()

		WVRMIG292 = SPAWN:New( "WVR MIG292S" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
WVRSingletonMig292 = MENU_MISSION_COMMAND:New("Spawn MiG-29",range_11_WVR_singleton,WVRMIG292)

function WVRMIG312()

		WVRMIG312 = SPAWN:New( "WVR MIG312" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
WVRSingletonMig312 = MENU_MISSION_COMMAND:New("Spawn MiG-31",range_11_WVR_singleton,WVRMIG312)

function WVRSU272()

		WVRMIG292 = SPAWN:New( "WVR SU272" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
WVRSingletonSU272 = MENU_MISSION_COMMAND:New("Spawn SU-27",range_11_WVR_singleton,WVRSU272)

function WVRJF172()

		WVRJF172 = SPAWN:New( "WVR JF172" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
WVRSingletonJF172 = MENU_MISSION_COMMAND:New("Spawn JF172",range_11_WVR_singleton,WVRJF172)

-----------------------WVR Twoship---------------------

function WVR2MIG212()

		WVR2MIG212 = SPAWN:New( "WVR 2MIG212" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
WVRTwoshipMig212 = MENU_MISSION_COMMAND:New("Spawn MiG-21",range_11_WVR_twoship,WVR2MIG212)

function WVR2MIG232()

		WVR2MIG232 = SPAWN:New( "WVR 2MIG232" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
WVRTwoshipMig232 = MENU_MISSION_COMMAND:New("Spawn MiG-23",range_11_WVR_twoship,WVR2MIG232)

function WVR2MIG292()

		WVR2MIG292 = SPAWN:New( "WVR 2MIG292S" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
WVRTwoshipMig292 = MENU_MISSION_COMMAND:New("Spawn MiG-29",range_11_WVR_twoship,WVR2MIG292)

function WVR2MIG312()

		WVR2MIG292 = SPAWN:New( "WVR 2MIG312" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
WVRTwoshipMig312 = MENU_MISSION_COMMAND:New("Spawn MiG-31",range_11_WVR_twoship,WVR2MIG312)

function WVR2SU272()

		WVR2SU272 = SPAWN:New( "WVR 2SU272" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
WVRTwoshipSU272 = MENU_MISSION_COMMAND:New("Spawn SU-27",range_11_WVR_twoship,WVR2SU272)

function WVR2JF172()

		BVRJF172 = SPAWN:New( "WVR 2JF172" )
		:InitCleanUp(60)
		:InitLimit( 10, 30 )
		:Spawn()
end
WVRTwoshipJF172 = MENU_MISSION_COMMAND:New("Spawn JF172",range_11_WVR_twoship,WVR2JF172)



---------------------------Random Spawn------------------------


function RandomCAPR11()
		
		ZoneTableR11 = { ZONE:New( "R11A" ), ZONE:New( "R11B" ), ZONE:New( "R11C" ), ZONE:New( "R11D" ), ZONE:New( "R11E" ) }
		
		TemplateTableR11 = { "WVR 2MIG212", "BVR 2MIG232", "BVR MIG292S", "WVR 2SU272", "BVR MIG312", "BVR JF172" }

		Spawn_RandomAAR11 = SPAWN:New( "Random AA Spawn2" )
			:InitLimit( 4, 2 )
			:InitRandomizeTemplate( TemplateTableR11 )
			:InitRandomizeZones( ZoneTableR11 )
			:SpawnScheduled( 2, .5 )

end
RandomcapspawnR11 = MENU_MISSION_COMMAND:New("Spawn Random",range_11_menu_root,RandomCAPR11)

trigger.action.outText("Range 11 Loaded ", 15)


