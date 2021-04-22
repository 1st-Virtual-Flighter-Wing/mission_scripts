local range_12_menu_root = MENU_MISSION:New("Range 12 SEAD Training",range_root_menu11_15)
local range_12_menu_more = MENU_MISSION:New("more ...",range_12_menu_root)
---BASIC SEAD
--



local ActiveThreatSites = {}

function Sam_Footprints()
  if #ActiveThreatSites ~= 0
  then
    for _,activeSam in ipairs(ActiveThreatSites) do
      MessageToAll("Active SAM-Sites : "..activeSam,5)
    end
  else
    MessageToAll("No Sam Sites Active",5)
  end
end

function InactiveThreadSites(ActiveThreatSites, SamtoRemove)
  for i,SamtoRemove in ipairs(ActiveThreatSites)
  do
    if SamtoRemove == SamtoRemove
    then
      table.remove(ActiveThreatSites,i)
      env.info(SamtoRemove.." with index "..i.." removed from ActiveThreatSites")
    end
  end
end


-- Deactivate all Threatsites at the start --

local SEAD_enabled_Sams_range2 = SET_GROUP:New()

local R12SA10 = SPAWN:New("R12SA10"):Spawn()
SEAD_enabled_Sams_range2:AddGroup(R12SA10)
local R12SA11 = SPAWN:New("R12SA11"):Spawn()
SEAD_enabled_Sams_range2:AddGroup(R12SA11)
local R12SA2 = SPAWN:New("R12SA2"):Spawn()
SEAD_enabled_Sams_range2:AddGroup(R12SA2)
local R12SA15 = SPAWN:New("R12SA15"):Spawn()
SEAD_enabled_Sams_range2:AddGroup(R12SA15)
local R12SA6 = SPAWN:New("R12SA6"):Spawn()
SEAD_enabled_Sams_range2:AddGroup(R12SA6)
local R12SA8 = SPAWN:New("R12SA8"):Spawn()
SEAD_enabled_Sams_range2:AddGroup(R12SA8)
local R12SA3 = SPAWN:New("R12SA3"):Spawn()
SEAD_enabled_Sams_range2:AddGroup(R12SA3)
local R12HAWK = SPAWN:New("R12HAWK"):Spawn()
SEAD_enabled_Sams_range2:AddGroup(R12HAWK)
local R12SA9 = SPAWN:New("R12SA9"):Spawn()
SEAD_enabled_Sams_range2:AddGroup(R12SA9)
local R12SA13 = SPAWN:New("R12SA13"):Spawn()
SEAD_enabled_Sams_range2:AddGroup(R12SA13)
local R12SA18 = SPAWN:New("R12SA18"):Spawn()
SEAD_enabled_Sams_range2:AddGroup(R12SA18)

R12SA10:SetAIOff()
R12SA11:SetAIOff()
R12SA2:SetAIOff()
R12SA15:SetAIOff()
R12SA6:SetAIOff()
R12SA8:SetAIOff()
R12SA3:SetAIOff()
R12HAWK:SetAIOff()
R12SA9:SetAIOff()
R12SA13:SetAIOff()
R12SA18:SetAIOff()


function R12SA10_threat_on()
  if R12SA10 then
    R12SA10:SetAIOn()
    Menu_R12SA10_On:Remove()
    Menu_R12SA10_Off = MENU_MISSION_COMMAND:New("Deactivate SA-10",range_12_menu_root,R12SA10_threat_off)
    table.insert(ActiveThreatSites,"Range 6 SA-10")
  end
end

function R12SA10_threat_off()
  if R12SA10 then
    R12SA10:SetAIOff()
    Menu_R12SA10_Off:Remove()
    Menu_R12SA10_On = MENU_MISSION_COMMAND:New("Activate SA-10",range_12_menu_root,R12SA10_threat_on)
    InactiveThreadSites(ActiveThreatSites, "Range 6 SA-10")
  end
end

function R12SA11_threat_on()
  if R12SA11 then
    R12SA11:SetAIOn()
    Menu_R12SA11_On:Remove()
    Menu_R12SA11_Off = MENU_MISSION_COMMAND:New("Deactivate SA-11",range_12_menu_root,R12SA11_threat_off)
    table.insert(ActiveThreatSites,"Range 6 SA-11")
  end
end

function R12SA11_threat_off()
  if R12SA11 then
    R12SA11:SetAIOff()
    Menu_R12SA11_Off:Remove()
    Menu_R12SA11_On = MENU_MISSION_COMMAND:New("Activate SA-11",range_12_menu_root,R12SA11_threat_on)
    InactiveThreadSites(ActiveThreatSites, "Range 6 SA-11")
  end
end

function R12SA2_threat_on()
  if R12SA2 then
    R12SA2:SetAIOn()
    Menu_R12SA2_On:Remove()
    Menu_R12SA2_Off = MENU_MISSION_COMMAND:New("Deactivate SA-2",range_12_menu_root,R12SA2_threat_off)
    table.insert(ActiveThreatSites,"Range 6 SA-2")
  end
end

function R12SA2_threat_off()
  if R12SA2 then
    R12SA2:SetAIOff()
    Menu_R12SA2_Off:Remove()
    Menu_R12SA2_On = MENU_MISSION_COMMAND:New("Activate SA-2",range_12_menu_root,R12SA2_threat_on)
    InactiveThreadSites(ActiveThreatSites, "Range 6 SA-2")
  end
end

function R12SA15_threat_on()
  if R12SA15 then
    R12SA15:SetAIOn()
    Menu_R12SA15_On:Remove()
    Menu_R12SA15_Off = MENU_MISSION_COMMAND:New("Deactivate SA-15",range_12_menu_root,R12SA15_threat_off)
    table.insert(ActiveThreatSites,"Range 6 SA-15")
  end
end

function R12SA15_threat_off()
  if R12SA15 then
    R12SA15:SetAIOff()
    Menu_R12SA15_Off:Remove()
    Menu_R12SA15_On = MENU_MISSION_COMMAND:New("Activate SA-15",range_12_menu_root,R12SA15_threat_on)
    InactiveThreadSites(ActiveThreatSites, "Range 6 SA-15")
  end
end

function R12SA6_threat_on()
  if R12SA6 then
    R12SA6:SetAIOn()
    Menu_R12SA6_On:Remove()
    Menu_R12SA6_Off = MENU_MISSION_COMMAND:New("Deactivate SA-6",range_12_menu_root,R12SA6_threat_off)
    table.insert(ActiveThreatSites,"Range 6 SA-6")
  end
end

function R12SA6_threat_off()
  if R12SA6 then
    R12SA6:SetAIOff()
    Menu_R12SA6_Off:Remove()
    Menu_R12SA6_On = MENU_MISSION_COMMAND:New("Activate SA-6",range_12_menu_root,R12SA6_threat_on)
    InactiveThreadSites(ActiveThreatSites, "Range 6 SA-6")
  end
end

function R12SA8_threat_on()
  if R12SA8 then
    R12SA8:SetAIOn()
    Menu_R12SA8_On:Remove()
    Menu_R12SA8_Off = MENU_MISSION_COMMAND:New("Deactivate SA-8",range_12_menu_more,R12SA8_threat_off)
    table.insert(ActiveThreatSites,"Range 6 SA-8")
  end
end



function R12SA8_threat_off()
  if R12SA8 then
    R12SA8:SetAIOff()
    Menu_R12SA8_Off:Remove()
    Menu_R12SA8_On = MENU_MISSION_COMMAND:New("Activate SA-8",range_12_menu_more,R12SA8_threat_on)
    InactiveThreadSites(ActiveThreatSites, "Range 6 SA-8")
  end
end

function R12SA3_threat_on()
  if R12SA3 then
    R12SA3:SetAIOn()
    Menu_R12SA3_On:Remove()
    Menu_R12SA3_Off = MENU_MISSION_COMMAND:New("Deactivate SA-3",range_12_menu_more,R12SA3_threat_off)
    table.insert(ActiveThreatSites,"Range 6 SA-3")
  end
end

function R12SA3_threat_off()
  if R12SA3 then
    R12SA3:SetAIOff()
    Menu_R12SA3_Off:Remove()
    Menu_R12SA3_On = MENU_MISSION_COMMAND:New("Activate SA-3",range_12_menu_more,R12SA3_threat_on)
    InactiveThreadSites(ActiveThreatSites, "Range 6 SA-3")
  end
end

function R12HAWK_threat_on()
  if R12HAWK then
    R12HAWK:SetAIOn()
    Menu_R12HAWK_On:Remove()
    Menu_R12HAWK_Off = MENU_MISSION_COMMAND:New("Deactivate HAWK",range_12_menu_more,R12HAWK_threat_off)
    table.insert(ActiveThreatSites,"Range 6 HAWK")
  end
end

function R12HAWK_threat_off()
  if R12HAWK then
    R12HAWK:SetAIOff()
    Menu_R12HAWK_Off:Remove()
    Menu_R12HAWK_On = MENU_MISSION_COMMAND:New("Activate HAWK",range_12_menu_more,R12HAWK_threat_on)
    InactiveThreadSites(ActiveThreatSites, "Range 6 HAWK")
  end
end

function R12SA9_threat_on()
  if R12SA9 then
    R12SA9:SetAIOn()
    Menu_R12SA9_On:Remove()
    Menu_R12SA9_Off = MENU_MISSION_COMMAND:New("Deactivate SA-9",range_12_menu_more,R12SA9_threat_off)
    table.insert(ActiveThreatSites,"Range 6 SA-9")
  end
end

function R12SA9_threat_off()
  if R12SA9 then
    R12SA9:SetAIOff()
    Menu_R12SA9_Off:Remove()
    Menu_R12SA9_On = MENU_MISSION_COMMAND:New("Activate SA-9",range_12_menu_more,R12SA9_threat_on)
    InactiveThreadSites(ActiveThreatSites, "Range 6 SA-9")
  end
end

function R12SA13_threat_on()
  if R12SA13 then
    R12SA13:SetAIOn()
    Menu_R12SA13_On:Remove()
    Menu_R12SA13_Off = MENU_MISSION_COMMAND:New("Deactivate SA-13",range_12_menu_more,R12SA13_threat_off)
    table.insert(ActiveThreatSites,"Range 6 SA-13")
  end
end

function R12SA13_threat_off()
  if R12SA13 then
    R12SA13:SetAIOff()
    Menu_R12SA13_Off:Remove()
    Menu_R12SA13_On = MENU_MISSION_COMMAND:New("Activate SA-13",range_12_menu_more,R12SA13_threat_on)
    InactiveThreadSites(ActiveThreatSites, "Range 6 SA-13")
  end
end

function R12SA18_threat_on()
  if R12SA18 then
    R12SA18:SetAIOn()
    Menu_R12SA18_On:Remove()
    Menu_R12SA18_Off = MENU_MISSION_COMMAND:New("Deactivate MANPAD",range_12_menu_more,R12SA18_threat_off)
    table.insert(ActiveThreatSites,"Range 6 MANPAD")
  end
end

function R12SA18_threat_off()
  if R12SA18 then
    R12SA18:SetAIOff()
    Menu_R12SA18_Off:Remove()
    Menu_R12SA18_On = MENU_MISSION_COMMAND:New("Activate MANPAD",range_12_menu_more,R12SA18_threat_on)
    InactiveThreadSites(ActiveThreatSites, "Range 6 MANPAD")
  end
end


--Menu_Threat_ListActive_range_2 = MENU_MISSION_COMMAND:New("List Active Threat Sites",Menu_Threat_Options,Sam_Footprints)
Menu_R12SA10_On = MENU_MISSION_COMMAND:New("Activate SA-10",range_12_menu_root,R12SA10_threat_on)
Menu_R12SA11_On = MENU_MISSION_COMMAND:New("Activate SA-11",range_12_menu_root,R12SA11_threat_on)
Menu_R12SA2_On = MENU_MISSION_COMMAND:New("Activate SA-2",range_12_menu_root,R12SA2_threat_on)
Menu_R12SA15_On = MENU_MISSION_COMMAND:New("Activate SA-15",range_12_menu_root,R12SA15_threat_on)
Menu_R12SA6_On = MENU_MISSION_COMMAND:New("Activate SA-6",range_12_menu_root,R12SA6_threat_on)
Menu_R12SA8_On = MENU_MISSION_COMMAND:New("Activate SA-8",range_12_menu_more,R12SA8_threat_on)
Menu_R12SA3_On = MENU_MISSION_COMMAND:New("Activate SA-3",range_12_menu_more,R12SA3_threat_on)
Menu_R12HAWK_On = MENU_MISSION_COMMAND:New("Activate Hawk",range_12_menu_more,R12HAWK_threat_on)
Menu_R12SA9_On = MENU_MISSION_COMMAND:New("Activate SA-9",range_12_menu_more,R12SA9_threat_on)
Menu_R12SA13_On = MENU_MISSION_COMMAND:New("Activate SA-13",range_12_menu_more,R12SA13_threat_on)
Menu_R12SA18_On = MENU_MISSION_COMMAND:New("Activate MANPAD",range_12_menu_more,R12SA18_threat_on)
Menu_Threat_ListActive = MENU_MISSION_COMMAND:New("List Active Threat Sites",range_12_menu_more, Sam_Footprints )


local range_12_threatsites = {
  "R12SA10", 
  "R12SA11",
  "R12SA2",
  "R12SA15",
  "R12SA6",
  "R12SA8",
  "R12SA3",
  "R12HAWK",
  "R12SA9",
  "R12SA13",
  "R12SA18",}



local evasion_for_client_planes_only = true
local chance_for_evasive_action = 60
local Target_Smoke = false
local chance_for_group_relocating = 30
local relocating_distance = 500
local evasion_delay = math.random(3,8)
local radar_delay = math.random(60,180)
local move_distance = 0
local _evadeRadars_range2 = {}


  
BASE:HandleEvent(EVENTS.Shot)
SEAD_enabled_Sams_range2:ForEachGroupAlive(
  function(_group)
    local Sam_group_name = _group:GetName()
    env.info("Sam GROUP Name is "..Sam_group_name)
    Sam_units = _group:GetUnits()
    for i,_unit in ipairs(Sam_units) do
      if
        _unit:HasAttribute("SAM SR") or _unit:HasAttribute("SAM TR")
      then
        env.info("Radar detected for UNIT ".._unit:GetName())
        table.insert(_evadeRadars_range2,_unit:GetName())
      else
      end
    end
  end
)
if evasion_for_client_planes_only == true
then
  function BASE:OnEventShot(EventData)
    local clientplane = EventData.IniPlayerName
    if clientplane ~= nil
    then
      env.info("a missile has been shot by "..clientplane)
      local SEAD_Weapon_Name = EventData.Weapon:getTypeName()
      if SEAD_Weapon_Name == "weapons.missiles.AGM_88" then
        local SEAD_Target = EventData.Weapon:getTarget()
        local SEAD_Target_Name = Unit.getName(SEAD_Target)
        local SEAD_Target_Unit = UNIT:FindByName(SEAD_Target_Name)
        local SEAD_Target_GROUP = SEAD_Target_Unit:GetGroup()
        local SEAD_Shooter_Unit = EventData.IniUnit
        local SEAD_Shooter_Name = SEAD_Shooter_Unit:GetName()
        for _,evasive_radar in pairs(_evadeRadars_range2) do
          if evasive_radar == SEAD_Target_Name
          then
            env.info(SEAD_Shooter_Name.." has fired "..SEAD_Weapon_Name.." at "..SEAD_Target_Name)
            env.info("AGM_88 shot detected from  "..SEAD_Shooter_Name.." on "..SEAD_Target_Name)
            if math.random(1,100) <= chance_for_evasive_action
            then
              Radar_Unit_Evasive_Action(SEAD_Target_Unit)
            end
          end
        end
      end
    end
  end
end

function Radar_Unit_Evasive_Action(_unit) -- define the evasive action of the SAMsite when shot at by a HARM
  if Target_Smoke == true then
    _unit:SmokeRed()
end
local evasion_delay = math.random(3,8)
env.info("Sam waiting "..evasion_delay.."seconds before taking evasive measure")
SCHEDULER:New(nil,
  function()
    if  math.random(1,100) <= chance_for_group_relocating
    then
      env.info(_unit:GetName().." now taking evasive action")
      env.info(_unit:GetName().."Air Defemse System now relocating "..relocating_distance.." meters")
      _unit:OptionAlarmStateGreen()
      local _groupcoordinate = _unit:GetCoordinate()
      local _tocoordinate = _groupcoordinate:Translate( relocating_distance, math.random(359) )
      local _ToCoord_vec2 = _tocoordinate:GetVec2()
      _unit:TaskRouteToVec2( _ToCoord_vec2 )
      _unit:OptionAlarmStateGreen()
      local radarbackon = SCHEDULER:New(nil,
        function()
          _unit:OptionAlarmStateRed()
          env.info("radar back on")
        end,{},radar_delay)
    else
      env.info(_unit:GetName().." switching off Radar")
      _unit:OptionAlarmStateGreen()
      local radarbackon = SCHEDULER:New(nil,
        function()
          _unit:OptionAlarmStateRed()
          env.info("radar back on")
        end,{},radar_delay)
    end
  end,{},evasion_delay)
end



----
function resetrange()

SEAD_enabled_Sams_range2:Clear()
local ActiveThreatSites = {}

local R12SA10 = SPAWN:New("R12SA10"):Spawn()
SEAD_enabled_Sams_range2:AddGroup(R12SA10)
local R12SA11 = SPAWN:New("R12SA11"):Spawn()
SEAD_enabled_Sams_range2:AddGroup(R12SA11)
local R12SA2 = SPAWN:New("R12SA2"):Spawn()
SEAD_enabled_Sams_range2:AddGroup(R12SA2)
local R12SA15 = SPAWN:New("R12SA15"):Spawn()
SEAD_enabled_Sams_range2:AddGroup(R12SA15)
local R12SA6 = SPAWN:New("R12SA6"):Spawn()
SEAD_enabled_Sams_range2:AddGroup(R12SA6)
local R12SA8 = SPAWN:New("R12SA8"):Spawn()
SEAD_enabled_Sams_range2:AddGroup(R12SA8)
local R12SA3 = SPAWN:New("R12SA3"):Spawn()
SEAD_enabled_Sams_range2:AddGroup(R12SA3)
local R12HAWK = SPAWN:New("R12HAWK"):Spawn()
SEAD_enabled_Sams_range2:AddGroup(R12HAWK)
local R12SA9 = SPAWN:New("R12SA9"):Spawn()
SEAD_enabled_Sams_range2:AddGroup(R12SA9)
local R12SA13 = SPAWN:New("R12SA13"):Spawn()
SEAD_enabled_Sams_range2:AddGroup(R12SA13)
local R12SA18 = SPAWN:New("R12SA18"):Spawn()
SEAD_enabled_Sams_range2:AddGroup(R12SA18)

R12SA10:SetAIOff()
R12SA11:SetAIOff()
R12SA2:SetAIOff()
R12SA15:SetAIOff()
R12SA6:SetAIOff()
R12SA8:SetAIOff()
R12SA3:SetAIOff()
R12HAWK:SetAIOff()
R12SA9:SetAIOff()
R12SA13:SetAIOff()
R12SA18:SetAIOff()



if Menu_R12SA10_Off then 
R12SA10_threat_off()
R12SA10_threat_on()
end
if Menu_R12SA11_Off then 
R12SA11_threat_off()
R12SA11_threat_on()
end
if Menu_R12SA2_Off then 
R12SA2_threat_off()
R12SA2_threat_on()
end
if Menu_R12SA15_Off then 
R12SA15_threat_off()
R12SA15_threat_on()
end
if Menu_R12SA6_Off then 
R12SA6_threat_off()
R12SA6_threat_on()
end
if Menu_R12SA8_Off then 
R12SA8_threat_off()
R12SA8_threat_on()
end
if Menu_R12SA3_Off then 
R12SA3_threat_off()
R12SA3_threat_on()
end
if Menu_R12HAWK_Off then 
R12HAWK_threat_off()
R12HAWK_threat_on()
end
if Menu_R12SA9_Off then 
R12SA9_threat_off()
R12SA9_threat_on()
end
if Menu_R12SA13_Off then 
R12SA13_threat_off()
R12SA13_threat_on()
end
if Menu_R12SA18_Off then 
R12SA18_threat_off()
R12SA18_threat_on()
end

end
MENU_MISSION_COMMAND:New("Rearm all Threatsites",range_12_menu_root,resetrange)
