---@class UARLifeCycleComponent : USceneComponent
---@field public OnARActorSpawnedDelegate MulticastDelegate
---@field public OnARActorToBeDestroyedDelegate MulticastDelegate
local UARLifeCycleComponent = {}

---@param ComponentClass TSubclassOf_UObject_
---@param NativeID FGuid
function UARLifeCycleComponent:ServerSpawnARActor(ComponentClass, NativeID) end

---@param Actor AARActor
function UARLifeCycleComponent:ServerDestroyARActor(Actor) end

---Called just before the AR actor is destroyed on the server
---@param Actor AARActor
function UARLifeCycleComponent:InstanceARActorToBeDestroyedDelegate__DelegateSignature(Actor) end

---Called when an AR actor is spawned on the server
---@param ComponentClass TSubclassOf_UObject_
---@param NativeID FGuid
---@param SpawnedActor AARActor
function UARLifeCycleComponent:InstanceARActorSpawnedDelegate__DelegateSignature(ComponentClass, NativeID, SpawnedActor) end

