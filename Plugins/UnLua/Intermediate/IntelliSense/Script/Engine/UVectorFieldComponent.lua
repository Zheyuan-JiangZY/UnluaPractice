---A Component referencing a vector field.
---@class UVectorFieldComponent : UPrimitiveComponent
---@field public VectorField UVectorField @The vector field asset.
---@field public Intensity number @The intensity at which the vector field is applied.
---@field public Tightness number @How tightly particles follow the vector field.
---@field public bPreviewVectorField boolean @If true, the vector field is only used for preview visualizations.
local UVectorFieldComponent = {}

---Set the intensity of the vector field.
---@param NewIntensity number
function UVectorFieldComponent:SetIntensity(NewIntensity) end

