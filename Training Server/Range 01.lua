-- Strafe pits. Each pit can consist of multiple targets. Here we have two pits and each of the pits has two targets. These are names of the corresponding units defined in the ME.
Range1_Strafepit={"R01 Pit Left", "R01 Pit Right"}


-- Table of bombing target names.
bombtargets_Range1={"R01 Circle 1", "R01 Circle 2", "R01 Circle 3", "R01 Circle 4", "R01 Circle 5" }

-- Create a range object.
Range1=RANGE:New("Range 01")


Range1:DebugOFF()
Range1:SetMaxStrafeAlt(3000)
-- Distance between foul line and strafe target. Note that this could also be done manually by simply measuring the distance between the target and the foul line in the ME.
Range1_Strafepit1=UNIT:FindByName("R01 Pit Left", "R01 Pit Right")
Range1_Foulline1=UNIT:FindByName("R01 Foul Line")

Range1_fouldist=Range1_Strafepit1:GetCoordinate():Get2DDistance(Range1_Foulline1:GetCoordinate())


-- Add strafe pits. Each pit (left and right) consists of two targets.
Range1:AddStrafePit(Range1_Strafepit, 3000, 300, nil, true, 20, Range1_fouldist)


-- Add bombing targets. A good hit is if the bomb falls less then 50 m from the target.
Range1:AddBombingTargets(bombtargets_Range1, 50)
Range1:SetDefaultPlayerSmokeBomb(false)
Range1:SetRangeControl(270.15)
Range1:SetInstructorRadio(270.10)
Range1:Start()

--Range 2


-- Strafe pits. Each pit can consist of multiple targets. Here we have two pits and each of the pits has two targets. These are names of the corresponding units defined in the ME.
Range2_Strafepit={"R02 Strafe Pit"}

-- Table of bombing target names.
bombtargets_Range2={"R02 Center Circle"}

-- Create a range object.
Range2=RANGE:New("Range 02")


Range2:DebugOFF()
Range2:SetMaxStrafeAlt(3000)
-- Distance between foul line and strafe target. Note that this could also be done manually by simply measuring the distance between the target and the foul line in the ME.
Range2_Strafepit1=UNIT:FindByName("R02 Strafe Pit")
Range2_Foulline1=UNIT:FindByName("R02 Foul Line")

Range2_fouldist=Range2_Strafepit1:GetCoordinate():Get2DDistance(Range2_Foulline1:GetCoordinate())


-- Add strafe pits. Each pit (left and right) consists of two targets.
Range2:AddStrafePit(Range2_Strafepit, 3000, 300, nil, true, 20, Range2_fouldist)


-- Add bombing targets. A good hit is if the bomb falls less then 50 m from the target.
Range2:AddBombingTargets(bombtargets_Range2, 50)
Range2:SetDefaultPlayerSmokeBomb(false)
Range2:SetRangeControl(360.65)
Range2:SetInstructorRadio(360.625)
Range2:Start()

---- Range 3

-- Strafe pits. Each pit can consist of multiple targets. Here we have two pits and each of the pits has two targets. These are names of the corresponding units defined in the ME.
Range3_Strafepit={"R03 Pit Left", "R03 Pit Right"}


-- Table of bombing target names.
bombtargets_Range3={"R03 Circle 1", "R03 Circle 2", "R03 Circle 3", "R03 Circle 4", "R03 Circle 5" }

-- Create a range object.
Range3=RANGE:New("Range 03")


Range3:DebugOFF()
Range3:SetMaxStrafeAlt(3000)
-- Distance between foul line and strafe target. Note that this could also be done manually by simply measuring the distance between the target and the foul line in the ME.
Range3_Strafepit1=UNIT:FindByName("R03 Pit Left", "R03 Pit Right")
Range3_Foulline1=UNIT:FindByName("R03 Foul Line")

Range3_fouldist=Range3_Strafepit1:GetCoordinate():Get2DDistance(Range3_Foulline1:GetCoordinate())


-- Add strafe pits. Each pit (left and right) consists of two targets.
Range3:AddStrafePit(Range3_Strafepit, 3000, 300, nil, true, 20, Range1_fouldist)


-- Add bombing targets. A good hit is if the bomb falls less then 50 m from the target.
Range3:AddBombingTargets(bombtargets_Range3, 50)
Range3:SetDefaultPlayerSmokeBomb(false)
Range3:SetRangeControl(234.25)
Range3:SetInstructorRadio(234.325)
Range3:Start()

--Range 4 Feral Range

-- Strafe pits. Each pit can consist of multiple targets. Here we have two pits and each of the pits has two targets. These are names of the corresponding units defined in the ME.
Range4_Strafepit_West={"R04 Strafe pit W1", "R04 Strafe pit W2"}
Range4_Strafepit_East={"R04 Strafe pit E1", "R04 Strafe pit E2"}

-- Table of bombing target names.
bombtargets_Range4={"R04 Feral Range Circles-1", "R04 Feral Range Circles-2", "R04 Feral Range Circles-3", "R04 Feral Range Circles-4", "R04 Feral Range Circles-5" }

-- Create a range object.
Range4=RANGE:New("Range 04")


Range4:DebugOFF()
Range4:SetMaxStrafeAlt(2000)
-- Distance between foul line and strafe target. Note that this could also be done manually by simply measuring the distance between the target and the foul line in the ME.
Range4_Strafepit1=UNIT:FindByName("R04 Strafe pit W1", "R04 Strafe pit W2")
Range4_Foulline1=UNIT:FindByName("R04 Foul Line West")

Range4_fouldist=Range4_Strafepit1:GetCoordinate():Get2DDistance(Range4_Foulline1:GetCoordinate())


-- Add strafe pits. Each pit (left and right) consists of two targets.
Range4:AddStrafePit(Range4_Strafepit_West, 2000, 300, nil, true, 20, Range4_fouldist)
Range4:AddStrafePit(Range4_Strafepit_East, 2000, 300, nil, true, 20, Range4_fouldist)



-- Add bombing targets. A good hit is if the bomb falls less then 50 m from the target.
Range4:AddBombingTargets(bombtargets_Range4, 50)
Range4:SetDefaultPlayerSmokeBomb(false)
Range4:SetRangeControl(236.25)
Range4:SetInstructorRadio(236.325)
Range4:Start()