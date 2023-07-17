---Rig Controller for bone transform *
---@class FNode
---@field public Name string @Name of the original node. We don't allow to change this. This is used for identity.*
---@field public ParentName string @We save Parent Node but if the parent node is removed, it will reset to root
---@field public Transform FTransform @Absolute transform of the node. Hoping to use this data in the future to render
---@field public DisplayName string @This is Display Name where it will be used to display in Retarget Manager. This name has to be unique.
---@field public bAdvanced boolean
local FNode = {}
