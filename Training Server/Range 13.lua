local range_13_menu_root = MENU_MISSION:New("Range 13 TASMO Training",range_root_menu11_15)

local TASMO_training_enabled_groups = SET_GROUP:New()

local R13Z1 = ZONE:New("R13Z1")

R13G1 = SPAWN:New("R13G1")
          :SpawnInZone(ZONE:New("R13Z1"), true)
TASMO_training_enabled_groups:AddGroup(R13G1)
R13G2 = SPAWN:New("R13G2")
          :SpawnInZone(ZONE:New("R13Z1"), true)
TASMO_training_enabled_groups:AddGroup(R13G2)
R13G3 = SPAWN:New("R13G3")
          :SpawnInZone(ZONE:New("R13Z1"), true)
TASMO_training_enabled_groups:AddGroup(R13G3)
R13G4 = SPAWN:New("R13G4")
          :SpawnInZone(ZONE:New("R13Z1"), true)
TASMO_training_enabled_groups:AddGroup(R13G4)

R13G1:SetAIOff()
R13G2:SetAIOff()
R13G3:SetAIOff()
R13G4:SetAIOff()



function R13G1_threat_on()
  if R13G1 then
    R13G1:SetAIOn()
    Menu_R13G1_On:Remove()
    Menu_R13G1_Off = MENU_MISSION_COMMAND:New("Deactivate Supply Group",range_13_menu_root,R13G1_threat_off)
    table.insert(ActiveThreatSites,"Range 13 R13G1")
  end
end

function R13G1_threat_off()
  if R13G1 then
    R13G1:SetAIOff()
    Menu_R13G1_Off:Remove()
    Menu_R13G1_On = MENU_MISSION_COMMAND:New("Activate Supply Group",range_13_menu_root,R13G1_threat_on)
    InactiveThreadSites(ActiveThreatSites, "Range 13 R13G1")
  end
end

function R13G2_threat_on()
  if R13G2 then
    R13G2:SetAIOn()
    Menu_R13G2_On:Remove()
    Menu_R13G2_Off = MENU_MISSION_COMMAND:New("Deactivate Cruiser",range_13_menu_root,R13G2_threat_off)
    table.insert(ActiveThreatSites,"Range 13 R13G2")
  end
end

function R13G2_threat_off()
  if R13G2 then
    R13G2:SetAIOff()
    Menu_R13G2_Off:Remove()
    Menu_R13G2_On = MENU_MISSION_COMMAND:New("Activate Cruiser",range_13_menu_root,R13G2_threat_on)
    InactiveThreadSites(ActiveThreatSites, "Range 13 R13G2")
  end
end

function R13G3_threat_on()
  if R13G3 then
    R13G3:SetAIOn()
    Menu_R13G3_On:Remove()
    Menu_R13G3_Off = MENU_MISSION_COMMAND:New("Deactivate Destroyer",range_13_menu_root,R13G3_threat_off)
    table.insert(ActiveThreatSites,"Range 13 R13G3")
  end
end

function R13G3_threat_off()
  if R13G3 then
    R13G3:SetAIOff()
    Menu_R13G3_Off:Remove()
    Menu_R13G3_On = MENU_MISSION_COMMAND:New("Activate Destroyer",range_13_menu_root,R13G3_threat_on)
    InactiveThreadSites(ActiveThreatSites, "Range 13 R13G3")
  end
end

function R13G4_threat_on()
  if R13G4 then
    R13G4:SetAIOn()
    Menu_R13G4_On:Remove()
    Menu_R13G4_Off = MENU_MISSION_COMMAND:New("Deactivate Frigate",range_13_menu_root,R13G4_threat_off)
    table.insert(ActiveThreatSites,"Range 13 R13G4")
  end
end

function R13G4_threat_off()
  if R13G4 then
    R13G4:SetAIOff()
    Menu_R13G4_Off:Remove()
    Menu_R13G4_On = MENU_MISSION_COMMAND:New("Activate Frigate",range_13_menu_root,R13G4_threat_on)
    InactiveThreadSites(ActiveThreatSites, "Range 13 R13G4")
  end
end
Menu_R13G1_On = MENU_MISSION_COMMAND:New("Activate Supply Group",range_13_menu_root,R13G1_threat_on)
Menu_R13G2_On = MENU_MISSION_COMMAND:New("Activate Cruiser",range_13_menu_root,R13G2_threat_on)
Menu_R13G3_On = MENU_MISSION_COMMAND:New("Activate Destroyer",range_13_menu_root,R13G3_threat_on)
Menu_R13G4_On = MENU_MISSION_COMMAND:New("Activate Frigate",range_13_menu_root,R13G4_threat_on)

--Reset Ships
function resetships()

TASMO_training_enabled_groups:Clear()
local ActiveThreatSites = {}

local R13Z1 = ZONE:New("R13Z1")

R13G1 = SPAWN:New("R13G1")
          :SpawnInZone(ZONE:New("R13Z1"), true)
TASMO_training_enabled_groups:AddGroup(R13G1)
R13G2 = SPAWN:New("R13G2")
          :SpawnInZone(ZONE:New("R13Z1"), true)
TASMO_training_enabled_groups:AddGroup(R13G2)
R13G3 = SPAWN:New("R13G3")
          :SpawnInZone(ZONE:New("R13Z1"), true)
TASMO_training_enabled_groups:AddGroup(R13G3)
R13G4 = SPAWN:New("R13G4")
          :SpawnInZone(ZONE:New("R13Z1"), true)
TASMO_training_enabled_groups:AddGroup(R13G4)

R13G1:SetAIOff()
R13G2:SetAIOff()
R13G3:SetAIOff()
R13G4:SetAIOff()



if Menu_R13G1_Off then 
R13G1_threat_off()
R13G1_threat_on()
end
if Menu_R13G1_Off then 
R13G2_threat_off()
R13G2_threat_on()
end
if Menu_R13G1_Off then 
R13G3_threat_off()
R13G3_threat_on()
end
if Menu_R13G1_Off then 
R13G4_threat_off()
R13G4_threat_on()
end
end

MENU_MISSION_COMMAND:New("Reset all Ships",range_13_menu_root,resetships)

do
-- Molniya Infinite Waypoints
GROUP:FindByName("R13G1"):PatrolRoute()
GROUP:FindByName("R13G2"):PatrolRoute()
GROUP:FindByName("R13G3"):PatrolRoute()
GROUP:FindByName("R13G4"):PatrolRoute()
end

trigger.action.outText("Range 13 Loaded ", 5)