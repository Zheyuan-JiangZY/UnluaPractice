---MeshComponent is an abstract base for any component that is an instance of a renderable collection of triangles.
---@class UMeshComponent : UPrimitiveComponent
---@field public OverrideMaterials TArray<UMaterialInterface> @Material overrides.
---@field protected bEnableMaterialParameterCaching boolean
local UMeshComponent = {}

---Set all occurrences of Vector Material Parameters with ParameterName in the set of materials of the SkeletalMesh to ParameterValue
---@param ParameterName string
---@param ParameterValue FVector
function UMeshComponent:SetVectorParameterValueOnMaterials(ParameterName, ParameterValue) end

---Set all occurrences of Scalar Material Parameters with ParameterName in the set of materials of the SkeletalMesh to ParameterValue
---@param ParameterName string
---@param ParameterValue number
function UMeshComponent:SetScalarParameterValueOnMaterials(ParameterName, ParameterValue) end

---Tell the streaming system to start loading all textures with all mip-levels.
---@param Seconds number
---@param bPrioritizeCharacterTextures boolean
---@param CinematicTextureGroups integer @[opt] 
function UMeshComponent:PrestreamTextures(Seconds, bPrioritizeCharacterTextures, CinematicTextureGroups) end

---@param MaterialSlotName string
---@return boolean
function UMeshComponent:IsMaterialSlotNameValid(MaterialSlotName) end

---@return TArray_string_
function UMeshComponent:GetMaterialSlotNames() end

---@return TArray_UMaterialInterface_
function UMeshComponent:GetMaterials() end

---@param MaterialSlotName string
---@return integer
function UMeshComponent:GetMaterialIndex(MaterialSlotName) end

