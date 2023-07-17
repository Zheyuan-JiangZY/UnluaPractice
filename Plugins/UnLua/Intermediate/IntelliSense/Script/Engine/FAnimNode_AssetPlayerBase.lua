---Base class for any asset playing anim node
---@class FAnimNode_AssetPlayerBase : FAnimNode_Base
---@field public GroupName string @The group name (NAME_None if it is not part of any group)
---@field public GroupRole integer @The role this player can assume within the group (ignored if GroupIndex is INDEX_NONE)
---@field public GroupScope EAnimSyncGroupScope @The scope at which marker-based sync is applied
---@field public bIgnoreForRelevancyTest boolean @If true, "Relevant anim" nodes that look for the highest weighted animation in a state will ignore this node
---@field protected BlendWeight number @Last encountered blendweight for this node
---@field protected InternalTimeAccumulator number @Accumulated time used to reference the asset in this node
local FAnimNode_AssetPlayerBase = {}
