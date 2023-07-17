---@class DatasmithAreaLightMesh_C : ADatasmithAreaLightActor
---@field public DefaultSceneRoot USceneComponent
---@field public NewVar_0 TArray<string>
local DatasmithAreaLightMesh_C = {}

---@param Intensity number
---@param Color FLinearColor
---@param Emissive FLinearColor @[out] 
function DatasmithAreaLightMesh_C:LightColor(Intensity, Color, Emissive) end

---Construction script, the place to spawn components and do other setup.
function DatasmithAreaLightMesh_C:UserConstructionScript() end

