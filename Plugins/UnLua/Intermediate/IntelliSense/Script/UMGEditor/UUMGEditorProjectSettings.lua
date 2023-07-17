---Implements the settings for the UMG Editor Project Settings
---@class UUMGEditorProjectSettings : UDeveloperSettings
---@field protected DefaultCompilerOptions FWidgetCompilerOptions
---@field protected DirectoryCompilerOptions TArray<FDirectoryWidgetCompilerOptions>
---@field public bShowWidgetsFromEngineContent boolean
---@field public bShowWidgetsFromDeveloperContent boolean
---@field public CategoriesToHide TArray<string>
---@field public WidgetClassesToHide TArray<FSoftClassPath>
---@field public bUseWidgetTemplateSelector boolean @Enables a dialog that lets you select a root widget before creating a widget blueprint
---@field public DefaultRootWidget TSubclassOf<UPanelWidget> @The panel widget to place at the root of all newly constructed widget blueprints. Can be empty.
---@field public DefaultWidgetParentClass TSoftClassPtr<UUserWidget> @The default parent class for all newly constructed widget blueprints. The WidgetParentClass must have an empty widget hierarchy.
---@field public DebugResolutions TArray<FDebugResolution>
---@field protected Version integer
local UUMGEditorProjectSettings = {}

