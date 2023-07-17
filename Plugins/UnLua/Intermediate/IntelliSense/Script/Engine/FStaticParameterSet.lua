---Contains all the information needed to identify a single permutation of static parameters.
---@class FStaticParameterSet
---@field public StaticSwitchParameters TArray<FStaticSwitchParameter> @An array of static switch parameters in this set
---@field public StaticComponentMaskParameters TArray<FStaticComponentMaskParameter> @An array of static component mask parameters in this set
---@field public TerrainLayerWeightParameters TArray<FStaticTerrainLayerWeightParameter> @An array of terrain layer weight parameters in this set
---@field public MaterialLayersParameters TArray<FStaticMaterialLayersParameter> @An array of function call parameters in this set
local FStaticParameterSet = {}
