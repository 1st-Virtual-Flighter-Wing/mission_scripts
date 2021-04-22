
-- Paste This into the DCS Mission
-- assert(loadfile("C:/Scripts/General/General_Loader.lua"))()

-- General Folder

-- Moose Framework
assert(loadfile("C:/Scripts/General/20210415_Moose_Residual_Custom.lua"))() 
MESSAGE:New("End of Moose Loader", 30):ToAll()

-- Mist Framework
assert(loadfile("C:/Scripts/General/mist_4_4_90.lua"))()
MESSAGE:New("End of Mist Loader", 30):ToAll()

-- Hercules Cargo Script
assert(loadfile("C:/Scripts/General/Hercules Cargo.lua"))()
MESSAGE:New("Loaded Hercules Script", 30):ToAll()
env.info("End of Herc Loader")

-- Airboss Folder

-- Airboss Script
assert(loadfile("C:/Scripts/Airboss/1stVFW_Airboss.lua"))()
env.info("End of Airboss")


-- Hypeman Folder

-- Hypeman Scripts
assert(loadfile("C:/HypeMan/HypeMan.lua"))()
MESSAGE:New("Loaded Hypeman", 30):ToAll()
env.info("End of Hypeman Loader")