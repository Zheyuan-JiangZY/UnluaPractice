---Component to make content persist at locations in the real world.
---@class UMagicLeapARPinComponent : USceneComponent
---@field public ObjectUID string @Unique ID for this component to save the meta data for the Pin and make content persistent. This name has to be unique across all instances of the MagicLeapARPinComponent class. If empty, the name of the owner actor will be used.
---@field public UserIndex integer @Index to get the save game data for the pin
---@field public AutoPinType EMagicLeapAutoPinType @Mode for automatically pinning this component or it's owner actor to real-world.
---@field public bShouldPinActor boolean @Pin this component's owner actor instead of just the component itself. Relevant only when using 'OnlyOnDataRestoration' or 'Always' as AutoPinType.
---@field public PinDataClass TSubclassOf<UMagicLeapARPinSaveGame> @The user defined save game class associated with this pin.  Note that this MUST match the type passed into GetPinData().
---@field public SearchPinTypes TSet<EMagicLeapARPinType> @Pin types to look for when attempting to pin this component.
---@field public SearchVolume USphereComponent @Volume to search for an ARPin in. The position and scaled radius (in Unreal Units) of this sphere is used to look for an ARPin of type SearchPinTypes.
---@field public OnPersistentEntityPinned MulticastDelegate @Fired when an entity is successfully pinned by this component.
---@field public OnPersistentEntityPinLost MulticastDelegate @Fired when an entity loses its pin.
---@field public OnPinDataLoadAttemptCompleted MulticastDelegate
---@field private PinnedCFUID FGuid
---@field private PinnedSceneComponent USceneComponent
---@field private PinData UMagicLeapARPinSaveGame
local UMagicLeapARPinComponent = {}

---Detach or un-pin the currently pinned entity (component) from the real-world.
---Call this if you want to change the transform of a pinned entity.
---Note that if you still want your content to persist, you will have to call PinToBestFit() or PinToID() before EndPlay().
function UMagicLeapARPinComponent:UnPin() end

---Tries to retreive the data associated with this pin. Returns false if the data hasnt been loaded from the disk yet.
---In that case, wait until the OnPinDataLoadAttemptCompleted event is called.
---@param InPinDataClass TSubclassOf_UMagicLeapARPinSaveGame_
---@param OutPinDataValid boolean @[out] 
---@return UMagicLeapARPinSaveGame
function UMagicLeapARPinComponent:TryGetPinData(InPinDataClass, OutPinDataValid) end

---Pin this component (or owner actor if bShouldPinActor is true) to the PinID that was restored from a previous session
---or was synced voer the network.
---OnPersistentEntityPinned event will be fired when the restored pin will be found in the environment.
---The component's transform will then be locked. App needs to call UnPin() if it wants to move the component again.
---@return boolean
function UMagicLeapARPinComponent:PinToRestoredOrSyncedID() end

---Pin this component (or owner actor if bShouldPinActor is true) to the specified PinID.
---If this pin exists in the environment, OnPersistentEntityPinned event will be fired in the next Tick.
---The component's transform will then be locked. App needs to call UnPin() if it wants to move the component again.
---@param PinID FGuid
---@return boolean
function UMagicLeapARPinComponent:PinToID(PinID) end

---Pin this component (or owner actor if bShouldPinActor is true) to the ARPin that is the best fit based on its location and
---desired type. If UMagicLeapARPinFunctionLibrary::QueryARPins() is implemented on this platform, pins of type SearchPinTypes
---will be searched within the SearchVolume (250cm radius by default) and the closest one will be selected. Otherwise, a simple
---search of the closest pin will be used to get the desired ARPin.
---OnPersistentEntityPinned event will be fired when a suitable ARPin is found for this component.
---The component's transform will then be locked. App needs to call UnPin() if it wants to move the component again.
function UMagicLeapARPinComponent:PinToBestFit() end

---Deprecated and can no longer be used to pin any scene component other than itself. Use PinToBestFit(), PinToID() or PinToRestoredOrSyncedID() instead.
---If a reference to itself passed to this function, PinToBestFit() is called internally.
---@param ComponentToPin USceneComponent
---@return boolean
function UMagicLeapARPinComponent:PinSceneComponent(ComponentToPin) end

---True if the AR Pin for the unique ID ObjectUID was restored from the app's local storage or was repliated over network.
---Implies if content was already pinned earlier. Does not imply if that restored Pin is available in the current environment.
---@return boolean
function UMagicLeapARPinComponent:PinRestoredOrSynced() end

---Deprecated and can no longer be used to pin any actor other than the owner of this component.
---Set bShouldPinActor to true and call PinToBestFit(), PinToID() or PinToRestoredOrSyncedID() instead.
---If this component's owner is passed to this function, PinToBestFit() is called internally.
---@param ActorToPin AActor
---@return boolean
function UMagicLeapARPinComponent:PinActor(ActorToPin) end

---Delegate used to notify the instigating blueprint that an entity (component or actor) has been successfully pinned to the real-world.
---Indicates that the transform of the pinned entity is now locked. App needs to call UnPin() if it wants to move the entity again.
---@param bRestoredOrSynced boolean
function UMagicLeapARPinComponent:PersistentEntityPinned__DelegateSignature(bRestoredOrSynced) end

---Delegate used to notify the instigating blueprint that an entity (component or actor) has lost a previously obtained pin.
function UMagicLeapARPinComponent:PersistentEntityPinLost__DelegateSignature() end

---Delegate used to notify that the pin data associated with this component's ObjectUID has been successfully loaded or not.
---@param bDataRestored boolean
function UMagicLeapARPinComponent:MagicLeapARPinDataLoadAttemptCompleted__DelegateSignature(bDataRestored) end

---True if an entity (component or actor) is currently pinned by this component.
---If true, the entity's transform will be locked. App needs to call UnPin() if it wants to move it again.
---If false, and you still want your content to persist, you will have to call PinSceneComponent() or PinActor() before EndPlay().
---@return boolean
function UMagicLeapARPinComponent:IsPinned() end

---Returns the state of this Pin.
---@param State FMagicLeapARPinState @[out] 
---@return boolean
function UMagicLeapARPinComponent:GetPinState(State) end

---Get the ID of the Pin the entity (component or actor) is currently pinned to.
---@param PinID FGuid @[out] 
---@return boolean
function UMagicLeapARPinComponent:GetPinnedPinID(PinID) end

---Retrieves the data associated with this pin. Make sure to call this only after setting a proper ObjectID value.
---@param PinDataClass TSubclassOf_UMagicLeapARPinSaveGame_
---@return UMagicLeapARPinSaveGame
function UMagicLeapARPinComponent:GetPinData(PinDataClass) end

---If BeginPlay() is called before app sets ObjectUID (can happen when
---component is spawned at runtime or actor that includes this component
---is spawned at runtime), this function can be called to attempt a fresh
---restoration. It loads the pin data from disk asynchronously.
---The OnPinDataLoadAttemptCompleted event is called to indicate whether
---the data was succesfully loaded or not.
function UMagicLeapARPinComponent:AttemptPinDataRestorationAsync() end

---If BeginPlay() is called before app sets ObjectUID (can happen when
---component is spawned at runtime or actor that includes this component
---is spawned at runtime), this function can be called to attempt a fresh
---restoration.
---@return boolean
function UMagicLeapARPinComponent:AttemptPinDataRestoration() end

