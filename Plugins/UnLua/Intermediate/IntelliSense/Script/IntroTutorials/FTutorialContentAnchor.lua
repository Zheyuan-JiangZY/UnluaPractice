---A way of identifying something to be highlighted by a tutorial
---@class FTutorialContentAnchor
---@field public Type integer
---@field public WrapperIdentifier string @If widget is in a wrapper widget, this is the wrapper widget name
---@field public Asset FSoftObjectPath @If reference is an asset, we use this to resolve it
---@field public bDrawHighlight boolean @Whether to draw an animated highlight around the widget
---@field public TabToFocusOrOpen string @Tab on which to focus (EG 'My Blueprint' tab).
---@field public FriendlyName string @User friendly name to display in the dialog
---@field public GUIDString string @The GUID string
---@field public OuterName string @Name of the outer object - should be the blueprint that 'owns' the node
local FTutorialContentAnchor = {}
