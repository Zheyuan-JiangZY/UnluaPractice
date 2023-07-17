---@class FVehicleTransmissionData
---@field public bUseGearAutoBox boolean @Whether to use automatic transmission
---@field public GearSwitchTime number @Time it takes to switch gears (seconds)
---@field public GearAutoBoxLatency number @Minimum time it takes the automatic transmission to initiate a gear change (seconds)
---@field public FinalRatio number @The final gear ratio multiplies the transmission gear ratios.
---@field public ForwardGears TArray<FVehicleGearData> @Forward gear ratios (up to 30)
---@field public ReverseGearRatio number @Reverse gear ratio
---@field public NeutralGearUpRatio number @Value of engineRevs/maxEngineRevs that is high enough to increment gear
---@field public ClutchStrength number @Strength of clutch (Kgm^2/s)
local FVehicleTransmissionData = {}
