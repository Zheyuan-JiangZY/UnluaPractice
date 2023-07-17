---* The EditorValidatorBase is a class which verifies that an asset meets a specific ruleset.
---* It should be used when checking engine-level classes, as UObject::IsDataValid requires
---* overriding the base class. You can create project-specific version of the validator base,
---* with custom logging and enabled logic.
---*
---* C++ and Blueprint validators will be gathered on editor start, while python validators need
---* to register themselves
---@class UEditorValidatorBase : UObject
---@field protected bIsEnabled boolean
local UEditorValidatorBase = {}

---@param InAsset UObject
---@param ValidationErrors TArray_string_ @[out] 
---@return EDataValidationResult
function UEditorValidatorBase:ValidateLoadedAsset(InAsset, ValidationErrors) end

---@return EDataValidationResult
function UEditorValidatorBase:GetValidationResult() end

---Override this to determine whether or not you can validate a given asset with this validator
---@param InAsset UObject
---@return boolean
function UEditorValidatorBase:CanValidateAsset(InAsset) end

---@param InAsset UObject
---@param InMessage string
function UEditorValidatorBase:AssetWarning(InAsset, InMessage) end

---@param InAsset UObject
function UEditorValidatorBase:AssetPasses(InAsset) end

---@param InAsset UObject
---@param InMessage string
---@param ValidationErrors TArray_string_ @[out] 
function UEditorValidatorBase:AssetFails(InAsset, InMessage, ValidationErrors) end

