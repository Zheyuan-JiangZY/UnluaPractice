---A ListView that presents the contents as a set of tiles all uniformly sized.
---To make a widget usable as an entry in a TileView, it must inherit from the IUserObjectListEntry interface.
---@class UTileView : UListView
---@field protected EntryHeight number @The height of each tile
---@field protected EntryWidth number @The width of each tile
---@field protected TileAlignment EListItemAlignment @The method by which to align the tile entries in the available space for the tile view
---@field protected bWrapHorizontalNavigation boolean @True to allow left/right navigation to wrap back to the tile on the opposite edge
local UTileView = {}

---Sets the width of every tile entry
---@param NewWidth number
function UTileView:SetEntryWidth(NewWidth) end

---Sets the height of every tile entry
---@param NewHeight number
function UTileView:SetEntryHeight(NewHeight) end

---Gets the width of tile entries
---@return number
function UTileView:GetEntryWidth() end

---Gets the height of tile entries
---@return number
function UTileView:GetEntryHeight() end

