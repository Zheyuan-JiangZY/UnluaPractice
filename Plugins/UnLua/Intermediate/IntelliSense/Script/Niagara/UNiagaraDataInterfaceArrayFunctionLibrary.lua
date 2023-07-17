---C++ and Blueprint library for accessing array types
---@class UNiagaraDataInterfaceArrayFunctionLibrary : UBlueprintFunctionLibrary
local UNiagaraDataInterfaceArrayFunctionLibrary = {}

---Sets a single value within a Niagara Array FVector.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param Index integer
---@param Value FVector
---@param bSizeToFit boolean
function UNiagaraDataInterfaceArrayFunctionLibrary.SetNiagaraArrayVectorValue(NiagaraSystem, OverrideName, Index, Value, bSizeToFit) end

---Sets a single value within a Niagara Array FVector4.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param Index integer
---@param Value FVector4
---@param bSizeToFit boolean
function UNiagaraDataInterfaceArrayFunctionLibrary.SetNiagaraArrayVector4Value(NiagaraSystem, OverrideName, Index, Value, bSizeToFit) end

---Sets Niagara Array FVector4 Data.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param ArrayData TArray_FVector4_
function UNiagaraDataInterfaceArrayFunctionLibrary.SetNiagaraArrayVector4(NiagaraSystem, OverrideName, ArrayData) end

---Sets a single value within a Niagara Array FVector2D.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param Index integer
---@param Value FVector2D
---@param bSizeToFit boolean
function UNiagaraDataInterfaceArrayFunctionLibrary.SetNiagaraArrayVector2DValue(NiagaraSystem, OverrideName, Index, Value, bSizeToFit) end

---Sets Niagara Array FVector2D Data.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param ArrayData TArray_FVector2D_
function UNiagaraDataInterfaceArrayFunctionLibrary.SetNiagaraArrayVector2D(NiagaraSystem, OverrideName, ArrayData) end

---Sets Niagara Array FVector Data.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param ArrayData TArray_FVector_
function UNiagaraDataInterfaceArrayFunctionLibrary.SetNiagaraArrayVector(NiagaraSystem, OverrideName, ArrayData) end

---Sets a single value within a Niagara Array FQuat.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param Index integer
---@param Value FQuat
---@param bSizeToFit boolean
function UNiagaraDataInterfaceArrayFunctionLibrary.SetNiagaraArrayQuatValue(NiagaraSystem, OverrideName, Index, Value, bSizeToFit) end

---Sets Niagara Array FQuat Data.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param ArrayData TArray_FQuat_
function UNiagaraDataInterfaceArrayFunctionLibrary.SetNiagaraArrayQuat(NiagaraSystem, OverrideName, ArrayData) end

---Sets a single value within a Niagara Array Int32.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param Index integer
---@param Value integer
---@param bSizeToFit boolean
function UNiagaraDataInterfaceArrayFunctionLibrary.SetNiagaraArrayInt32Value(NiagaraSystem, OverrideName, Index, Value, bSizeToFit) end

---Sets Niagara Array Int32 Data.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param ArrayData TArray_integer_
function UNiagaraDataInterfaceArrayFunctionLibrary.SetNiagaraArrayInt32(NiagaraSystem, OverrideName, ArrayData) end

---Sets a single value within a Niagara Array Float.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param Index integer
---@param Value number
---@param bSizeToFit boolean
function UNiagaraDataInterfaceArrayFunctionLibrary.SetNiagaraArrayFloatValue(NiagaraSystem, OverrideName, Index, Value, bSizeToFit) end

---Sets Niagara Array Float Data.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param ArrayData TArray_number_
function UNiagaraDataInterfaceArrayFunctionLibrary.SetNiagaraArrayFloat(NiagaraSystem, OverrideName, ArrayData) end

---Sets a single value within a Niagara Array FLinearColor.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param Index integer
---@param Value FLinearColor
---@param bSizeToFit boolean
function UNiagaraDataInterfaceArrayFunctionLibrary.SetNiagaraArrayColorValue(NiagaraSystem, OverrideName, Index, Value, bSizeToFit) end

---Sets Niagara Array FLinearColor Data.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param ArrayData TArray_FLinearColor_
function UNiagaraDataInterfaceArrayFunctionLibrary.SetNiagaraArrayColor(NiagaraSystem, OverrideName, ArrayData) end

---Sets a single value within a Niagara Array Bool.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param Index integer
---@param Value boolean
---@param bSizeToFit boolean
function UNiagaraDataInterfaceArrayFunctionLibrary.SetNiagaraArrayBoolValue(NiagaraSystem, OverrideName, Index, Value, bSizeToFit) end

---Sets Niagara Array Bool Data.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param ArrayData TArray_boolean_
function UNiagaraDataInterfaceArrayFunctionLibrary.SetNiagaraArrayBool(NiagaraSystem, OverrideName, ArrayData) end

---Gets a single value within a Niagara Array FVector.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param Index integer
---@return FVector
function UNiagaraDataInterfaceArrayFunctionLibrary.GetNiagaraArrayVectorValue(NiagaraSystem, OverrideName, Index) end

---Gets a single value within a Niagara Array FVector4.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param Index integer
---@return FVector4
function UNiagaraDataInterfaceArrayFunctionLibrary.GetNiagaraArrayVector4Value(NiagaraSystem, OverrideName, Index) end

---Gets a copy of Niagara FVector4 Data.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@return TArray_FVector4_
function UNiagaraDataInterfaceArrayFunctionLibrary.GetNiagaraArrayVector4(NiagaraSystem, OverrideName) end

---Gets a single value within a Niagara Array FVector2D.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param Index integer
---@return FVector2D
function UNiagaraDataInterfaceArrayFunctionLibrary.GetNiagaraArrayVector2DValue(NiagaraSystem, OverrideName, Index) end

---Gets a copy of Niagara FVector2D Data.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@return TArray_FVector2D_
function UNiagaraDataInterfaceArrayFunctionLibrary.GetNiagaraArrayVector2D(NiagaraSystem, OverrideName) end

---Gets a copy of Niagara FVector Data.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@return TArray_FVector_
function UNiagaraDataInterfaceArrayFunctionLibrary.GetNiagaraArrayVector(NiagaraSystem, OverrideName) end

---Gets a single value within a Niagara Array FQuat.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param Index integer
---@return FQuat
function UNiagaraDataInterfaceArrayFunctionLibrary.GetNiagaraArrayQuatValue(NiagaraSystem, OverrideName, Index) end

---Gets a copy of Niagara FQuat Data.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@return TArray_FQuat_
function UNiagaraDataInterfaceArrayFunctionLibrary.GetNiagaraArrayQuat(NiagaraSystem, OverrideName) end

---Gets a single value within a Niagara Array Int32.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param Index integer
---@return integer
function UNiagaraDataInterfaceArrayFunctionLibrary.GetNiagaraArrayInt32Value(NiagaraSystem, OverrideName, Index) end

---Gets a copy of Niagara Int32 Data.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@return TArray_integer_
function UNiagaraDataInterfaceArrayFunctionLibrary.GetNiagaraArrayInt32(NiagaraSystem, OverrideName) end

---Gets a single value within a Niagara Array Float.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param Index integer
---@return number
function UNiagaraDataInterfaceArrayFunctionLibrary.GetNiagaraArrayFloatValue(NiagaraSystem, OverrideName, Index) end

---Gets a copy of Niagara Float Data.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@return TArray_number_
function UNiagaraDataInterfaceArrayFunctionLibrary.GetNiagaraArrayFloat(NiagaraSystem, OverrideName) end

---Gets a single value within a Niagara Array FLinearColor.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param Index integer
---@return FLinearColor
function UNiagaraDataInterfaceArrayFunctionLibrary.GetNiagaraArrayColorValue(NiagaraSystem, OverrideName, Index) end

---Gets a copy of Niagara FLinearColor Data.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@return TArray_FLinearColor_
function UNiagaraDataInterfaceArrayFunctionLibrary.GetNiagaraArrayColor(NiagaraSystem, OverrideName) end

---Gets a single value within a Niagara Array Bool.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param Index integer
---@return boolean
function UNiagaraDataInterfaceArrayFunctionLibrary.GetNiagaraArrayBoolValue(NiagaraSystem, OverrideName, Index) end

---Gets a copy of Niagara Bool Data.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@return TArray_boolean_
function UNiagaraDataInterfaceArrayFunctionLibrary.GetNiagaraArrayBool(NiagaraSystem, OverrideName) end

