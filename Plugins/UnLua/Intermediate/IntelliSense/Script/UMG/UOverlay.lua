---Allows widgets to be stacked on top of each other, uses simple flow layout for content on each layer.
---@class UOverlay : UPanelWidget
local UOverlay = {}

---@param Content UWidget
---@return UOverlaySlot
function UOverlay:AddChildToOverlay(Content) end

