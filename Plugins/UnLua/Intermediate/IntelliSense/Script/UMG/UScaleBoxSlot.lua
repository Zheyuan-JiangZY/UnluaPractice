---The Slot for the UScaleBoxSlot, contains the widget displayed in a button's single slot
---@class UScaleBoxSlot : UPanelSlot
---@field public Padding FMargin @The padding area between the slot and the content it contains.
---@field public HorizontalAlignment integer @The alignment of the object horizontally.
---@field public VerticalAlignment integer @The alignment of the object vertically.
local UScaleBoxSlot = {}

---@param InVerticalAlignment integer
function UScaleBoxSlot:SetVerticalAlignment(InVerticalAlignment) end

---@param InPadding FMargin
function UScaleBoxSlot:SetPadding(InPadding) end

---@param InHorizontalAlignment integer
function UScaleBoxSlot:SetHorizontalAlignment(InHorizontalAlignment) end

