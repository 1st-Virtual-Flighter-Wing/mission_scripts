-- Start Script for Syrian IADS
redIADS = SkynetIADS:create('SYRIA')
	redIADS:addEarlyWarningRadarsByPrefix('EWR')
	redIADS:addSAMSitesByPrefix('SAM')
	redIADS:getSAMSitesByNatoName('SA-2'):setGoLiveRangeInPercent(80):setHARMDetectionChance(45)
	redIADS:getSAMSitesByNatoName('SA-3'):setGoLiveRangeInPercent(80):setHARMDetectionChance(30)
	redIADS:getSAMSitesByNatoName('SA-6'):setGoLiveRangeInPercent(90):setHARMDetectionChance(50)
	redIADS:getSAMSitesByNatoName('SA-8'):setGoLiveRangeInPercent(100):setHARMDetectionChance(50)
	redIADS:getSAMSitesByNatoName('SA-10'):setGoLiveRangeInPercent(70):setHARMDetectionChance(80):setActAsEW(true)
	redIADS:getSAMSitesByNatoName('SA-11'):setGoLiveRangeInPercent(70):setHARMDetectionChance(80)
	redIADS:getSAMSitesByNatoName('SA-15'):setGoLiveRangeInPercent(100):setHARMDetectionChance(85)
	redIADS:getSAMSitesByNatoName('SA-19'):setGoLiveRangeInPercent(100):setHARMDetectionChance(85)
redIADS:setupSAMSitesAndThenActivate(45) 


--redIADS:addRadioMenu() 
	
-- Start Script for ALLIED IADS
blueIADS = SkynetIADS:create('US')
	--blueIADS:addEarlyWarningRadarsByPrefix('BLUE-EWR')
	blueIADS:addSAMSitesByPrefix('BLUE-SAM')
	blueIADS:getSAMSitesByNatoName('Patriot'):setGoLiveRangeInPercent(70):setHARMDetectionChance(90):setActAsEW(true)
	blueIADS:getSAMSitesByNatoName('Hawk'):setGoLiveRangeInPercent(90):setHARMDetectionChance(40)
blueIADS:setupSAMSitesAndThenActivate(45)   

--blueIADS:addRadioMenu()