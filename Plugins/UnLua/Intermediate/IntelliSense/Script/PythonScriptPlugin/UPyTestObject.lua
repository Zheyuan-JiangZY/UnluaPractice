---Object to allow testing of the various UObject features that are exposed to Python wrapped types.
---@class UPyTestObject : UObject
---@field public Bool boolean
---@field public Int integer
---@field public Float number
---@field public Enum EPyTestEnum
---@field public String string
---@field public Name string
---@field public Text string
---@field public StringArray TArray<string>
---@field public StringSet TSet<string>
---@field public StringIntMap TMap<string, integer>
---@field public Delegate Delegate
---@field public MulticastDelegate MulticastDelegate
---@field public Struct FPyTestStruct
---@field public StructArray TArray<FPyTestStruct>
---@field public ChildStruct FPyTestChildStruct
---@field public BoolInstanceOnly boolean
---@field public BoolDefaultsOnly boolean
local UPyTestObject = {}

---@return TSet_integer_
function UPyTestObject.ReturnSet() end

---@return TMap_integer__boolean_
function UPyTestObject.ReturnMap() end

---@return TArray_integer_
function UPyTestObject.ReturnArray() end

---@param InStr string
function UPyTestObject:MulticastDelegatePropertyCallback(InStr) end

---@param InStruct FPyTestStruct
function UPyTestObject:LegacyFuncTakingPyTestStruct(InStruct) end

---@return integer
function UPyTestObject.GetConstantValue() end

---@param InStruct FPyTestStruct
function UPyTestObject:FuncTakingPyTestStruct(InStruct) end

---@param InDelegate Delegate
---@param InValue integer
---@return integer
function UPyTestObject:FuncTakingPyTestDelegate(InDelegate, InValue) end

---@param InStruct FPyTestChildStruct
function UPyTestObject:FuncTakingPyTestChildStruct(InStruct) end

---@param InOutStruct FPyTestStruct @[out] 
function UPyTestObject:FuncBlueprintNativeRef(InOutStruct) end

---@param InValue integer
---@return integer
function UPyTestObject:FuncBlueprintNative(InValue) end

---@param InValue integer
---@return integer
function UPyTestObject:FuncBlueprintImplementable(InValue) end

function UPyTestObject.EmitScriptWarning() end

function UPyTestObject.EmitScriptError() end

---@param InValue integer
---@return integer
function UPyTestObject:DelegatePropertyCallback(InValue) end

---@param InOutStruct FPyTestStruct @[out] 
function UPyTestObject:CallFuncBlueprintNativeRef(InOutStruct) end

---@param InValue integer
---@return integer
function UPyTestObject:CallFuncBlueprintNative(InValue) end

---@param InValue integer
---@return integer
function UPyTestObject:CallFuncBlueprintImplementable(InValue) end

