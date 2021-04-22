-- Atis Script for Syria

-- Atis for Incirlik AB on 380.100
	AtisIncirlik = ATIS:New(AIRBASE.Syria.Incirlik, 380.100)
	AtisIncirlik:SetRadioRelayUnitName("Radio Relay Incirlik")
	AtisIncirlik:SetTowerFrequencies({360.100})
	AtisIncirlik:SetTACAN(21)
	AtisIncirlik:AddILS(111.70, "23")
	AtisIncirlik:AddILS(109.30, "05")
	AtisIncirlik:Start()
	
-- ATIS for Hatay on 380.150
	AtisHatay = ATIS:New(AIRBASE.Syria.Hatay, 380.150)
	AtisHatay:SetRadioRelayUnitName("Radio Relay Hatay")
	AtisHatay:SetTowerFrequencies({250.150})
	AtisHatay:SetTACAN(52)
	AtisHatay:AddILS(108.15, "22")
	AtisHatay:AddILS(108.90, "04")
	AtisHatay:Start()
	
-- ATIS for Ramat on 380.950
	AtisRamat = ATIS:New(AIRBASE.Syria.Ramat_David, 380.950)
	AtisRamat:SetRadioRelayUnitName("Radio Relay Ramat")
	AtisRamat:SetTowerFrequencies({250.950})
	AtisRamat:SetTACAN(22)
	AtisRamat:Start()
	
-- ATIS for Kiryat on 380.400
	AtisKiryat = ATIS:New(AIRBASE.Syria.Kiryat_Shmona, 380.400)
	AtisKiryat:SetRadioRelayUnitName("Radio Relay Kiryat")
	AtisKiryat:SetTowerFrequencies({250.400})
	AtisKiryat:SetTACAN(29)
	AtisKiryat:Start()