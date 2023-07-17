---Direct API interface for the Magic Leap Persistent AR Pin tracker system.
---@class UMagicLeapARPinFunctionLibrary : UBlueprintFunctionLibrary
local UMagicLeapARPinFunctionLibrary = {}

---Unbind a dynamic delegate from the OnMagicLeapContentBindingFound event.
---@param Delegate Delegate
function UMagicLeapARPinFunctionLibrary.UnBindToOnMagicLeapContentBindingFoundDelegate(Delegate) end

---Unbind a dynamic delegate from the OnMagicLeapARPinUpdated event.
---@param Delegate Delegate
function UMagicLeapARPinFunctionLibrary.UnBindToOnMagicLeapARPinUpdatedDelegate(Delegate) end

---Set the filter used to query ARPins at the specified frequency (see UMagicLeapARPinSettings). This will alter the results reported via the OnMagicLeapARPinUpdated delegates only
---and not the ones by GetClosestARPin() and QueryARPins().
---By default the filter includes all available Pin in an unbounded distance. If an ARPin's type changes to one that is not in the specified filter,
---or it falls outside the specified search volume, it will be marked as a "deleted" Pin even if it is still present in the environment.
---@param InGlobalFilter FMagicLeapARPinQuery
---@return EMagicLeapPassableWorldError
function UMagicLeapARPinFunctionLibrary.SetGlobalQueryFilter(InGlobalFilter) end

---Set the user index to be used to save / load the save game object used for storing all the content bindings (PinID and ObjectID associations in a MagicLeapARPinComponent).
---Call this before the first tick of the level.
---@param UserIndex integer
function UMagicLeapARPinFunctionLibrary.SetContentBindingSaveGameUserIndex(UserIndex) end

---Returns filtered set of Pins based on the informed parameters.
---@param Query FMagicLeapARPinQuery
---@param Pins TArray_FGuid_ @[out] 
---@return EMagicLeapPassableWorldError
function UMagicLeapARPinFunctionLibrary.QueryARPins(Query, Pins) end

---@param PinIdString string
---@param ARPinId FGuid @[out] 
---@return boolean
function UMagicLeapARPinFunctionLibrary.ParseStringToARPinId(PinIdString, ARPinId) end

---Is an ARPin tracker already created.
---@return boolean
function UMagicLeapARPinFunctionLibrary.IsTrackerValid() end

---Returns the count of currently available AR Pins.
---@param Count integer @[out] 
---@return EMagicLeapPassableWorldError
function UMagicLeapARPinFunctionLibrary.GetNumAvailableARPins(Count) end

---The current filter used when querying pins for updates.
---@param CurrentGlobalFilter FMagicLeapARPinQuery @[out] 
---@return EMagicLeapPassableWorldError
function UMagicLeapARPinFunctionLibrary.GetGlobalQueryFilter(CurrentGlobalFilter) end

---Get the user index used to save / load the save game object used for storing all the content bindings (PinID and ObjectID associations in a MagicLeapARPinComponent).
---@return integer
function UMagicLeapARPinFunctionLibrary.GetContentBindingSaveGameUserIndex() end

---Returns the Pin closest to the target point passed in.
---@param SearchPoint FVector
---@param PinID FGuid @[out] 
---@return EMagicLeapPassableWorldError
function UMagicLeapARPinFunctionLibrary.GetClosestARPin(SearchPoint, PinID) end

---Returns all the AR Pins currently available.
---@param NumRequested integer
---@param Pins TArray_FGuid_ @[out] 
---@return EMagicLeapPassableWorldError
function UMagicLeapARPinFunctionLibrary.GetAvailableARPins(NumRequested, Pins) end

---@param State FMagicLeapARPinState
---@return string
function UMagicLeapARPinFunctionLibrary.GetARPinStateToString(State) end

---Returns the state of the requested Pin.
---@param PinID FGuid
---@param State FMagicLeapARPinState @[out] 
---@return EMagicLeapPassableWorldError
function UMagicLeapARPinFunctionLibrary.GetARPinState(PinID, State) end

---Returns the position & orientation of the requested Pin in tracking space
---@param PinID FGuid
---@param Position FVector @[out] 
---@param Orientation FRotator @[out] 
---@param PinFoundInEnvironment boolean @[out] 
---@return boolean
function UMagicLeapARPinFunctionLibrary.GetARPinPositionAndOrientation_TrackingSpace(PinID, Position, Orientation, PinFoundInEnvironment) end

---Returns the world position & orientation of the requested Pin.
---@param PinID FGuid
---@param Position FVector @[out] 
---@param Orientation FRotator @[out] 
---@param PinFoundInEnvironment boolean @[out] 
---@return boolean
function UMagicLeapARPinFunctionLibrary.GetARPinPositionAndOrientation(PinID, Position, Orientation, PinFoundInEnvironment) end

---Destroy an ARPin tracker.
---@return EMagicLeapPassableWorldError
function UMagicLeapARPinFunctionLibrary.DestroyTracker() end

---Create an ARPin tracker.
---poll for IsTrackerValid() to check when the privilege is granted and tracker successfully created.
---@return EMagicLeapPassableWorldError
function UMagicLeapARPinFunctionLibrary.CreateTracker() end

---Bind a dynamic delegate to the OnMagicLeapContentBindingFound event.
---The delegate reports a PinID and the set of ObjectIds that were saved (via a MagicLeapARPinComponent) for that Pin.
---This delegate can be used to spawn the actors associated with that ObjectId. Spawn the actor, set the ObjectId and then call
---UMagicLeapARPinComponent::AttemptPinDataRestoration().
---@param Delegate Delegate
function UMagicLeapARPinFunctionLibrary.BindToOnMagicLeapContentBindingFoundDelegate(Delegate) end

---Bind a dynamic delegate to the OnMagicLeapARPinUpdated event.
---The delegate reports 3 arrays for ARPins added, updated and deleted.
---Whether a pin is considered updated is determined by whehter any of its state parameters changed a specified delta.
---The delta thresholds can be set in Project Settings > MagicLeapARPin Plugin
---@param Delegate Delegate
function UMagicLeapARPinFunctionLibrary.BindToOnMagicLeapARPinUpdatedDelegate(Delegate) end

---@param ARPinId FGuid
---@return string
function UMagicLeapARPinFunctionLibrary.ARPinIdToString(ARPinId) end

