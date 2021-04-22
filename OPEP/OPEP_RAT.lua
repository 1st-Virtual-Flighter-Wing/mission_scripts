-- Random Air Traffic Script

-- 2x A380s spawning in the four corners of the map
local Civ1 = RAT:New("RAT_A380")
	Civ1:ATC_Messages(false)
	Civ1:SetTakeoff("air")	
	Civ1:SetDeparture({"Zone_A","Zone_B","Zone_C","Zone_D"})
	Civ1:SetDestination({AIRBASE.Syria.Adana_Sakirpasa,AIRBASE.Syria.Beirut_Rafic_Hariri,AIRBASE.Syria.Damascus})
	Civ1:SetTerminalType(AIRBASE.TerminalType.OpenBig)
	Civ1:EnableATC(true)
	Civ1:SetCruiseAltitude(11000)
	Civ1:Livery({"China Southern","Emirates","Lufthansa","SA"})
	Civ1:Spawn(1)
	
-- 2x 747s spawning in the four corners of the map
local Civ2 = RAT:New("RAT_747")
	Civ2:ATC_Messages(false)
	Civ2:SetTakeoff("air")	
	Civ2:SetDeparture({"Zone_A","Zone_B","Zone_C","Zone_D"})
	Civ2:SetDestination({AIRBASE.Syria.Adana_Sakirpasa,AIRBASE.Syria.Beirut_Rafic_Hariri,AIRBASE.Syria.Damascus})
	Civ2:SetTerminalType(AIRBASE.TerminalType.OpenBig)
	Civ2:EnableATC(true)
	Civ2:SetCruiseAltitude(10000)
	Civ2:Livery({"LH","AI","TA"})
	Civ2:Spawn(1)
	
-- 2x 737 spawning from the West
local Civ3 = RAT:New("RAT_737_1")
	Civ3:ATC_Messages(false)
	Civ3:SetTakeoff("air")	
	Civ3:SetDeparture({"Zone_A","Zone_B"})
	Civ3:SetDestination({AIRBASE.Syria.Adana_Sakirpasa,AIRBASE.Syria.Beirut_Rafic_Hariri,AIRBASE.Syria.Damascus})
	Civ3:SetTerminalType(AIRBASE.TerminalType.OpenBig)
	Civ3:EnableATC(true)
	Civ3:SetCruiseAltitude(10500)
	Civ3:Livery({"airBaltic","EA","OMAN AIR"})
	Civ3:Spawn(1)
	
-- 3x 737 spawning for local flights
local Civ4 = RAT:New("RAT_737_2")
	Civ4:ATC_Messages(false)
	Civ4:SetTakeoff("cold")	
	Civ4:SetDeparture({AIRBASE.Syria.Adana_Sakirpasa,AIRBASE.Syria.Beirut_Rafic_Hariri,AIRBASE.Syria.Damascus})
	Civ4:SetDestination({AIRBASE.Syria.Adana_Sakirpasa,AIRBASE.Syria.Beirut_Rafic_Hariri,AIRBASE.Syria.Damascus})
	Civ4:SetTerminalType(AIRBASE.TerminalType.OpenBig)
	Civ4:EnableATC(true)
	Civ4:SetCruiseAltitude(8000)
	Civ4:Livery({"airBaltic","EA","OMAN AIR"})
	Civ4:Spawn(1)
	
-- 3x A320 spawning for local flights
local Civ5 = RAT:New("RAT_A320")
	Civ5:ATC_Messages(false)
	Civ5:SetTakeoff("cold")	
	Civ5:SetDeparture({AIRBASE.Syria.Adana_Sakirpasa,AIRBASE.Syria.Beirut_Rafic_Hariri,AIRBASE.Syria.Damascus})
	Civ5:SetDestination({AIRBASE.Syria.Adana_Sakirpasa,AIRBASE.Syria.Beirut_Rafic_Hariri,AIRBASE.Syria.Damascus})
	Civ5:SetTerminalType(AIRBASE.TerminalType.OpenBig)
	Civ5:EnableATC(true)
	Civ5:SetCruiseAltitude(8000)
	Civ5:Livery({"Turkish Airlines","Tunis Air","Qatar"})
	Civ5:Spawn(1)
	
-- Red IL-76s Operating at Red Airbases
local Rmil1 = RAT:New("RAT_IL76")
	Rmil1:ATC_Messages(false)
	Rmil1:SetCoalition("sameonly")
	Rmil1:SetTerminalType(AIRBASE.TerminalType.OpenBig)
	Rmil1:EnableATC(true)
	Rmil1:Spawn(1)
	
-- Red C-130s Operatingat Red Airbases
local Rmil2 = RAT:New("RAT_RC130")
	Rmil2:ATC_Messages(false)
	Rmil2:SetCoalition("sameonly")
	Rmil2:SetTerminalType(AIRBASE.TerminalType.OpenBig)
	Rmil2:EnableATC(true)
	Rmil2:Spawn(1)
	
-- Red Hinds Operating at Red Airbases not more than 50NM apart
local Rmil3 = RAT:New("RAT_MI24")
	Rmil3:ATC_Messages(false)
	Rmil3:SetCoalition("sameonly")
	Rmil3:SetTerminalType(AIRBASE.TerminalType.HelicopterUsable)
	Rmil3:SetCruiseAltitude(1500)
	Rmil3:EnableATC(true)
	Rmil3:Spawn(1)
	
-- Red Chunguses operating at red airbasses not more than 50NM apart
local Rmil4 = RAT:New("RAT_MI26")
	Rmil4:ATC_Messages(false)
	Rmil4:SetCoalition("sameonly")
	Rmil4:SetTerminalType(AIRBASE.TerminalType.HelicopterUsable)
	Rmil4:SetCruiseAltitude(1500)
	Rmil4:EnableATC(true)
	Rmil4:Spawn(1)
	
-- Red KA27s operating at Red airbases not more than 50NM apart
local Rmil5 = RAT:New("RAT_KA27")
	Rmil5:ATC_Messages(false)
	Rmil5:SetCoalition("sameonly")
	Rmil5:SetTerminalType(AIRBASE.TerminalType.HelicopterUsable)
	Rmil5:SetCruiseAltitude(1500)
	Rmil5:EnableATC(true)
	Rmil5:Spawn(1)