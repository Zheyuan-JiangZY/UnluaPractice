---@class UMaterialInstanceDynamic : UMaterialInstance
local UMaterialInstanceDynamic = {}

---Set an MID vector parameter value, using MPI (to allow access to layer parameters)
---@param ParameterInfo FMaterialParameterInfo
---@param Value FLinearColor
function UMaterialInstanceDynamic:SetVectorParameterValueByInfo(ParameterInfo, Value) end

---Set an MID vector parameter value
---@param ParameterName string
---@param Value FLinearColor
function UMaterialInstanceDynamic:SetVectorParameterValue(ParameterName, Value) end

---Set an MID texture parameter value using MPI (to allow access to layer parameters)
---@param ParameterInfo FMaterialParameterInfo
---@param Value UTexture
function UMaterialInstanceDynamic:SetTextureParameterValueByInfo(ParameterInfo, Value) end

---Set an MID texture parameter value
---@param ParameterName string
---@param Value UTexture
function UMaterialInstanceDynamic:SetTextureParameterValue(ParameterName, Value) end

---Set a MID scalar (float) parameter value using MPI (to allow access to layer parameters)
---@param ParameterInfo FMaterialParameterInfo
---@param Value number
function UMaterialInstanceDynamic:SetScalarParameterValueByInfo(ParameterInfo, Value) end

---Set a MID scalar (float) parameter value
---@param ParameterName string
---@param Value number
function UMaterialInstanceDynamic:SetScalarParameterValue(ParameterName, Value) end

---Interpolates the scalar and vector parameters of this material instance based on two other material instances, and an alpha blending factor
---The output is the object itself (this).
---Supports the case SourceA==this || SourceB==this
---Both material have to be from the same base material
---@param SourceA UMaterialInstance
---@param SourceB UMaterialInstance
---@param Alpha number
function UMaterialInstanceDynamic:K2_InterpolateMaterialInstanceParams(SourceA, SourceB, Alpha) end

---Get the current MID vector parameter value, using MPI (to allow access to layer parameters)
---@param ParameterInfo FMaterialParameterInfo
---@return FLinearColor
function UMaterialInstanceDynamic:K2_GetVectorParameterValueByInfo(ParameterInfo) end

---Get the current MID vector parameter value
---@param ParameterName string
---@return FLinearColor
function UMaterialInstanceDynamic:K2_GetVectorParameterValue(ParameterName) end

---Get the current MID texture parameter value, using MPI (to allow access to layer parameters)
---@param ParameterInfo FMaterialParameterInfo
---@return UTexture
function UMaterialInstanceDynamic:K2_GetTextureParameterValueByInfo(ParameterInfo) end

---Get the current MID texture parameter value
---@param ParameterName string
---@return UTexture
function UMaterialInstanceDynamic:K2_GetTextureParameterValue(ParameterName) end

---Get the current scalar (float) parameter value from an MID, using MPI (to allow access to layer parameters)
---@param ParameterInfo FMaterialParameterInfo
---@return number
function UMaterialInstanceDynamic:K2_GetScalarParameterValueByInfo(ParameterInfo) end

---Get the current scalar (float) parameter value from an MID
---@param ParameterName string
---@return number
function UMaterialInstanceDynamic:K2_GetScalarParameterValue(ParameterName) end

---Copies over parameters given a material interface (copy each instance following the hierarchy)
---Very slow implementation, avoid using at runtime. Hopefully we can replace it later with something like CopyInterpParameters()
---The output is the object itself (this). Copying 'quick parameters only' will result in a much
---faster copy process but will only copy dynamic scalar, vector and texture parameters on clients.
---@param Source UMaterialInterface
---@param bQuickParametersOnly boolean @[opt] 
function UMaterialInstanceDynamic:K2_CopyMaterialInstanceParameters(Source, bQuickParametersOnly) end

---Copy parameter values from another material instance. This will copy only
---parameters explicitly overridden in that material instance!!
---@param MaterialInstance UMaterialInstance
function UMaterialInstanceDynamic:CopyParameterOverrides(MaterialInstance) end

---Copies over parameters given a material instance (only copy from the instance, not following the hierarchy)
---much faster than K2_CopyMaterialInstanceParameters(),
---The output is the object itself (this).
---@param Source UMaterialInstance
function UMaterialInstanceDynamic:CopyInterpParameters(Source) end

