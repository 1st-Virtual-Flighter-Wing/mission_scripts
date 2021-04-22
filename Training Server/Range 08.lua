range_8_menu_root = MENU_MISSION:New("Range 8 SCAR/SEAD",range_root_menu6_10)

---SA-11 with SA-15 IADS
local function range_8_AR1()
  range_8_menu_AR1:Remove()
  trigger.action.setUserFlag(81,true)
end

range_8_menu_AR1 = MENU_MISSION_COMMAND:New("Activate SCUD Hunt 1",range_8_menu_root,range_8_AR1)


---SA-10 with SA-15 IADS
local function range_8_AR2()
  range_8_menu_AR2:Remove()
  trigger.action.setUserFlag(82,true)
end

range_8_menu_AR2 = MENU_MISSION_COMMAND:New("Activate SCUD Hunt 2",range_8_menu_root,range_8_AR2)