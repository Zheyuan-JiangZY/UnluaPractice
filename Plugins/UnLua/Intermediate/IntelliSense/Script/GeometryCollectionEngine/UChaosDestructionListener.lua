---Object allowing for retrieving Chaos Destruction data.
---@class UChaosDestructionListener : USceneComponent
---@field public bIsCollisionEventListeningEnabled boolean @Whether or not collision event listening is enabled
---@field public bIsBreakingEventListeningEnabled boolean @Whether or not collision event listening is enabled
---@field public bIsTrailingEventListeningEnabled boolean @Whether or not trailing event listening is enabled
---@field public CollisionEventRequestSettings FChaosCollisionEventRequestSettings @The settings to use for collision event listening
---@field public BreakingEventRequestSettings FChaosBreakingEventRequestSettings @The settings to use for breaking event listening
---@field public TrailingEventRequestSettings FChaosTrailingEventRequestSettings @The settings to use for trailing event listening
---@field public ChaosSolverActors TSet<AChaosSolverActor> @Which chaos solver actors we're using. If empty, this listener will fallback to the "world" solver.
---@field public GeometryCollectionActors TSet<AGeometryCollectionActor> @Which chaos solver actors we're using. If empty, this listener will fallback to the "world" solver.
---@field public OnCollisionEvents MulticastDelegate @Called when new collision events are available.
---@field public OnBreakingEvents MulticastDelegate @Called when new breaking events are available.
---@field public OnTrailingEvents MulticastDelegate @Called when new trailing events are available.
local UChaosDestructionListener = {}

---Sorts trailing events according to the given sort method
---@param TrailingEvents TArray_FChaosTrailingEventData_ @[out] 
---@param SortMethod EChaosTrailingSortMethod
function UChaosDestructionListener:SortTrailingEvents(TrailingEvents, SortMethod) end

---Sorts collision events according to the given sort method
---@param CollisionEvents TArray_FChaosCollisionEventData_ @[out] 
---@param SortMethod EChaosCollisionSortMethod
function UChaosDestructionListener:SortCollisionEvents(CollisionEvents, SortMethod) end

---Sorts breaking events according to the given sort method
---@param BreakingEvents TArray_FChaosBreakingEventData_ @[out] 
---@param SortMethod EChaosBreakingSortMethod
function UChaosDestructionListener:SortBreakingEvents(BreakingEvents, SortMethod) end

---Sets trailing event request settings dynamically
---@param InSettings FChaosTrailingEventRequestSettings
function UChaosDestructionListener:SetTrailingEventRequestSettings(InSettings) end

---Enables or disables breaking event listening
---@param bIsEnabled boolean
function UChaosDestructionListener:SetTrailingEventEnabled(bIsEnabled) end

---Sets collision event request settings dynamically
---@param InSettings FChaosCollisionEventRequestSettings
function UChaosDestructionListener:SetCollisionEventRequestSettings(InSettings) end

---Enables or disables collision event listening
---@param bIsEnabled boolean
function UChaosDestructionListener:SetCollisionEventEnabled(bIsEnabled) end

---Sets breaking event request settings dynamically
---@param InSettings FChaosBreakingEventRequestSettings
function UChaosDestructionListener:SetBreakingEventRequestSettings(InSettings) end

---Enables or disables breaking event listening
---@param bIsEnabled boolean
function UChaosDestructionListener:SetBreakingEventEnabled(bIsEnabled) end

---Dynamically removes a chaos solver from the listener
---@param GeometryCollectionActor AGeometryCollectionActor
function UChaosDestructionListener:RemoveGeometryCollectionActor(GeometryCollectionActor) end

---Dynamically removes a chaos solver from the listener
---@param ChaosSolverActor AChaosSolverActor
function UChaosDestructionListener:RemoveChaosSolverActor(ChaosSolverActor) end

---Returns if the destruction listener is listening to any events
---@return boolean
function UChaosDestructionListener:IsEventListening() end

---Dynamically adds a chaos solver to the listener
---@param GeometryCollectionActor AGeometryCollectionActor
function UChaosDestructionListener:AddGeometryCollectionActor(GeometryCollectionActor) end

---Dynamically adds a chaos solver to the listener
---@param ChaosSolverActor AChaosSolverActor
function UChaosDestructionListener:AddChaosSolverActor(ChaosSolverActor) end

