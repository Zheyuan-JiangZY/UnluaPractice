---UEditorValidatorSubsystem manages all the asset validation in the engine.
---The first validation handled is UObject::IsDataValid and its overridden functions.
---Those validations require custom classes and are most suited to project-specific
---classes. The next validation set is of all registered UEditorValidationBases.
---These validators have a function to determine if they can validate a given asset,
---and if they are currently enabled. They are good candidates for validating engine
---classes or very specific project logic.
---@class UEditorValidatorSubsystem : UEditorSubsystem
---@field protected ExcludedDirectories TArray<FDirectoryPath> @Directories to ignore for data validation. Useful for test assets
---@field protected bValidateOnSave boolean @Whether it should validate assets on save inside the editor
---@field protected Validators TMap<TSubclassOf<UObject>, UEditorValidatorBase>
---@field protected bValidateAssetsWhileSavingForCook boolean @Specifies whether or not to validate assets on save when saving for a cook
---@field protected bAllowBlueprintValidators boolean @Specifies whether or not to allow Blueprint validators
local UEditorValidatorSubsystem = {}

---Called to validate assets from either the UI or a commandlet
---@param AssetDataList TArray_FAssetData_
---@param bSkipExcludedDirectories boolean @[opt] 
---@param bShowIfNoFailures boolean @[opt] 
---@return integer
function UEditorValidatorSubsystem:ValidateAssets(AssetDataList, bSkipExcludedDirectories, bShowIfNoFailures) end

---
---@param InObject UObject
---@param ValidationErrors TArray_string_ @[out] 
---@param ValidationWarnings TArray_string_ @[out] 
---@return EDataValidationResult
function UEditorValidatorSubsystem:IsObjectValid(InObject, ValidationErrors, ValidationWarnings) end

---
---@param AssetData FAssetData @[out] 
---@param ValidationErrors TArray_string_ @[out] 
---@param ValidationWarnings TArray_string_ @[out] 
---@return EDataValidationResult
function UEditorValidatorSubsystem:IsAssetValid(AssetData, ValidationErrors, ValidationWarnings) end

---* Adds a validator to the list, making sure it is a unique instance
---@param InValidator UEditorValidatorBase
function UEditorValidatorSubsystem:AddValidator(InValidator) end

