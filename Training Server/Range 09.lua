range_9_menu_root = MENU_MISSION:New("Range 9 CAS",range_root_menu6_10)
---BASIC AR Tasking at Range9

function range_9_AR()

		ZoneTable2 = { ZONE:New( "Zone9A" ), ZONE:New( "Zone9B" ), ZONE:New( "Zone9C" ), ZONE:New( "Zone9D" ), ZONE:New( "Zone9E" ), ZONE:New( "Zone9F" ), ZONE:New( "Zone9G" ), ZONE:New( "Zone9H" ) }
		
		TemplateTable2 = { "ZZ1", "ZZ2", "ZZ3", "ZZ4", "ZZ5", "ZZ6", "ZZ7", "ZZ8", "ZZ9", "ZZ10", "ZZ11", "ZZ12", "ZZ13", "ZZ14", "ZZ15", "ZZ16" }

		Spawn_Vehicle_2 = SPAWN:New( "Ground_Spawn_Template" )
			:InitLimit( 40, 2 )
			:InitRandomizeTemplate( TemplateTable2 )
			:InitRandomizeZones( ZoneTable2 )
			:SpawnScheduled( 3, .5 )

end

range_9_AR_menu = MENU_MISSION_COMMAND:New("Spawn RED Units",range_9_menu_root,range_9_AR)

function Range9JTAC()
		
		Spawn_JTAC = SPAWN:New( "Range 9 JTAC" )
			:InitLimit( 1, 0 )
		Group_Vehicle1 = Spawn_JTAC:Spawn()
		trigger.action.outText("JTAC Anvil on 241.10",10)

end

range_9_JTAC = MENU_MISSION_COMMAND:New("Spawn Range9 JTAC",range_9_menu_root,Range9JTAC)