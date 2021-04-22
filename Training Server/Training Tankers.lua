_SETTINGS:SetPlayerMenuOff()

-- TANKERS --
tanker1 = SPAWN:New("TEXACO 1"):InitLimit( 2, 50 )
function tanker1spawn()
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
tanker1_menu_spawn = MENU_MISSION_COMMAND:New("Spawn Texaco 1",tanker_menu_blue1,tanker1spawn)

tanker2 = SPAWN:New("SHELL 1"):InitLimit( 2, 50 )
function tanker2spawn()
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
tanker2_menu_spawn = MENU_MISSION_COMMAND:New("Spawn Shell 1",tanker_menu_blue1,tanker2spawn)

tanker3 = SPAWN:New("TEXACO 2"):InitLimit( 2, 50 )
function tanker3spawn()
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
tanker3_menu_spawn = MENU_MISSION_COMMAND:New("Spawn Texaco 2",tanker_menu_blue2,tanker3spawn)


tanker4 = SPAWN:New("SHELL 2"):InitLimit( 2, 50 )
function tanker4spawn()
  tanker4:OnSpawnGroup(
    function (tanker4_group)
      tanker4_unit_fuel_scheduler = SCHEDULER:New(nil,function ()
        tanker4_unit = tanker4_group:GetUnit(1)
        if tanker4_unit
        then
          tanker4_unit_fuel = tanker4_unit:GetFuel()
          if tanker4_unit_fuel <= 0.3
          then
            tanker4_group:ClearTasks()
            tanker4_unit_fuel_scheduler:Stop()
            env.info(tanker4_group:GetName().." is low on fuel and RTB")
          end
        else
          tanker4_unit_fuel_scheduler:Stop()
        end
      end
      ,{},5,300)
    end):Spawn()
end
tanker4_menu_spawn = MENU_MISSION_COMMAND:New("Spawn Shell 2",tanker_menu_blue2,tanker4spawn)

tanker5 = SPAWN:New("TEXACO 3"):InitLimit( 2, 50 )
function tanker5spawn()
  tanker5:OnSpawnGroup(
    function (tanker5_group)
      tanker5_unit_fuel_scheduler = SCHEDULER:New(nil,function ()
        tanker5_unit = tanker5_group:GetUnit(1)
        if tanker5_unit
        then
          tanker5_unit_fuel = tanker5_unit:GetFuel()
          if tanker5_unit_fuel <= 0.3
          then
            tanker5_group:ClearTasks()
            tanker5_unit_fuel_scheduler:Stop()
            env.info(tanker5_group:GetName().." is low on fuel and RTB")
          end
        else
          tanker5_unit_fuel_scheduler:Stop()
        end
      end
      ,{},5,300)
    end):Spawn()
end
tanker5_menu_spawn = MENU_MISSION_COMMAND:New("Spawn Texaco 3",tanker_menu_blue3,tanker5spawn)

tanker6 = SPAWN:New("SHELL 3"):InitLimit( 2, 50 )
function tanker6spawn()
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
            env.info(tanker6_group:GetName().." is low on fuel and RTB")
          end
        else
          tanker6_unit_fuel_scheduler:Stop()
        end
      end
      ,{},5,300)
    end):Spawn()
end
tanker6_menu_spawn = MENU_MISSION_COMMAND:New("Spawn Shell 3",tanker_menu_blue3,tanker6spawn)

tanker7 = SPAWN:New("ARCO 3"):InitLimit( 2, 50 )
function tanker7spawn()
  tanker7:OnSpawnGroup(
    function (tanker7_group)
      tanker7_unit_fuel_scheduler = SCHEDULER:New(nil,function ()
        tanker7_unit = tanker7_group:GetUnit(1)
        if tanker7_unit
        then
          tanker7_unit_fuel = tanker7_unit:GetFuel()
          if tanker7_unit_fuel <= 0.3
          then
            tanker7_group:ClearTasks()
            tanker7_unit_fuel_scheduler:Stop()
            env.info(tanker7_group:GetName().." is low on fuel and RTB")
          end
        else
          tanker7_unit_fuel_scheduler:Stop()
        end
      end
      ,{},5,300)
    end):Spawn()
end
tanker7_menu_spawn = MENU_MISSION_COMMAND:New("Spawn Arco 3",tanker_menu_blue3,tanker7spawn)

tanker8 = SPAWN:New("TEXACO 4"):InitLimit( 2, 50 )
function tanker8spawn()
  tanker8:OnSpawnGroup(
    function (tanker8_group)
      tanker8_unit_fuel_scheduler = SCHEDULER:New(nil,function ()
        tanker8_unit = tanker8_group:GetUnit(1)
        if tanker8_unit
        then
          tanker8_unit_fuel = tanker8_unit:GetFuel()
          if tanker8_unit_fuel <= 0.3
          then
            tanker8_group:ClearTasks()
            tanker8_unit_fuel_scheduler:Stop()
            env.info(tanker8_group:GetName().." is low on fuel and RTB")
          end
        else
          tanker8_unit_fuel_scheduler:Stop()
        end
      end
      ,{},5,300)
    end):Spawn()
end
tanker8_menu_spawn = MENU_MISSION_COMMAND:New("Spawn Texaco 4",tanker_menu_blue4,tanker8spawn)

tanker9 = SPAWN:New("SHELL 4"):InitLimit( 2, 50 )
function tanker9spawn()
  tanker9:OnSpawnGroup(
    function (tanker9_group)
      tanker9_unit_fuel_scheduler = SCHEDULER:New(nil,function ()
        tanker9_unit = tanker9_group:GetUnit(1)
        if tanker9_unit
        then
          tanker9_unit_fuel = tanker9_unit:GetFuel()
          if tanker9_unit_fuel <= 0.3
          then
            tanker9_group:ClearTasks()
            tanker9_unit_fuel_scheduler:Stop()
            env.info(tanker9_group:GetName().." is low on fuel and RTB")
          end
        else
          tanker9_unit_fuel_scheduler:Stop()
        end
      end
      ,{},5,300)
    end):Spawn()
end
tanker9_menu_spawn = MENU_MISSION_COMMAND:New("Spawn Shell 4",tanker_menu_blue4,tanker9spawn)

tanker10 = SPAWN:New("ARCO 4"):InitLimit( 2, 50 )
function tanker10spawn()
  tanker10:OnSpawnGroup(
    function (tanker10_group)
      tanker10_unit_fuel_scheduler = SCHEDULER:New(nil,function ()
        tanker10_unit = tanker10_group:GetUnit(1)
        if tanker10_unit
        then
          tanker10_unit_fuel = tanker10_unit:GetFuel()
          if tanker10_unit_fuel <= 0.3
          then
            tanker10_group:ClearTasks()
            tanker10_unit_fuel_scheduler:Stop()
            env.info(tanker10_group:GetName().." is low on fuel and RTB")
          end
        else
          tanker10_unit_fuel_scheduler:Stop()
        end
      end
      ,{},5,300)
    end):Spawn()
end
tanker10_menu_spawn = MENU_MISSION_COMMAND:New("Spawn Arco 4",tanker_menu_blue4,tanker10spawn)

do

Spawn_AWACS = SPAWN:New( "OVERLORD" ):InitLimit( 1, 20 )

Spawn_AWACS:InitRepeatOnEngineShutDown()
Spawn_AWACS:InitDelayOff()

Spawn_AWACS :SpawnScheduled( 60, 0 ):InitRepeatOnEngineShutDown()

end

do

Spawn_DARKSTAR = SPAWN:New( "DARKSTAR" ):InitLimit( 1, 20 )

Spawn_DARKSTAR:InitRepeatOnEngineShutDown()
Spawn_DARKSTAR:InitDelayOff()

Spawn_DARKSTAR :SpawnScheduled( 60, 0 ):InitRepeatOnEngineShutDown()

end

