---A 2d material that will be rendered always facing the camera.
---@class UMaterialBillboardComponent : UPrimitiveComponent
---@field public Elements TArray<FMaterialSpriteElement> @Current array of material billboard elements
local UMaterialBillboardComponent = {}

---Set all elements of this material billboard component
---@param NewElements TArray_FMaterialSpriteElement_
function UMaterialBillboardComponent:SetElements(NewElements) end

---Adds an element to the sprite.
---@param Material UMaterialInterface
---@param DistanceToOpacityCurve UCurveFloat
---@param bSizeIsInScreenSpace boolean
---@param BaseSizeX number
---@param BaseSizeY number
---@param DistanceToSizeCurve UCurveFloat
function UMaterialBillboardComponent:AddElement(Material, DistanceToOpacityCurve, bSizeIsInScreenSpace, BaseSizeX, BaseSizeY, DistanceToSizeCurve) end

