---@class UBehaviorTreeComponent : UBrainComponent
---@field protected NodeInstances TArray<UBTNode> @instanced nodes
---@field protected DefaultBehaviorTreeAsset UBehaviorTree @data asset defining the tree
local UBehaviorTreeComponent = {}

---assign subtree to RunBehaviorDynamic task specified by tag
---@param InjectTag FGameplayTag
---@param BehaviorAsset UBehaviorTree
function UBehaviorTreeComponent:SetDynamicSubtree(InjectTag, BehaviorAsset) end

---
---@param CooldownTag FGameplayTag
---@return number
function UBehaviorTreeComponent:GetTagCooldownEndTime(CooldownTag) end

---add to the cooldown tag's duration
---@param CooldownTag FGameplayTag
---@param CooldownDuration number
---@param bAddToExistingDuration boolean
function UBehaviorTreeComponent:AddCooldownTagDuration(CooldownTag, CooldownDuration, bAddToExistingDuration) end

