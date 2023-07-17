---Function library containing methods that should be hoisted onto the test struct in Python.
---@class UPyTestStructLibrary : UBlueprintFunctionLibrary
local UPyTestStructLibrary = {}

---@param InStruct FPyTestStruct
---@return boolean
function UPyTestStructLibrary.LegacyIsBoolSet(InStruct) end

---@param InStruct FPyTestStruct
---@return boolean
function UPyTestStructLibrary.IsBoolSet(InStruct) end

---@return integer
function UPyTestStructLibrary.GetConstantValue() end

---@param InStruct FPyTestStruct
---@param InValue string
---@return FPyTestStruct
function UPyTestStructLibrary.AddStr(InStruct, InValue) end

---@param InStruct FPyTestStruct
---@param InValue integer
---@return FPyTestStruct
function UPyTestStructLibrary.AddInt(InStruct, InValue) end

---@param InStruct FPyTestStruct
---@param InValue number
---@return FPyTestStruct
function UPyTestStructLibrary.AddFloat(InStruct, InValue) end

