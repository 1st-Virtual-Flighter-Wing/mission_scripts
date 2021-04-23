---------------------------------------------------------------------------------------------------
-- Shadow Airboss Script for 1stVFW Syria Base Mission---------------------------------------------
-- Set mission menu.
AIRBOSS.MenuF10Root=MENU_MISSION:New("Airboss").MenuPath -- Airboss root menu (SHADOW) I want to learn how to use this for Deck_Management_menu
Deck_Management_menu = MENU_MISSION:New("Deck Management") -- Menu path for players to (DE)spawn any statics on carrier decks, they will be reset on next recovery status change
-- No MOOSE settings menu.
_SETTINGS:SetPlayerMenuOff()

--DCS dynamic weather switch
	local dynamic_weather = false --If static weather, set to false
	
--CVN Variables:
	--Requires:
		-- Supercarrier named "CVN" (Other ships in group are okay so long as CVN is the first in group)
		-- SH-60 Group/Unit Name:CVN_RR_LSO  set to uncontrolled somewhere near carrier, I usually leave it on a ship in the same group
		-- Second SH-60 Group/Unit Name:CVN_RR_Marshal
	local	CVNTCN = 69					-- Desired TCN for CVN
	local	CVNICLS = 9					-- Desired ICLS for CVN
	local	CVNMarshal = 372.225		-- Desired Marshal Freq
	local	CVNLSO = 372.275			-- Desired LSO Freq

--CVN High Tanker
	--Requires:
	-- S3-B Group name:"CVN_RT_High"  Unit Name:"CVN_RT_High"
	--High Tanker Standard 12,000/296
	local	HighTankerAltitude = 12000 	-- Tanker Altitude for above the clouds set to 6000 or higher
	local	HighTankerSpeed    = 296   	-- Test this to set the speed around 250 indicated

--CVN Recovery Tanker
	-- Requires:
	-- S3-B Group name:"CVN_RT"  Unit Name:"CVN_RT"
	--Low Tanker Standard 6,000/274
	local	LowTankerAltitude  = 6000 	-- Tanker Altitude for above the clouds set to 6000 or higher
	local	LowTankerSpeed     = 274

--AWACS
--AWACS at CVN.	Requires:
	-- E-2D Group name:"CVN_EW" Unit Name:"CVN_EW"
--AWACS at LHA.	Requires:
	-- E-2D Group name:"LHA_EW" Unit Name:"LHA_EW"																			
	--AWACS Standard 24,000/320
	local	AWACSaltitude      = 24000 	-- AWACS Altitude
	local	AWACSspeed         = 320
	
--Rescue Helo
--Helo at CVN.	Requires:
	-- SH-60 Group name:"CVN_RH" Unit Name:"CVN_RH"
--Helo at LHA.	Requires:
	-- SH-60 Group name:"LHA_TH" Unit Name:"LHA_RH"	

--USS Tarawa Variables
	local LHA = true			-- Switch for the USS Tarawa carrier group. 	
								-- Requires:
									-- LHA unit named "LHA1"
									-- Other ships in group are okay so long as LHA1 is the first in group
									-- SH-60 Group/Unit Name:LHA_RR_LSO  set to uncontrolled somewhere near carrier, I usually leave it on a ship in the same group
									-- Second SH-60 Group/Unit Name:LHA_RR_Marshal
	local	LHATCN = 1					-- Desired TCN for USS Tarawa
	local	LHAICLS = 1					-- Desired ICLS for USS Tarawa
	local	LHAMarshal = 372.225		-- Desired Marshal Freq
	local	LHALSO = 372.275			-- Desired LSO Freq

--CVN Code
if UNIT:FindByName("CVN") ~= nil then -- Checks if a Unit named "CVN" Exists
	MESSAGE:New("CVN present, Loading CVN Airboss", 30):ToAll()
	-- The aircraft carrier unit.
	local carrier=UNIT:FindByName("CVN")
	local carrierUnit=UNIT:FindByName("CVN"):GetID()
	
	--carrier, windows and time variables
	-- The following part will deal with closing and opening windows. It is used for cyclic ops. 
	-- By defenition, the first window opens 10 minutes after mission start.
	local carrier_coordinate = carrier:GetCoordinate()
	-- Get Sunrise time
	local sunrise=carrier:GetCoordinate():GetSunrise()
	-- Get Sunset time.
	local sunset=carrier:GetCoordinate():GetSunset()

	local sunsetSeconds = UTILS.ClockToSeconds(carrier:GetCoordinate():GetSunset())
	
	

	-- window gap
	local window_gap = 120*60 -- two hours of downtime.
	-- window length
	local window_length = 15*60 -- window length will be 15 minutes
	-- case 3 window length
	local case3WindowLength = 60*60
	-- getAbsTime will provide a format DCS can't really work well with, so it will be converted later
	local current_mission_time = timer.getAbsTime( )

	-- getting the exact time of the sunset and sunrise in the mission
	local sunrise_time=carrier_coordinate:GetMinutesToSunrise()*60 + current_mission_time
	local sunset_time=carrier_coordinate:GetMinutesToSunset()*60 + current_mission_time

	-- calculating case III start and end times for clear weather (keeping it here for future use when we drop airboss)
	local case_three_start_time = sunset_time -(30*60)
	local case_three_end_time = sunrise_time +(30*60)

	local first_window_time= current_mission_time + 7*60 --mission time + 7*60 = mission time + 7 minutes
	local first_window_end_time= first_window_time + window_length --first window opening + 30*60 = first window opening + 30 

	local hornetlivery    = "VFA-94"
	local hawkeyelivery   = "E-2D Demo"
	local seahawklivery   = "Standard"
	local vikinglivery    = "USAF - VS-35 - Line"
	local greyhoundlivery = "usn vrc-30"

	-- Set prefixes so we can delete certain statics easily.
	PrefixCat1  = "cat1"
	PrefixCat2  = "cat2"
	PrefixStern = "stern"
	PrefixDeck  = "deck"
	PrefixLSO   = "lso"

		--- Function that spawns statics on the carrier deck.
		local function SpawnDeck(statics, prefix)

			for i,static in pairs(statics) do
			local name=string.format("%s#%d03", prefix, i)  -- This MUST be a UNIQUE name!
	
			-- Spawn the static object.
			local static=SPAWNSTATIC:NewFromType(static.type, static.category):InitLinkToUnit(carrier, static.x, static.y, static.heading):InitLivery(static.livery):InitShape(static.shape):Spawn(nil, name)
			
			end
			
		end	

	--- Function that spawn the statics on cat 1.
	local function SpawnCat1Statics()
		local cat1 = {}
			cat1[1] = {
				type = "F/A-18C",
				category = "Planes",
				x = 157.663769681,
				y = 8.7329125899705,
				heading = math.deg(3.4382986264288),
				livery = hornetlivery
			}

			cat1[2] = {
				type = "F/A-18C",
				category = "Planes",
				x = 139.793034059,
				y = 10.504889959993,
				heading = math.deg(3.4906585039887),
				livery = hornetlivery
			}

			cat1[3] = {
				type = "F/A-18C",
				category = "Planes",
				x = 121.760298633,
				y = 11.385039509973,
				heading = math.deg(3.5604716740684),
				livery = hornetlivery
			}

			cat1[4] = {
				type = "F/A-18C",
				category = "Planes",
				x = 101.49467502401,
				y = 12.825076219975,
				heading = math.deg(3.4382986264288),
				livery = hornetlivery
			}

			cat1[5] = {
				type = "S-3B Tanker",
				category = "Planes",
				x = 86.888582193998,
				y = 16.073903399985,
				heading = math.deg(3.8920842319474),
				livery = vikinglivery
			}  

			cat1[6] = {
				type = "S-3B Tanker",
				category = "Planes",
				x = 78.015201257003,
				y = 23.31747966999,
				heading = math.deg(3.8920842319474),
				livery = vikinglivery
			}

			cat1[7] = {
				type = "S-3B Tanker",
				category = "Planes",
				x = 68.326917989005,
				y = 30.470511239953,
				heading = math.deg(4.014257279587),
				livery = vikinglivery
			}

			cat1[8] = {
				type = "S-3B Tanker",
				category = "Planes",
				x = 55.741204211001,
				y = 32.915218239999,
				heading = math.deg(4.6600291028249),
				livery = vikinglivery
			}

			cat1[9] = {
				type = "S-3B Tanker",
				category = "Planes",
				x = 54.405553069999,
				y = 17.490981769981,
				heading = math.deg(5.2883476335428),
				livery = vikinglivery
			}

			cat1[10] = {
				type = "S-3B Tanker",
				category = "Planes",
				x = 68.705909888005,
				y = 14.942937659973,
				heading = math.deg(5.0614548307836),
				livery = vikinglivery
			}

			SpawnDeck(cat1, PrefixCat1) 
	end

	--- Function that spawns the statics on cat 2.
	local function SpawnCat2Statics()
		local cat2 = {} 
			cat2[1] = {
				type = "F/A-18C",
				category = "Planes",
				x = 158.70003922,
				y = -8.2505227500224,
				heading = math.deg(2.7227136331112),
				livery = hornetlivery
			}

			cat2[2] = {
				type = "F/A-18C",
				category = "Planes",
				x = 139.519782557,
				y = -8.7593409600086,
				heading = math.deg(2.8972465583106),
				livery = hornetlivery
			}
			
			cat2[3] = {
				type = "F/A-18C",
				category = "Planes",
				x = 120.870367524,
				y = -8.3494637000258,
				heading = math.deg(2.5307274153918),
				livery = hornetlivery
			}
			
			cat2[4] = {
				type = "F/A-18C",
				category = "Planes",
				x = 102.611702139,
				y = -9.2334323100513,
				heading = math.deg(2.3911010752322),
				livery = hornetlivery
			}
			
			cat2[5] = {
				type = "E-2C",
				category = "Planes",
				x = 86.280075052004,
				y = -5.1687013600022,
				heading = math.deg(2.2689280275926),
				livery = hawkeyelivery
			}
			
			cat2[6] = {
				type = "C2A_Greyhound",
				category = "Planes",
				x = 68.108060320003,
				y = -2.0281720800558,
				heading = math.deg(2.4434609527921),
				livery = greyhoundlivery
			}
			
			cat2[7] = {
				type = "AS32-p25",
				category = "ADEquipment",
				x = 61.268551292,
				y = 0.19796000997303,
				heading = math.deg(2.4085543677522)
			}
			
			cat2[8] = {
				type = "F/A-18C",
				category = "Planes",
				x = 150.419724527,
				y = 0.87831837998237,
				heading = math.deg(3.1415926535898),
				livery = hornetlivery
			}
			
			cat2[9] = {
				type = "F/A-18C",
				category = "Planes",
				x = 125.857207441,
				y = 1.5559032599558,
				heading = math.deg(3.1415926535898),
				livery = hornetlivery
			}
			
			cat2[10] = {
				type = "F/A-18C",
				category = "Planes",
				x = 101.758885172,
				y = 2.204966839985,
				heading = math.deg(3.1415926535898),
				livery = hornetlivery
			}
			
			SpawnDeck(cat2, PrefixCat2)
	end  

	--- Function that spawns the statics on the stern.
	local function SpawnSternStaics()
		local stern = {}

			stern[1] = {
				type = "E-2C",
				category = "Planes",
				x = -101.752868126,
				y = 7.5809419199941,
				heading = math.deg(5.3581608036226),
				livery = hawkeyelivery
			}

			stern[2] = {
				type = "F/A-18C",
				category = "Planes",
				x = -116.266007929,
				y = 21.863984399999,
				heading = math.deg(5.1487212933833),
				livery = hornetlivery
			}

			stern[3] = {
				type = "F/A-18C",
				category = "Planes",
				x = -132.150301105,
				y = 19.581758369983,
				heading = math.deg(5.4977871437821),
				livery = hornetlivery
			}

			stern[4] = {
				type = "F/A-18C",
				category = "Planes",
				x = -153.978308344,
				y = 16.299374559952,
				heading = math.deg(6.1261056745001),
				livery = hornetlivery
			}

			stern[5] = {
				type = "F/A-18C",
				category = "Planes",
				x = -155.911209292,
				y = 2.20790312998,
				heading = math.deg(6.1261056745001),
				livery = hornetlivery
			}

			stern[6] = {
				type = "F/A-18C",
				category = "Planes",
				x = -157.095890519,
				y = -10.698887070001,
				heading = math.deg(0.087266462599716),
				livery = hornetlivery
			}

			stern[7] = {
				type = "F/A-18C",
				category = "Planes",
				x = -132.637906,
				y = -13.852463180025,
				heading = math.deg(0.1221730476396),
				livery = hornetlivery
			}

			stern[8] = {
				type = "F/A-18C",
				category = "Planes",
				x = -138.996979198,
				y = -3.9708142700256,
				heading = math.deg(6.2133721370998),
				livery = hornetlivery
			}

			stern[9] = {
				type = "F/A-18C",
				category = "Planes",
				x = -138.084088786,
				y = 8.5357843799866,
				heading = math.deg(6.14355896702),
				livery = hornetlivery
			}

			stern[10] = {
				type = "F/A-18C",
				category = "Planes",
				x = -121.286905197,
				y = 0.31977066997206,
				heading = math.deg(6.14355896702),
				livery = hornetlivery
			}

			SpawnDeck(stern, PrefixStern)
	end

	--- Function that spawns the statics near center of deck (street and maint)
	local function SpawnDeckStatics()
		local deck = {}

			deck[1] = {
				type = "F/A-18C",
				category = "Planes",
				x = 10.797118081005,
				y = 3.483082569961,
				heading = math.deg(3.7175513067479),
				livery = hornetlivery
			}

			deck[2] = {
				type = "F/A-18C",
				category = "Planes",
				x = -4.2045669949948,
				y = 5.8311724099913,
				heading = math.deg(3.700098014228),
				livery = hornetlivery
			}

			deck[3] = {
				type = "F/A-18C",
				category = "Planes",
				x = -21.182285326999,
				y = 8.5421337099979,
				heading = math.deg(3.5604716740684),
				livery = hornetlivery
			}

			deck[4] = {
				type = "F/A-18C",
				category = "Planes",
				x = -36.952325375998,
				y = 11.641047839948,
				heading = math.deg(3.3510321638291),
				livery = hornetlivery
			}

			deck[5] = {
				type = "SH-60B",
				category = "Helicopters",
				x = -45.374960576562,
				y = 19.528927997861,
				heading = math.deg(1.7976891295542),
				livery = seahawklivery
			}

			deck[6] = {
				type = "SH-60B",
				category = "Helicopters",
				x = -52.168866629778,
				y = 19.616802142118,
				heading = math.deg(1.7278759594744),
				livery = seahawklivery
			}

			deck[7] = {
				type = "SH-60B",
				category = "Helicopters",
				x = -60.017014800818,
				y = 20.181977364758,
				heading = math.deg(1.8675022996339),
				livery = seahawklivery
			}

			deck[8] = {
				type = "AS32-p25",
				category = "ADEquipment",
				x = -70.399654875,
				y = 19.869045349944,
				heading = math.deg(4.7123889803847)
			}

			deck[9] = {
				type = "AS32-p25",
				category = "ADEquipment",
				x = -70.389138054001,
				y = 27.278454379993,
				heading = math.deg(4.7123889803847)
			}

			deck[10] = {
				type = "AS32-36A",
				category = "ADEquipment",
				x = -76.064637953001,
				y = 29.196925789991,
				heading = math.deg(4.7647488579445)
			}

			SpawnDeck(deck, PrefixDeck)
	end

	--- Function that spawns the LSO personell statics.
	local function SpawnLSOStatics()
		local LSO = {}

			LSO[1] = {
				type = "Carrier LSO Personell 3",
				category = "Personnel",
				x = -124.76934628569,
				y = -18.66431311615,
				heading = math.deg(587.44716858752),
				shape = "carrier_lso3_usa"
			}

			LSO[2] = {
				type = "Carrier LSO Personell 5",
				category = "Personnel",
				x = -125.1440806115,
				y = -19.882199667184,
				heading = math.deg(587.06319615208),
				shape = "carrier_lso5_usa"
			}

			LSO[3] = {
				type = "Carrier LSO Personell 2",
				category = "Personnel",
				x = -127.35037839968,
				y = -19.589420806883,
				heading = math.deg(587.09810273712),
				shape = "carrier_lso2_usa"
			}

			LSO[4] = {
				type = "Carrier LSO Personell 4",
				category = "Personnel",
				x = -128.93056465366,
				y = -20.941120861359,
				heading = math.deg(1259.278935713),
				shape = "carrier_lso4_usa"
			}

			LSO[5] = {
				type = "Carrier LSO Personell 1",
				category = "Personnel",
				x = -129.55487683425,
				y = -21.996550053922,
				heading = math.deg(1259.5756416858),
				shape = "carrier_lso1_usa"
			}

			LSO[6] = {
				type = "Carrier LSO Personell",
				category = "Personnel",
				x = -130.43049106723,
				y = -22.424090977822,
				heading = math.deg(1259.5756416858),
				shape = "carrier_lso_usa"
			}

			SpawnDeck(LSO, PrefixLSO)
	end

	--- Function to remove statics.
	local function ClearDeck(Prefix)
		local function removestatic(static)
			static:Destroy()
		end
		
		local set=SET_STATIC:New():FilterPrefixes(Prefix):FilterOnce()
		set:ForEachStatic(removestatic)
	end

---------------------------------------------------------------------------------------------------

	if UNIT:FindByName("CVN_RT") ~= nil then
		-- Shell 1 - CVN Recovery Tanker airstart
		cvn_RT=RECOVERYTANKER:New("CVN", "CVN_RT")
		cvn_RT:SetTakeoffAir()
		cvn_RT:SetHomeBase(AIRBASE:FindByName("CVN"))
		cvn_RT:SetRadio(372.000)
		cvn_RT:SetModex(721)
		cvn_RT:SetAltitude(LowTankerAltitude)
		cvn_RT:SetSpeed(LowTankerSpeed)
		cvn_RT:SetTACAN(72, "RT")
		cvn_RT:SetRacetrackDistances(8, 2)
		cvn_RT:SetPatternUpdateDistance(5)
		cvn_RT:SetCallsign(3, 1)
	end

	if UNIT:FindByName("CVN_RT_H") ~= nil then
		-- Shell 2 - CVN Recovery Tanker HIGH
		cvn_RT_H=RECOVERYTANKER:New("CVN", "CVN_RT_High")
		cvn_RT_H:SetTakeoffAir()
		cvn_RT_H:SetHomeBase(AIRBASE:FindByName("CVN"))
		cvn_RT_H:SetRadio(372.000)
		cvn_RT_H:SetModex(722)
		cvn_RT_H:SetSpeed(HighTankerSpeed)
		cvn_RT_H:SetAltitude(HighTankerAltitude)
		cvn_RT_H:SetTACAN(81, "RTH")
		cvn_RT_H:SetRacetrackDistances(8, 2)
		cvn_RT_H:SetPatternUpdateDistance(5)
		cvn_RT_H:SetCallsign(3, 2)
		cvn_RT_H:Start() 
	end

	if UNIT:FindByName("CVN_EW") ~= nil then
		-- Magic 2 - CVN AWACS
		cvn_EW=RECOVERYTANKER:New("CVN", "CVN_EW")
		cvn_EW:SetTakeoffAir()	
		cvn_EW:SetHomeBase(AIRBASE:FindByName("CVN"))
		cvn_EW:SetAWACS()
		cvn_EW:SetRadio(352.750)
		cvn_EW:SetModex(524)
		cvn_EW:SetSpeed(250)
		cvn_EW:SetAltitude(AWACSaltitude)
		cvn_EW:SetRacetrackDistances(10, 4)
		cvn_EW:SetPatternUpdateDistance(5)
		cvn_EW:SetCallsign(CALLSIGN.AWACS.Magic, 2)
		cvn_EW:Start()
	end

	if UNIT:FindByName("CVN_RH") ~= nil then
		-- Rescue Helo Spawning in air
		cvn_RH=RESCUEHELO:New("CVN", "CVN_RH")
		cvn_RH:SetHomeBase(AIRBASE:FindByName("CVN"))
		cvn_RH:SetModex(627)
		cvn_RH:SetTakeoffAir()
	end

	-- Create AIRBOSS object for CVN 
	local CVN_1stVFW_Airboss=AIRBOSS:New("CVN","CVN") -- Sets airboss object name as "CVN" for the menu on a unit named CVN in the mission editor
	CVN_1stVFW_Airboss:Load("C:\\", "AIRBOSS-LSOgrades.csv")-- Load all saved player grades from your "Saved Games\DCS" folder (if lfs was desanitized).
	CVN_1stVFW_Airboss:SetAutoSave("C:\\", "AIRBOSS-LSOgrades.csv")
	CVN_1stVFW_Airboss:SetMarshalRadio(CVNMarshal) -- Marshal radio channel
	CVN_1stVFW_Airboss:SetLSORadio(CVNLSO) -- LSO radio channel
	CVN_1stVFW_Airboss:SetRadioRelayLSO("CVN_RR_LSO")	-- Radio relay unit.  
	CVN_1stVFW_Airboss:SetRadioRelayMarshal("CVN_RR_Marshal")	 -- radio relay unit
	CVN_1stVFW_Airboss:SetSoundfilesFolder("Airboss Soundfiles/")-- Set folder of airboss sound files within miz file.		
	CVN_1stVFW_Airboss:SetTACAN(CVNTCN, "X", "CVN")-- Beacons.
	CVN_1stVFW_Airboss:SetICLS(CVNICLS, "CVN")	-- Sets carrier ICLS
	CVN_1stVFW_Airboss:SetMenuSingleCarrier(false)-- Single carrier menu optimization.	
	CVN_1stVFW_Airboss:SetMenuRecovery(15,30, false, 0) --(recovery time,winds,U-turn, offset)Set Skipper Menu
	CVN_1stVFW_Airboss:SetDespawnOnEngineShutdown(true)	--Set Despawn AI on Shutdown
	CVN_1stVFW_Airboss:SetRecoveryTanker(Shell1)-- Set recovery tanker.
	CVN_1stVFW_Airboss:SetSoundfilesFolder("Airboss Soundfiles M_R LSO_FF/")-- Set Sound Pack
	CVN_1stVFW_Airboss:SetVoiceOversMarshalByRaynor()-- sets soundfile lengths to correct values to avoid clipping
	CVN_1stVFW_Airboss:SetVoiceOversLSOByFF() -- sets soundfile lengths to correct values to avoid clipping
	CVN_1stVFW_Airboss:SetMaxSectionSize(4) -- allows for a division break
	CVN_1stVFW_Airboss:SetMaxFlightsPerStack(3) 
	CVN_1stVFW_Airboss:SetMPWireCorrection(12) -- Set MP Wire Delta Correction
	CVN_1stVFW_Airboss:SetPatrolAdInfinitum(true) -- carrier will cycle waypoints
	CVN_1stVFW_Airboss:SetHandleAIOFF() -- will not handle AI aircraft, careful as they will do their own thing with no radio contact
	
	if dynamic_weather then  -- sets proper weather reporting behavior
		CVN_1stVFW_Airboss:SetStaticWeather(false)
	else 
		CVN_1stVFW_Airboss:SetStaticWeather(true)
	end
	
	CVN_Deck_Management_menu = MENU_MISSION:New("CVN",Deck_Management_menu) -- sets CVN menu inside deck management
		CVN_Spawn_menu = MENU_MISSION:New("Spawn Statics",CVN_Deck_Management_menu) -- spawn menu set inside deck managment
			SpawnCat1Menu = MENU_MISSION_COMMAND:New("Spawn Cat 1",CVN_Spawn_menu,SpawnCat1Statics) 
			SpawnCat2Menu = MENU_MISSION_COMMAND:New("Spawn Cat 2",CVN_Spawn_menu,SpawnCat2Statics)
			SpawnSternMenu = MENU_MISSION_COMMAND:New("Spawn Fantail",CVN_Spawn_menu,SpawnSternStaics)
			SpawnDeckMenu = MENU_MISSION_COMMAND:New("Spawn the 'Street'",CVN_Spawn_menu,SpawnDeckStatics)	

		CVN_Despawn_Menu = MENU_MISSION:New("Despawn Statics",CVN_Deck_Management_menu) -- despawn menu set inside deck management
			ClearCat1Menu = MENU_MISSION_COMMAND:New("Clear Cat 1",CVN_Despawn_Menu,ClearDeck,PrefixCat1)
			ClearCat2Menu = MENU_MISSION_COMMAND:New("Clear Cat 2",CVN_Despawn_Menu,ClearDeck,PrefixCat2)
			ClearSternMenu = MENU_MISSION_COMMAND:New("Clear Fantail",CVN_Despawn_Menu,ClearDeck,PrefixStern)
			ClearDeckMenu = MENU_MISSION_COMMAND:New("Clear the 'Street'",CVN_Despawn_Menu,ClearDeck,PrefixDeck) 
	
	function CVN_1stVFW_Airboss:OnAfterStart(From,Event,To) -- function called on start of airboss object
		CVN_1stVFW_Airboss:addCyclicWindow(first_window_time,window_length, window_gap) -- Calling the function to set the recoervy windows
		ClearDeck(PrefixStern) -- clears units by prefix
		ClearDeck(PrefixCat1)
		ClearDeck(PrefixCat2)
		ClearDeck(PrefixLSO)
		ClearDeck(PrefixDeck)
		SpawnDeckStatics() -- Spawn statics in center of deck
		SpawnSternStaics() -- Spawn statics on fantail
		SpawnCat1Statics()

	end

	function CVN_1stVFW_Airboss:OnAfterRecoveryStart(From , Event, To, Case, Offset) -- function called on recovery start
		--CVN_1stVFW_Airboss:addCyclicWindow(first_window_time,window_length, window_gap) -- Calling the function to set the recoervy windows
		cvn_RH:__Start(2) -- starts helo with small delay
		cvn_RT:__Start(2) -- starts recovery tanekr with small delay
		ClearDeck(PrefixStern) -- clears units by prefix
		ClearDeck(PrefixCat1)
		ClearDeck(PrefixCat2)
		ClearDeck(PrefixLSO)
		ClearDeck(PrefixDeck)
		SpawnCat1Statics() -- spawns static units for recovery
		SpawnCat2Statics()
		SpawnLSOStatics()
		SpawnDeckStatics()
	end
	
	function CVN_1stVFW_Airboss:OnAfterRecoveryStop(From, Event, To) -- function called on recovery stop
		CVN_1stVFW_Airboss:addCyclicWindow(first_window_time,window_length, window_gap) -- Calling the function to set the recoervy windows
		--local windowById = CVN_1stVFW_Airboss:GetRecoveryWindowByID(0)
		--CVN_1stVFW_Airboss:DeleteAllRecoveryWindows()
		--CVN_1stVFW_Airboss:DeleteRecoveryWindow(windowById, 0)
		cvn_RH:__Stop(30) -- stop helo with 30 second delay (will stop in air)
		cvn_RT:__Stop(30) -- stop recoervy tanker (will stop while airborne
		ClearDeck(PrefixStern) -- clearning all static units
		ClearDeck(PrefixCat1)
		ClearDeck(PrefixCat2)
		ClearDeck(PrefixLSO)
		ClearDeck(PrefixDeck)
		SpawnSternStaics() --setting correct statics
		SpawnDeckStatics()
		SpawnCat1Statics()
	end

	
	local function resetTrapSheetFileFormat() -- This section is all for hypeman, Shadow didn't touch it
		CVN_1stVFW_Airboss:SetTrapSheet()
	end

		--credit for the Sierra Hotel Break goes to Sickdog from the Angry Arizona Pilots - thank you!
		function CVN_1stVFW_Airboss:OnAfterLSOGrade(From, Event, To, playerData, myGrade)

			local string_grade = myGrade.grade
			local player_callsign = playerData.callsign
			local unit_name = playerData.unitname
			local player_name = playerData.name
			local player_wire = playerData.wire

			player_name = player_name:gsub('[%p]', '')

			--local gradeForFile
			if  string_grade == "OK" then
				CVN_1stVFW_Airboss:SetTrapSheet(nil, "unicorn_AIRBOSS-trapsheet-"..player_name)

			elseif string_grade == "OK" and player_wire >1 then 
				CVN_1stVFW_Airboss:SetTrapSheet(nil, "AIRBOSS-trapsheet-"..player_name)


			elseif string_grade == "(OK)" and player_wire >1 then 
				CVN_1stVFW_Airboss:SetTrapSheet(nil, "AIRBOSS-trapsheet-"..player_name)

			elseif string_grade == "--" and player_wire >1 then
				CVN_1stVFW_Airboss:SetTrapSheet(nil, "AIRBOSS-trapsheet-"..player_name)

			end
			myGrade.messageType = 2
			myGrade.callsign = playerData.callsign
			myGrade.name = playerData.name
				if playerData.wire == 1 then
				myGrade.points = myGrade.points -1.00
				local onewire_to_discord = (''..player_name..' almost had a rampstrike with that 1-wire!')
				HypeMan.sendBotMessage(onewire_to_discord)
				end
			self:_SaveTrapSheet(playerData, mygrade)
			HypeMan.sendBotTable(myGrade)

			timer.scheduleFunction(resetTrapSheetFileFormat, {}, timer.getTime() + 10) 

		end
	
	function CVN_1stVFW_Airboss:addCyclicWindow(first_window_time_call,window_length_call, window_gap_call) -- This section sets recovery windows, currently it sets 5 on
		local window_start_time
		local window_end_time
		local windowList = CVN_1stVFW_Airboss.recoverytimes
		
		while ( #windowList < 5) -- create recovery windows until we have 5 total windows in the queue
			do
			if ( #windowList == 0) then -- initial window creation based on first_window_time variable
				window_start_time = first_window_time_call + window_gap_call * #windowList
				local first_window_end_time = first_window_time_call + window_length_call
				window_end_time = first_window_end_time + window_gap_call * #windowList

			elseif ( #windowList > 0) then -- follow on windows are based on previous windows
				local recoveryWindowTable = CVN_1stVFW_Airboss.recoverytimes
				local lastRecoveryWindow = recoveryWindowTable[#recoveryWindowTable]

				window_start_time = lastRecoveryWindow.START + window_gap
				window_end_time = window_start_time + window_length
			end

			local midnight = 86400
			if ( window_end_time < sunsetSeconds ) then -- check window end time and if it is after sunset, set case 3
				local window1 = CVN_1stVFW_Airboss:AddRecoveryWindow( UTILS.SecondsToClock(window_start_time, true ), UTILS.SecondsToClock( window_end_time, true ), 1, nil, true, 30, false)
			end

			if window_end_time > sunsetSeconds then

				window_end_time = window_start_time + case3WindowLength 

				if window_end_time > midnight and window_start_time < midnight then 
					window_end_time = window_end_time - midnight
					local window1=CVN_1stVFW_Airboss:AddRecoveryWindow( UTILS.SecondsToClock(window_start_time,true), UTILS.SecondsToClock(window_end_time,true).."+1", 3,  0, true, 30, true)

				elseif window_start_time > midnight then 
					window_end_time = window_end_time - midnight
					window_start_time = window_start_time - midnight
					local window1=CVN_1stVFW_Airboss:AddRecoveryWindow( UTILS.SecondsToClock(window_start_time,true).."+1", UTILS.SecondsToClock(window_end_time,true).."+1", 3,  0, true, 30, true)

				elseif window_end_time <= midnight then 
					local window1=CVN_1stVFW_Airboss:AddRecoveryWindow( UTILS.SecondsToClock(window_start_time,true), UTILS.SecondsToClock(window_end_time,true), 3,  0, true, 30, true)
				end
			end	
		end

	end
	CVN_1stVFW_Airboss:Start()-- Start airboss class.
end

if UNIT:FindByName("LHA") ~= nil then -- Checks if a unit named "LHA" exist
MESSAGE:New("LHA present, Loading LHA Airboss", 30):ToAll()
	if UNIT:FindByName("LHA_RH") ~= nil then
		-- Rescue Helo Spawning in air.
		lha_RH=RESCUEHELO:New("LHA", "LHA_RH")
		lha_RH:SetHomeBase(AIRBASE:FindByName("LHA"))
		lha_RH:SetModex(420)
		lha_RH:Start() --Handled by function
	end 

	if UNIT:FindByName("LHA_EW") ~= nil then
		-- AWACS for LHA.
		lha_EW=RECOVERYTANKER:New("LHA", "LHA_EW")
		lha_EW:SetHomeBase(AIRBASE:FindByName("LHA"))
		lha_EW:SetAWACS()
		lha_EW:SetRadio(352.750)
		lha_EW:SetModex(738)
		lha_EW:SetSpeed(250)
		lha_EW:SetAltitude(AWACSaltitude)
		lha_EW:SetRacetrackDistances(10, 4)
		lha_EW:SetPatternUpdateDistance(5)
		lha_EW:SetCallsign(CALLSIGN.AWACS.Magic, 2)
		lha_EW:SetTakeoffAir()
		lha_EW:Start()
	end


	-- Create AIRBOSS object for USS Tarawa
	local LHA_1stVFW_Airboss=AIRBOSS:New("LHA","LHA")
	LHA_1stVFW_Airboss:Load("C:\\", "Tarawa_AIRBOSS-LSOgrades.csv")-- Load all saved player grades from your "Saved Games\DCS" folder (if lfs was desanitized).
	LHA_1stVFW_Airboss:SetAutoSave("C:\\", "Tarawa_AIRBOSS-LSOgrades.csv")
	LHA_1stVFW_Airboss:SetMarshalRadio(LHAMarshal) -- Marshal and LSO radio.
	LHA_1stVFW_Airboss:SetLSORadio(LHALSO)
	LHA_1stVFW_Airboss:SetRadioRelayLSO("LHA_RR_LSO")	-- Radio relays.  
	LHA_1stVFW_Airboss:SetRadioRelayMarshal("LHA_RR_Marshal")	
	LHA_1stVFW_Airboss:SetSoundfilesFolder("Airboss Soundfiles/")-- Set folder of airboss sound files within miz file.		
	LHA_1stVFW_Airboss:SetTACAN(LHATCN, "X", "LHA")-- Beacons.
	LHA_1stVFW_Airboss:SetICLS(LHAICLS, "LHA")	
	LHA_1stVFW_Airboss:SetMenuSingleCarrier(false)-- Single carrier menu optimization.	
	LHA_1stVFW_Airboss:SetMenuRecovery(15,30, false, 0) --(recovery time,winds,U-turn, offset)Set Skipper Menu
	LHA_1stVFW_Airboss:SetDespawnOnEngineShutdown(true)	--Set Despawn AI on Shutdown
	LHA_1stVFW_Airboss:SetSoundfilesFolder("Airboss Soundfiles M_G LSO_G/")-- Set Sound Pack
	LHA_1stVFW_Airboss:SetVoiceOversMarshalByGabriella()
	LHA_1stVFW_Airboss:SetMaxSectionSize(4)
	LHA_1stVFW_Airboss:SetMaxFlightsPerStack(3)
	LHA_1stVFW_Airboss:SetPatrolAdInfinitum(true)
	LHA_1stVFW_Airboss:SetHandleAIOFF()
	
	LHA_Deck_Management_menu = MENU_MISSION:New("LHA",Deck_Management_menu) -- sets CVN menu inside deck management
		LHA_Spawn_menu = MENU_MISSION:New("Spawn Statics",LHA_Deck_Management_menu) -- spawn menu set inside deck managment
		--Waiting for static functions to populate
		LHA_Despawn_Menu = MENU_MISSION:New("Despawn Statics",LHA_Deck_Management_menu) -- despawn menu set inside deck management
		--Waiting for static functions to populate
		
		if dynamic_weather then --dynamic weather switch
			LHA_1stVFW_Airboss:SetStaticWeather(false)
		else 
			LHA_1stVFW_Airboss:SetStaticWeather(true)
		end
		
		function LHA_1stVFW_Airboss:OnAfterStart(From,Event,To)
		end
		
		function LHA_1stVFW_Airboss:OnAfterRecoveryStart(From, Event, To) 	--Fuction will activate once recovery starts
			lha_RH:__Start(2)--Start helo on recovery window start
		end
		
		function LHA_1stVFW_Airboss:OnAfterRecoveryStop(From, Event, To) 	--Function will activate once recovery stops
			lha_RH:__Stop(30)--Stop helo on recovery window ending
		end
		
	LHA_1stVFW_Airboss:Start()-- Start airboss class.
end

MESSAGE:New("Airboss Script Loaded", 30):ToAll()