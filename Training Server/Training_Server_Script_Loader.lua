
-- Paste This into the DCS Mission
-- assert(loadfile("C:/Scripts/Training Server/Training_Server_Script_Loader.lua"))()

-- Training Server Folder

-- Menu & MISC Scripts
assert(loadfile("C:/Scripts/Training Server/MENUS and MISC.lua"))()
MESSAGE:New("Loaded Menus", 30):ToAll()
env.info("End of Menus Loader")

-- Tankers
assert(loadfile("C:/Scripts/Training Server/Training Tankers.lua"))()
MESSAGE:New("Loaded Tanker", 30):ToAll()
env.info("End of Tanker")

-- RAT
assert(loadfile("C:/Scripts/Training Server/Training RAT Dec2020.lua"))()
MESSAGE:New("Loaded RAT", 30):ToAll()
env.info("End of RAT")

-- CTLD Scripts
assert(loadfile("C:/Scripts/Training Server/CTLD_Resistance Force.lua"))()
MESSAGE:New("Loaded CTLD", 30):ToAll()
env.info("End of CTLD Loader")

-- Skynet Scipts
assert(loadfile("C:/Scripts/Training Server/skynet-iads-compiled.lua"))()
MESSAGE:New("Loaded Skynet Compiled", 30):ToAll()
env.info("End of Skynet Compiled")

-- Range 1 Scripts
assert(loadfile("C:/Scripts/Training Server/Range 01.lua"))()
MESSAGE:New("Loaded Range 1", 30):ToAll()
env.info("End of Range 1 Loader")

-- Range 6 Scripts
assert(loadfile("C:/Scripts/Training Server/Range 06.lua"))()
MESSAGE:New("Loaded Range 6", 30):ToAll()
env.info("End of Range 6 Loader")

-- Range 7 Scripts
assert(loadfile("C:/Scripts/Training Server/Range 07.lua"))()
MESSAGE:New("Loaded Range 7", 30):ToAll()
env.info("End of Range 7 Loader")

-- Range 8 Scripts
assert(loadfile("C:/Scripts/Training Server/Range 08.lua"))()
MESSAGE:New("Loaded Range 8", 30):ToAll()
env.info("End of Range 8 Loader")

-- Range 9 Scripts
assert(loadfile("C:/Scripts/Training Server/Range 09.lua"))()
MESSAGE:New("Loaded Range 9", 30):ToAll()
env.info("End of Range 9 Loader")

-- Range 10 Scripts
assert(loadfile("C:/Scripts/Training Server/Range 10.lua"))()
MESSAGE:New("Loaded Range 10", 30):ToAll()
env.info("End of Range 10 Loader")

-- Range 11 Scripts
assert(loadfile("C:/Scripts/Training Server/Range 11.lua"))()
MESSAGE:New("Loaded Range 11", 30):ToAll()
env.info("End of Range 11 Loader")

-- Range 12 Scripts
assert(loadfile("C:/Scripts/Training Server/Range 12.lua"))()
MESSAGE:New("Loaded Range 12", 30):ToAll()
env.info("End of Range 12 Loader")

-- Range 13 Scripts
assert(loadfile("C:/Scripts/Training Server/Range 13.lua"))()
MESSAGE:New("Loaded Range 13", 30):ToAll()
env.info("End of Range 13 Loader")

env.info("End of Script Loader")



