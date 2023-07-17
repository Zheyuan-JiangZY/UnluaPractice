---@class UMagicLeapPlanesFunctionLibrary : UBlueprintFunctionLibrary
local UMagicLeapPlanesFunctionLibrary = {}

---Re-orders an array of plane query flags based on the priority list passed.
---@param InPriority TArray_EMagicLeapPlaneQueryFlags_
---@param InFlagsToReorder TArray_EMagicLeapPlaneQueryFlags_
---@param OutReorderedFlags TArray_EMagicLeapPlaneQueryFlags_ @[out] 
function UMagicLeapPlanesFunctionLibrary.ReorderPlaneFlags(InPriority, InFlagsToReorder, OutReorderedFlags) end

---Removes a plane query. Returns a boolean of the operation's success
---@param Handle FGuid
---@return boolean
function UMagicLeapPlanesFunctionLibrary.RemovePersistentQuery(Handle) end

---Removes
---@param InQueryFlags TArray_EMagicLeapPlaneQueryFlags_
---@param InResultFlags TArray_EMagicLeapPlaneQueryFlags_
---@param OutFlags TArray_EMagicLeapPlaneQueryFlags_ @[out] 
function UMagicLeapPlanesFunctionLibrary.RemoveFlagsNotInQuery(InQueryFlags, InResultFlags, OutFlags) end

---Initiates a plane query.
---@param Query FMagicLeapPlanesQuery
---@param ResultDelegate Delegate
---@return boolean
function UMagicLeapPlanesFunctionLibrary.PlanesQueryBeginAsync(Query, ResultDelegate) end

---Initiates a persistant plane query.
---@param Query FMagicLeapPlanesQuery
---@param Handle FGuid
---@param ResultDelegate Delegate
---@return boolean
function UMagicLeapPlanesFunctionLibrary.PlanesPersistentQueryBeginAsync(Query, Handle, ResultDelegate) end

---Is a planes tracker already created.
---@return boolean
function UMagicLeapPlanesFunctionLibrary.IsTrackerValid() end

---Gets the expected scale of the actor to be placed within the bounds of the given plane.
---Ensure that the actor rotation is 0 (FQuat::Identity) before sending it to this function.
---@param ContentActor AActor
---@param PlaneResult FMagicLeapPlaneResult
---@return FTransform
function UMagicLeapPlanesFunctionLibrary.GetContentScale(ContentActor, PlaneResult) end

---Destroy a planes tracker.
---@return boolean
function UMagicLeapPlanesFunctionLibrary.DestroyTracker() end

---Create a planes tracker.
---@return boolean
function UMagicLeapPlanesFunctionLibrary.CreateTracker() end

---Adds a new plane query.
---@param PersistentQueryType EMagicLeapPlaneQueryType
---@return FGuid
function UMagicLeapPlanesFunctionLibrary.AddPersistentQuery(PersistentQueryType) end

