---@class UMaterialExpressionMaterialAttributeLayers : UMaterialExpression
---@field public ParameterName string @name to be referenced when we want to find and set this parameter
---@field public ExpressionGUID FGuid @GUID that should be unique within the material, this is used for parameter renaming.
---@field public Input FMaterialAttributesInput
---@field public DefaultLayers FMaterialLayersFunctions
---@field public LayerCallers TArray<UMaterialExpressionMaterialFunctionCall>
---@field public NumActiveLayerCallers integer
---@field public BlendCallers TArray<UMaterialExpressionMaterialFunctionCall>
---@field public NumActiveBlendCallers integer
---@field public bIsLayerGraphBuilt boolean
local UMaterialExpressionMaterialAttributeLayers = {}

