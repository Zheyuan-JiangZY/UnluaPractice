---@class UMaterialGraph : UEdGraph
---@field public Material UMaterial @Material this Graph represents
---@field public MaterialFunction UMaterialFunction @Material Function this Graph represents (NULL for Materials)
---@field public RootNode UMaterialGraphNode_Root @Root node representing Material inputs (NULL for Material Functions)
---@field public OriginalMaterialFullName string @The name of the material that we are editing
local UMaterialGraph = {}

