---Configure settings for the 2D Level Editor
---@class ULevelEditor2DSettings : UDeveloperSettings
---@field public bEnable2DWidget boolean @If enabled will allow 2D mode
---@field public bEnableSnapLayers boolean @If enabled will allow 2D mode
---@field public SnapAxis ELevelEditor2DAxis @Snap axis
---@field public SnapLayers TArray<FMode2DLayer> @Snap layers that are displayed in the viewport toolbar
local ULevelEditor2DSettings = {}

