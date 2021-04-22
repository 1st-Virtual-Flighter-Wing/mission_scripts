-- Start Blue Aircraft
	-- BCap_1 - F-15C North1
	Spawn_BCap1 = SPAWN:New("BCap-1"):InitLimit(2,12)
		Spawn_BCap1:InitRepeatOnEngineShutDown()
		Spawn_BCap1:InitDelayOff()
		Spawn_BCap1:InitCleanUp(60)
	Spawn_BCap1:SpawnScheduled(3600,.8) -- 1 Hours +/- 30 minutes
	
	-- BCap_2 - F-15C South
	Spawn_BCap2 = SPAWN:New("BCap-2"):InitLimit(2,12)
		Spawn_BCap2:InitRepeatOnEngineShutDown()
		Spawn_BCap2:InitDelayOff()
		Spawn_BCap2:InitCleanUp(60)
	Spawn_BCap2:SpawnScheduled(3600,.8) -- 1 Hours +/- 30 minutes
	
	-- BCap_3 - F-18C Carrier
	Spawn_BCap3 = SPAWN:New("BCap-3"):InitLimit(2,12)
		Spawn_BCap3:InitRepeatOnEngineShutDown()
		Spawn_BCap3:InitDelayOff()
		Spawn_BCap3:InitCleanUp(30)
	Spawn_BCap3:SpawnScheduled(3600,.8) -- 1 Hours +/- 30 minutes
	
	-- BCap_4 - F-15C North2
	Spawn_BCap4 = SPAWN:New("BCap-4"):InitLimit(2,12)
		Spawn_BCap4:InitRepeatOnEngineShutDown()
		Spawn_BCap4:InitDelayOff()
		Spawn_BCap4:InitCleanUp(60)
	Spawn_BCap4:SpawnScheduled(3600,.8) -- 1 Hours +/- 30 minutes
	
	-- BCap_5 - F-18C Carrier
	Spawn_BCap5 = SPAWN:New("BCap-5"):InitLimit(2,12)
		Spawn_BCap5:InitRepeatOnEngineShutDown()
		Spawn_BCap5:InitDelayOff()
		Spawn_BCap5:InitCleanUp(30)
	Spawn_BCap5:SpawnScheduled(3600,.8) -- 1 Hours +/- 30 minutes
	
	-- REC809 P-3
	Spawn_REC809 = SPAWN:New("REC809"):InitLimit(1,0)
		Spawn_REC809:InitRepeatOnEngineShutDown()
		Spawn_REC809:InitDelayOn()
		Spawn_REC809:InitCleanUp(60)
	Spawn_REC809:SpawnScheduled(3600,.8) -- 1 Hours +/- 30 minutes
	
	--EW772
	Spawn_EW772 = SPAWN:New("EW772"):InitLimit(1,0)
		Spawn_EW772:InitRepeatOnEngineShutDown()
		Spawn_EW772:InitDelayOff()
		Spawn_EW772:InitCleanUp(30)
	Spawn_EW772:SpawnScheduled(360,.8) -- +/- 30 minutes

-- End Blue Aircraft
	
-- Start Red Aircraft
	
-- CAP
	-- CAP-1 - Su-33 Carrier
	Spawn_Cap1 = SPAWN:New("Cap-1"):InitLimit(2,6)
		Spawn_Cap1:InitRepeatOnEngineShutDown()
		Spawn_Cap1:InitDelayOn()
		Spawn_Cap1:InitCleanUp(30)
	Spawn_Cap1:SpawnScheduled(5400,.8) -- 1.5 Hours +/- .75 Hour
	
	-- CAP-2 - Su-27 Central
	Spawn_Cap2 = SPAWN:New("Cap-2"):InitLimit(2,6)
		Spawn_Cap2:InitRepeatOnEngineShutDown()
		Spawn_Cap2:InitDelayOn()
		Spawn_Cap2:InitCleanUp(30)
	Spawn_Cap2:SpawnScheduled(5400,.8) -- 1.5 Hours +/- .75 Hour
	
	-- Cap-4 - Mig-29A
	Spawn_Cap4 = SPAWN:New("Cap-4"):InitLimit(2,6)
		Spawn_Cap4:InitRepeatOnEngineShutDown()
		Spawn_Cap4:InitDelayOn()
		Spawn_Cap4:InitCleanUp(30)
	Spawn_Cap4:SpawnScheduled(5400,.8) -- 1.5 Hours +/- .75 Hour
	
	-- Cap-5 - Mig-31
	Spawn_Cap5 = SPAWN:New("Cap-5"):InitLimit(2,4)
		Spawn_Cap5:InitRepeatOnEngineShutDown()
		Spawn_Cap5:InitDelayOn()
		Spawn_Cap5:InitCleanUp(30)
	Spawn_Cap5:SpawnScheduled(5400,.8) -- 1.5 Hours +/- .75 Hour
	
	-- Cap-6 - Iranian F-14A
	Spawn_Cap6 = SPAWN:New("Cap-6"):InitLimit(2,4)
		Spawn_Cap6:InitRepeatOnEngineShutDown()
		Spawn_Cap6:InitDelayOn()
		Spawn_Cap6:InitCleanUp(30)
	Spawn_Cap6:SpawnScheduled(5400,.8) -- 1.5 Hours +/- .75 Hour

	-- Cap-7 - Iranian F-5 North
	Spawn_Cap7 = SPAWN:New("Cap-7"):InitLimit(2,12)
		Spawn_Cap7:InitRepeatOnEngineShutDown()
		Spawn_Cap7:InitDelayOn()
		Spawn_Cap7:InitCleanUp(30)
	Spawn_Cap7:SpawnScheduled(5400,.8) -- 1.5 Hours +/- .75 Hour

	-- Cap-8 - Iranian F-5 South
	Spawn_Cap8 = SPAWN:New("Cap-8"):InitLimit(2,12)
		Spawn_Cap8:InitRepeatOnEngineShutDown()
		Spawn_Cap8:InitDelayOn()
		Spawn_Cap8:InitCleanUp(30)
	Spawn_Cap8:SpawnScheduled(5400,.8) -- 1.5 Hours +/- .75 Hour
	
-- AWACS
	Spawn_AWACS = SPAWN:New("EWR-AWACS"):InitLimit(1,12)
		Spawn_AWACS:InitRepeatOnEngineShutDown()
		Spawn_AWACS:InitDelayOn()
		Spawn_AWACS:InitCleanUp(30)
	Spawn_AWACS:SpawnScheduled(3600,.8) -- 1 Hours +/- 30 minutes