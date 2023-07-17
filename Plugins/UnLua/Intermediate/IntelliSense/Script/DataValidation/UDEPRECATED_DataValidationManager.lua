---Manages centralized execution and tracking of data validation, as well as handling console commands,
---and some misc tasks like local log hooking
---@class UDEPRECATED_DataValidationManager : UObject
---@field protected ExcludedDirectories TArray<FDirectoryPath> @Directories to ignore for data validation. Useful for test assets
---@field protected bValidateOnSave boolean @Rather it should validate assets on save inside the editor
---@field private DataValidationManagerClassName FSoftClassPath @The class to instantiate as the manager object. Defaults to this class but can be overridden
local UDEPRECATED_DataValidationManager = {}

