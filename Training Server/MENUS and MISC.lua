_SETTINGS:SetPlayerMenuOff()

--training_root_menu = MENU_MISSION:New("1st VFW Training")
range_root_menu = MENU_MISSION:New("1st VFW Ranges")
RANGE.MenuF10Root=MENU_MISSION:New("RANGES 1-5",range_root_menu).MenuPath
range_root_menu6_10 = MENU_MISSION:New("RANGES 6-10",range_root_menu)
range_root_menu11_15 = MENU_MISSION:New("RANGES 11-15",range_root_menu)

tanker_root_menu = MENU_MISSION:New("1st VFW Tankers")

tanker_menu_blue1 = MENU_MISSION:New("AR Track Alpha", tanker_root_menu )
tanker_menu_blue2 = MENU_MISSION:New("AR Track Bravo", tanker_root_menu )
tanker_menu_blue3 = MENU_MISSION:New("AR Track Charlie", tanker_root_menu )
tanker_menu_blue4 = MENU_MISSION:New("AR Track Delta", tanker_root_menu )

--- FOX script (replaces Missiletrainer)
fox=FOX:New()
fox:SetExplosionDistance(200)
fox:SetDisableF10Menu(false)
fox:SetDefaultLaunchAlerts(false)
fox:Start()

--- ATIS
atisKerman=ATIS:New("Kerman", 126.400)
atisKerman:SetZuluTimeDifference(4)
atisKerman:SetTowerFrequencies(250.300)
atisKerman:SetTACAN(97)
atisKerman:SetMapMarks(true)
atisKerman:SetRadioRelayUnitName("Radio Relay ATIS #001")
atisKerman:SetSubtitleDuration(0)
--atisKerman:SetVOR(114.9)

--atisKerman = atisKerman:GetActiveRunway()
--
--if atisAlDhafra_active == "13" then
--atisAlDhafra:SetActiveRunway("13R") else
--atisAlDhafra:SetActiveRunway("31L")
--end
atisKerman:Start()

atisAlDhafra=ATIS:New("Al Dhafra AFB", 123.400)
atisAlDhafra:SetZuluTimeDifference(4)
atisAlDhafra:SetTowerFrequencies(251.000)
atisAlDhafra:SetTACAN(96)
atisAlDhafra:SetMapMarks(true)
atisAlDhafra:SetRadioRelayUnitName("Radio Relay ATIS #002")
atisAlDhafra:SetSubtitleDuration(0)
--atisAlDhafra:SetVOR(114.9)

--atisAlDhafra = atisKerman:GetActiveRunway()
--
--if atisAlDhafra_active = "13" then
  --atisAlDhafra:SetActiveRunway("13L") else
atisAlDhafra:SetActiveRunway("31L")
--end
atisAlDhafra:Start()

trigger.action.outText("ATIS Loaded ", 15)

