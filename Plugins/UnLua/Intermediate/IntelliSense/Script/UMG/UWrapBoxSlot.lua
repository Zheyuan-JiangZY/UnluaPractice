---The Slot for the UWrapBox, contains the widget that is flowed vertically
---@class UWrapBoxSlot : UPanelSlot
---@field public Padding FMargin @The padding area between the slot and the content it contains.
---@field public bFillEmptySpace boolean @Should this slot fill the remaining space on the line?
---@field public FillSpanWhenLessThan number @If the total available space in the wrap panel drops below this threshold, this slot will attempt to fill an entire line. NOTE: A value of 0, denotes no filling will occur.
---@field public HorizontalAlignment integer @The alignment of the object horizontally.
---@field public VerticalAlignment integer @The alignment of the object vertically.
local UWrapBoxSlot = {}

---@param InVerticalAlignment integer
function UWrapBoxSlot:SetVerticalAlignment(InVerticalAlignment) end

---@param InPadding FMargin
function UWrapBoxSlot:SetPadding(InPadding) end

---@param InHorizontalAlignment integer
function UWrapBoxSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InFillSpanWhenLessThan number
function UWrapBoxSlot:SetFillSpanWhenLessThan(InFillSpanWhenLessThan) end

---@param InbFillEmptySpace boolean
function UWrapBoxSlot:SetFillEmptySpace(InbFillEmptySpace) end

