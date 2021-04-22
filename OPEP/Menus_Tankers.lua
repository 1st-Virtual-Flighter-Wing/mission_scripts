_SETTINGS:SetPlayerMenuOff()
-------------------------------------------------------------------------------------
Logistics_root_menu = MENU_MISSION:New("Logistic Support")
Tactical_Root_Menu = MENU_MISSION:New("Tactical Support")

tanker_menu_blue1 = MENU_MISSION:New("Refueling Tracks", Logistics_root_menu )
SEAD_Menu_Blue1 = MENU_MISSION:New("SEAD Flights", Tactical_Root_Menu)
TARCAP_Menu_Blue1 = MENU_MISSION:New("TARCAP Flights", Tactical_Root_Menu)
TASMO_Menu_Blue1 = MENU_MISSION:New("TASMO Flights", Tactical_Root_Menu)
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
------------------------------Refueling Tracks---------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
	tanker1 = SPAWN:New("AR848"):InitLimit( 1, 50 )
	local function tanker1spawn()
	  tanker1:OnSpawnGroup(
		function (tanker1_group)
		  tanker1_unit_fuel_scheduler = SCHEDULER:New(nil,function ()
			tanker1_unit = tanker1_group:GetUnit(1)
			if tanker1_unit
			then
			  tanker1_unit_fuel = tanker1_unit:GetFuel()
			  if tanker1_unit_fuel <= 0.3
			  then
				tanker1_group:ClearTasks()
				tanker1_unit_fuel_scheduler:Stop()
				env.info(tanker1_group:GetName().." is low on fuel and RTB")
			  end
			else
			  tanker1_unit_fuel_scheduler:Stop()
			end
		  end
		  ,{},5,300)
		end):Spawn()
	end
	tanker1_menu_spawn = MENU_MISSION_COMMAND:New("AR848",tanker_menu_blue1,tanker1spawn)

	tanker2 = SPAWN:New("AR508"):InitLimit( 1, 50 )
	local function tanker2spawn()
	  tanker2:OnSpawnGroup(
		function (tanker2_group)
		  tanker2_unit_fuel_scheduler = SCHEDULER:New(nil,function ()
			tanker2_unit = tanker2_group:GetUnit(1)
			if tanker2_unit
			then
			  tanker2_unit_fuel = tanker2_unit:GetFuel()
			  if tanker2_unit_fuel <= 0.3
			  then
				tanker2_group:ClearTasks()
				tanker2_unit_fuel_scheduler:Stop()
				env.info(tanker2_group:GetName().." is low on fuel and RTB")
			  end
			else
			  tanker2_unit_fuel_scheduler:Stop()
			end
		  end
		  ,{},5,300)
		end):Spawn()
	end
	tanker2_menu_spawn = MENU_MISSION_COMMAND:New("AR508",tanker_menu_blue1,tanker2spawn)

	tanker3 = SPAWN:New("AR836"):InitLimit( 1, 50 )
	local function tanker3spawn()
	  tanker3:OnSpawnGroup(
		function (tanker3_group)
		  tanker3_unit_fuel_scheduler = SCHEDULER:New(nil,function ()
			tanker3_unit = tanker3_group:GetUnit(1)
			if tanker3_unit
			then
			  tanker3_unit_fuel = tanker3_unit:GetFuel()
			  if tanker3_unit_fuel <= 0.3
			  then
				tanker3_group:ClearTasks()
				tanker3_unit_fuel_scheduler:Stop()
				env.info(tanker3_group:GetName().." is low on fuel and RTB")
			  end
			else
			  tanker3_unit_fuel_scheduler:Stop()
			end
		  end
		  ,{},5,300)
		end):Spawn()
	end
	tanker3_menu_spawn = MENU_MISSION_COMMAND:New("AR836",tanker_menu_blue1,tanker3spawn)

	-- tanker4 = SPAWN:New("AR418 14"):InitLimit( 2, 50 )
	-- function tanker4spawn()
	  -- tanker4:OnSpawnGroup(
		-- function (tanker4_group)
		  -- tanker4_unit_fuel_scheduler = SCHEDULER:New(nil,function ()
			-- tanker4_unit = tanker4_group:GetUnit(1)
			-- if tanker4_unit
			-- then
			  -- tanker4_unit_fuel = tanker4_unit:GetFuel()
			  -- if tanker4_unit_fuel <= 0.3
			  -- then
				-- tanker4_group:ClearTasks()
				-- tanker4_unit_fuel_scheduler:Stop()
				-- env.info(tanker4_group:GetName().." is low on fuel and RTB")
			  -- end
			-- else
			  -- tanker4_unit_fuel_scheduler:Stop()
			-- end
		  -- end
		  -- ,{},5,300)
		-- end):Spawn()
	-- end
	-- tanker4_menu_spawn = MENU_MISSION_COMMAND:New("AR418 14K S-3B",tanker_menu_blue1,tanker4spawn)

	-- tanker5 = SPAWN:New("AR418 16"):InitLimit( 2, 50 )
	-- function tanker5spawn()
	  -- tanker5:OnSpawnGroup(
		-- function (tanker5_group)
		  -- tanker5_unit_fuel_scheduler = SCHEDULER:New(nil,function ()
			-- tanker5_unit = tanker5_group:GetUnit(1)
			-- if tanker5_unit
			-- then
			  -- tanker5_unit_fuel = tanker5_unit:GetFuel()
			  -- if tanker5_unit_fuel <= 0.3
			  -- then
				-- tanker5_group:ClearTasks()
				-- tanker5_unit_fuel_scheduler:Stop()
				-- env.info(tanker5_group:GetName().." is low on fuel and RTB")
			  -- end
			-- else
			  -- tanker5_unit_fuel_scheduler:Stop()
			-- end
		  -- end
		  -- ,{},5,300)
		-- end):Spawn() 
	-- end
	-- tanker5_menu_spawn = MENU_MISSION_COMMAND:New("AR418 16K S-3B",tanker_menu_blue1,tanker5spawn)
	
	tanker6 = SPAWN:New("AR418 17"):InitLimit( 2, 50 )
	local function tanker6spawn()
	  tanker6:OnSpawnGroup(
		function (tanker6_group)
		  tanker6_unit_fuel_scheduler = SCHEDULER:New(nil,function ()
			tanker6_unit = tanker6_group:GetUnit(1)
			if tanker6_unit
			then
			  tanker6_unit_fuel = tanker6_unit:GetFuel()
			  if tanker6_unit_fuel <= 0.3
			  then
				tanker6_group:ClearTasks()
				tanker6_unit_fuel_scheduler:Stop()
				env.info(tanker5_group:GetName().." is low on fuel and RTB")
			  end
			else
			  tanker6_unit_fuel_scheduler:Stop()
			end
		  end
		  ,{},5,300)
		end):Spawn() 
	end
	tanker6_menu_spawn = MENU_MISSION_COMMAND:New("AR418 17K - C-130",tanker_menu_blue1,tanker6spawn)
	

-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
------------------------------Package Flights----------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
local function BSead_SW() --Start the function

	BSead_SW = SPAWN:New( "BSead_SW" ) -- Define the Flight
	:InitCleanUp(30) -- Clean up the flight
	:InitLimit( 4, 12 ) -- Max alive and Max for instance
	:Spawn()
end
Launch_BSead_SW = MENU_MISSION_COMMAND:New("Dodge 5 (C,D,4,7)", SEAD_Menu_Blue1, BSead_SW)

local function BSead_SE() --Start the function

	BSead_SE = SPAWN:New( "BSead_SE" ) -- Define the Flight
	:InitCleanUp(30) -- Clean up the flight
	:InitLimit( 4, 12 ) -- Max alive and Max for instance
	:Spawn()
end
Launch_BSead_SW = MENU_MISSION_COMMAND:New("Dodge 6 (5,6,8,9)", SEAD_Menu_Blue1, BSead_SE)

function BSead_NE() --Start the function

	BSead_NE = SPAWN:New( "BSead_NE" ) -- Define the Flight
	:InitCleanUp(30) -- Clean up the flight
	:InitLimit( 4, 12 ) -- Max alive and Max for instance
	:Spawn()
end
Launch_BSead_NW = MENU_MISSION_COMMAND:New("Dodge 7 (2,3,5,6)", SEAD_Menu_Blue1, BSead_NE)

local function Btasmo_1() --Start the function

	Btasmo_1 = SPAWN:New( "Btasmo_1" ) -- Define the Flight
	:InitCleanUp(30) -- Clean up the flight
	:InitLimit( 4, 12 ) -- Max alive and Max for instance
	:Spawn()
end
Launch_Btasmo_1 = MENU_MISSION_COMMAND:New("Dodge 8", TASMO_Menu_Blue1, Btasmo_1)

local function Btasmo_2() --Start the function

	Btasmo_2 = SPAWN:New( "Btasmo_2" ) -- Define the Flight
	:InitCleanUp(30) -- Clean up the flight
	:InitLimit( 4, 12 ) -- Max alive and Max for instance
	:Spawn()
end
Launch_Btasmo_2 = MENU_MISSION_COMMAND:New("Dodge 9", TASMO_Menu_Blue1, Btasmo_2)

local function Btarcap_SW() --Start the function

	Btarcap_SW = SPAWN:New( "Btarcap_SW" ) -- Define the Flight
	:InitCleanUp(30) -- Clean up the flight
	:InitLimit( 4, 12 ) -- Max alive and Max for instance
	:Spawn()
end
Launch_Btarcap_SW = MENU_MISSION_COMMAND:New("Sprinfield 5 (C,D,4,7)", TARCAP_Menu_Blue1, Btarcap_SW)

local function Btarcap_SE() --Start the function

	Btarcap_SE = SPAWN:New( "Btarcap_SE" ) -- Define the Flight
	:InitCleanUp(30) -- Clean up the flight
	:InitLimit( 4, 12 ) -- Max alive and Max for instance
	:Spawn()
end
Launch_Btarcap_SE = MENU_MISSION_COMMAND:New("Sprinfield 6 (5,6,8,9)", TARCAP_Menu_Blue1, Btarcap_SE)

local function Btarcap_NE() --Start the function

	Btarcap_NE = SPAWN:New( "Btarcap_NE" ) -- Define the Flight
	:InitCleanUp(30) -- Clean up the flight
	:InitLimit( 4, 12 ) -- Max alive and Max for instance
	:Spawn()
end
Launch_Btarcap_NE = MENU_MISSION_COMMAND:New("Sprinfield 7 (2,3,5,6)", TARCAP_Menu_Blue1, Btarcap_NE)

	-- tanker6 = SPAWN:New("AR817"):InitLimit( 1, 2 )
	-- function tanker6spawn()
	  -- tanker6:OnSpawnGroup(
		-- function (tanker5_group)
		  -- tanker6_unit_fuel_scheduler = SCHEDULER:New(nil,function ()
			-- tanker6_unit = tanker5_group:GetUnit(1)
			-- if tanker6_unit
			-- then
			  -- tanker6_unit_fuel = tanker6_unit:GetFuel()
			  -- if tanker6_unit_fuel <= 0.3
			  -- then
				-- tanker6_group:ClearTasks()
				-- tanker6_unit_fuel_scheduler:Stop()
				-- env.info(tanker5_group:GetName().." is low on fuel and RTB")
			  -- end
			-- else
			  -- tanker6_unit_fuel_scheduler:Stop()
			-- end
		  -- end
		  -- ,{},5,300)
		-- end):Spawn() 
	-- end
	-- tanker6_menu_spawn = MENU_MISSION_COMMAND:New("AR817",Package_Menu_Blue1,tanker6spawn)