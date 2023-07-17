---@class Tutorial_BP_Class_C : AActor
---@field public UberGraphFrame FPointerToUberGraphFrame
---@field public DefaultSceneRoot USceneComponent
---@field public SampleVariable boolean
---@field public StoredGameMode AGameModeBase
local Tutorial_BP_Class_C = {}

---Construction script, the place to spawn components and do other setup.
function Tutorial_BP_Class_C:UserConstructionScript() end

---Event called every frame, if ticking is enabled
---@param DeltaSeconds number
function Tutorial_BP_Class_C:ReceiveTick(DeltaSeconds) end

---Event when play begins for this actor.
function Tutorial_BP_Class_C:ReceiveBeginPlay() end

