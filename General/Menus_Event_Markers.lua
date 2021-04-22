_SETTINGS:SetPlayerMenuOff()
-------------------------------------------------------------------------------------
EventMarkers_root_menu = MENU_MISSION:New("Discord Event Markers")
-------------------------------------------------------------------------------------
	-- MarkerA = SPAWN:New("AR848"):InitLimit( 1, 50 )
	local function EventA()
	  HypeMan.sendBotMessage('_**Event Marker A**_')
	end
	Event_Marker_A_menu_spawn = MENU_MISSION_COMMAND:New("Event Marker A",EventMarkers_root_menu,EventA)
	
	local function EventB()
	  HypeMan.sendBotMessage('_**Event Marker B**_')
	end
	Event_Marker_B_menu_spawn = MENU_MISSION_COMMAND:New("Event Marker B",EventMarkers_root_menu,EventB)
	
	local function EventC()
	  HypeMan.sendBotMessage('_**Event Marker C**_')
	end
	Event_Marker_C_menu_spawn = MENU_MISSION_COMMAND:New("Event Marker C",EventMarkers_root_menu,EventC)
	
	local function EventD()
	  HypeMan.sendBotMessage('_**Event Marker D**_')
	end
	Event_Marker_D_menu_spawn = MENU_MISSION_COMMAND:New("Event Marker D",EventMarkers_root_menu,EventD)
	
	local function EventE()
	  HypeMan.sendBotMessage('_**Event Marker E**_')
	end
	Event_Marker_E_menu_spawn = MENU_MISSION_COMMAND:New("Event Marker E",EventMarkers_root_menu,EventE)
	
	local function Event22()
	  HypeMan.sendBotMessage('_**Event Marker: Special Attention**_ <@&328010784569294848>')
	end
	Event_Marker_22_menu_spawn = MENU_MISSION_COMMAND:New("Notify 22nd VFS",EventMarkers_root_menu,Event22)
	
	local function Event212()
	  HypeMan.sendBotMessage('_**Event Marker: Special Attention**_ <@&328010257097949185>')
	end
	Event_Marker_212_menu_spawn = MENU_MISSION_COMMAND:New("Notify VMFA-212",EventMarkers_root_menu,Event212)
	
	local function EventCO()
	  HypeMan.sendBotMessage('_**Event Marker: Special Attention**_ <@&657744267330060288>')
	end
	Event_Marker_CO_menu_spawn = MENU_MISSION_COMMAND:New("Notify CO's",EventMarkers_root_menu,EventCO)
	
MESSAGE:New("Event Marker Script Loaded", 30):ToAll()