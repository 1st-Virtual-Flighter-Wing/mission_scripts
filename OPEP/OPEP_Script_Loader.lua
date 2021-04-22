
-- Paste This into the DCS Mission
-- assert(loadfile("C:/Scripts/OPEP/OPEP_Script_Loader.lua"))()

-- Shadow's Persitancy Script
assert(loadfile("C:/Scripts/OPEP/OPEP SIAB Persistent World.lua"))()
MESSAGE:New("End of Persistancy Loader", 30):ToAll()

-- IADS Framework
assert(loadfile("C:/Scripts/OPEP/skynet.lua"))()
MESSAGE:New("End of Skynet Loader", 30):ToAll()

-- AI Traffic, military
assert(loadfile("C:/Scripts/OPEP/OPEP AI Flights.lua"))()
MESSAGE:New("Loaded AI Flights", 30):ToAll()
env.info("End of AI Flight Loader")

-- Random Air Traffic
assert(loadfile("C:/Scripts/OPEP/OPEP_RAT.lua"))()
MESSAGE:New("Loaded RAT", 30):ToAll()
env.info("End of RAT Loader")

-- Tanker, Tactical Support Menus
assert(loadfile("C:/Scripts/OPEP/Menus_Tankers.lua"))()
MESSAGE:New("Loaded Logistics/Tactical Menus", 30):ToAll()
env.info("End of Tanker Loader")

-- Ship Patrol Routes
assert(loadfile("C:/Scripts/OPEP/OPEP_Naval_Units_Inf_Patrol.lua"))()
MESSAGE:New("Loaded Ship Patrol Routes", 30):ToAll()
env.info("End of Tanker Loader")

-- ATIS Script
assert(loadfile("C:/Scripts/OPEP/OPEP_Atis.lua"))()
MESSAGE:New("Loaded Atis", 30):ToAll()
env.info("End of ATIS Loader")

-- Ground Unit Spawn Script
assert(loadfile("C:/Scripts/OPEP/OPEP_Phase 2 Ground Spawns.lua"))()
MESSAGE:New("Loaded Ground Units", 30):ToAll()
env.info("End of Ground Unit Loader")

-- OPEP IADS Script
assert(loadfile("C:/Scripts/OPEP/20201012_SyriaSkyNet.lua"))()
MESSAGE:New("Loaded IADS", 30):ToAll()
env.info("End of IADS Loader")

env.info("End of Script Loader")