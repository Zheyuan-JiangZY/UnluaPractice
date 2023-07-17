---@class UEditorUtilityWidget : UUserWidget
---@field protected HelpText string
---@field protected bAlwaysReregisterWithWindowsMenu boolean @Should this widget always be re-added to the windows menu once it's opened
---@field protected bAutoRunDefaultAction boolean @Should this blueprint automatically run OnDefaultActionClicked, or should it open up a details panel to edit properties and/or offer multiple buttons
local UEditorUtilityWidget = {}

---The default action called when the widget is invoked if bAutoRunDefaultAction=true (it is never called otherwise)
function UEditorUtilityWidget:Run() end

