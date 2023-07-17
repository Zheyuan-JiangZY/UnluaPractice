---The core ActorComponent for interfacing with the GameplayAbilities System
---@class UGameplayTasksComponent : UActorComponent
---@field public bIsNetDirty boolean @Set to indicate that GameplayTasksComponent needs immediate replication. @@TODO could just use ForceReplication(), but this allows initial implementation to be game specific.
---@field protected SimulatedTasks TArray<UGameplayTask>
---@field protected TaskPriorityQueue TArray<UGameplayTask>
---@field protected TickingTasks TArray<UGameplayTask> @Array of currently active UGameplayTask that require ticking
---@field protected KnownTasks TArray<UGameplayTask> @All known tasks (processed by this component) referenced for GC
---@field public OnClaimedResourcesChange MulticastDelegate
local UGameplayTasksComponent = {}

function UGameplayTasksComponent:OnRep_SimulatedTasks() end

---END IGameplayTaskOwnerInterface
---@param TaskOwner TScriptInterface_UGameplayTaskOwnerInterface_
---@param Task UGameplayTask
---@param Priority integer
---@param AdditionalRequiredResources TArray_TSubclassOf_UGameplayTaskResource__
---@param AdditionalClaimedResources TArray_TSubclassOf_UGameplayTaskResource__
---@return EGameplayTaskRunResult
function UGameplayTasksComponent.K2_RunGameplayTask(TaskOwner, Task, Priority, AdditionalRequiredResources, AdditionalClaimedResources) end

