---Implements the Editor style settings.
---@class UEditorStyleSettings : UObject
---@field public bEnableHighDPIAwareness boolean @Enables high dpi support in the editor which will adjust the scale of elements in the UI to account for high DPI monitors The editor must be restarted for changes to take effect.
---@field public bEnableUserEditorLayoutManagement boolean @Whether to enable the Editor UI Layout configuration tools for the user. If disabled, the "Save Layout As" and "Remove Layout" menus will be removed, as well as the "Import Layout..." sub-menu.
---@field public ColorVisionDeficiencyPreviewType EColorVisionDeficiency @Applies a color vision deficiency filter to the entire editor
---@field public ColorVisionDeficiencySeverity integer
---@field public bColorVisionDeficiencyCorrection boolean @Shifts the color spectrum to the visible range based on the current ColorVisionDeficiencyPreviewType
---@field public bColorVisionDeficiencyCorrectionPreviewWithDeficiency boolean @If you're correcting the color deficiency, you can use this to visualize what the correction looks like with the deficiency.
---@field public SelectionColor FLinearColor @The color used to represent selection
---@field public PressedSelectionColor FLinearColor @The color used to represent a pressed item
---@field public InactiveSelectionColor FLinearColor @The color used to represent selected items that are currently inactive
---@field public KeyboardFocusColor FLinearColor @The color used to represent keyboard input selection focus
---@field public EditorWindowBackgroundColor FLinearColor @The color used to tint the editor window backgrounds
---@field public EditorMainWindowBackgroundOverride FSlateBrush @The override for the background of the main window (if not modified, the defaults will be used)
---@field public EditorChildWindowBackgroundOverride FSlateBrush @The override for the background of the child window (if not modified, the defaults will be used)
---@field public bResetEditorWindowBackgroundSettings boolean @Check to reset the window background settings to editor defaults
---@field public bUseSmallToolBarIcons boolean @Whether to use small toolbar icons without labels or not.
---@field public bUseGrid boolean @If true the material editor and blueprint editor will show a grid on it's background.
---@field public RegularColor FLinearColor @The color used to represent regular grid lines
---@field public RuleColor FLinearColor @The color used to represent ruler lines in the grid
---@field public CenterColor FLinearColor @The color used to represent the center lines in the grid
---@field public GridSnapSize integer @The custom grid snap size to use
---@field public GraphBackgroundBrush FSlateBrush @Optional brush used for graph backgrounds
---@field public bEnableWindowAnimations boolean @Enables animated transitions for certain menus and pop-up windows.  Note that animations may be automatically disabled at low frame rates in order to improve responsiveness.
---@field public bShowFriendlyNames boolean @When enabled, the C++ names for properties and functions will be displayed in a format that is easier to read
---@field public bShowNativeComponentNames boolean @When enabled, the underlying Names for Components inherited from C++ will be shown alongside their UProperty Variable name
---@field public bExpandConfigurationMenus boolean @When enabled, the Editor Preferences and Project Settings menu items in the main menu will be expanded with sub-menus for each settings section.
---@field public bShowProjectMenus boolean @When enabled, the Editor Preferences and Project Settings menu items in the main menu will be expanded with sub-menus for each settings section.
---@field public bShowLaunchMenus boolean @When enabled, the Launch menu items will be shown.
---@field public LogBackgroundColor FLinearColor @The color used for the background in the output log
---@field public LogSelectionBackgroundColor FLinearColor @The color used for the background of selected text in the output log
---@field public LogNormalColor FLinearColor @The color used for normal text in the output log
---@field public LogCommandColor FLinearColor @The color used for normal text in the output log
---@field public LogWarningColor FLinearColor @The color used for warning log lines
---@field public LogErrorColor FLinearColor @The color used for error log lines
---@field public bShowAllAdvancedDetails boolean @When enabled, the Advanced Details will always auto expand.
---@field public bShowHiddenPropertiesWhilePlaying boolean @When Playing or Simulating, shows all properties (even non-visible and non-editable properties), if the object belongs to a simulating world.  This is useful for debugging.
---@field public LogFontSize integer @The font size used in the output log
---@field public LogTimestampMode integer @The display mode for timestamps in the output log window
---@field public bPromoteOutputLogWarningsDuringPIE boolean @Should warnings and errors in the Output Log during "Play in Editor" be promoted to the message log?
---@field public AssetEditorOpenLocation EAssetEditorOpenLocation @New asset editor tabs will open at the specified location.
---@field public bEnableColorizedEditorTabs boolean @Should editor tabs be colorized according to the asset type
---@field public bEnableLegacyEditorModeUI boolean @If enabled, the modes tab will revert to the previous mode UI
local UEditorStyleSettings = {}

