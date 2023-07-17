---@class AGameplayDebuggerCategoryReplicator : AActor
---@field protected OwnerPC APlayerController
---@field protected bIsEnabled boolean
---@field protected ReplicatedData FGameplayDebuggerNetPack
---@field protected DebugActor FGameplayDebuggerDebugActor
---@field protected VisLogSync FGameplayDebuggerVisLogSync
---@field protected RenderingComp UGameplayDebuggerRenderingComponent @rendering component needs to attached to some actor, and this is as good as any
local AGameplayDebuggerCategoryReplicator = {}

---@param bEnable boolean
function AGameplayDebuggerCategoryReplicator:ServerSetEnabled(bEnable) end

---@param Actor AActor
---@param bSelectInEditor boolean
function AGameplayDebuggerCategoryReplicator:ServerSetDebugActor(Actor, bSelectInEditor) end

---@param CategoryId integer
---@param bEnable boolean
function AGameplayDebuggerCategoryReplicator:ServerSetCategoryEnabled(CategoryId, bEnable) end

---helper function for replicating input for extension handlers
---@param ExtensionId integer
---@param HandlerId integer
function AGameplayDebuggerCategoryReplicator:ServerSendExtensionInputEvent(ExtensionId, HandlerId) end

---helper function for replicating input for category handlers
---@param CategoryId integer
---@param HandlerId integer
function AGameplayDebuggerCategoryReplicator:ServerSendCategoryInputEvent(CategoryId, HandlerId) end

