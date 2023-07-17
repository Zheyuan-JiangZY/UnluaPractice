---Holds the settings for a class that needs a thumbnail renderer. Each entry
---maps to a corresponding class and holds the information needed
---to render the thumbnail, including which object to render via and its
---border color.
---@class FThumbnailRenderingInfo
---@field public ClassNeedingThumbnailName string @The name of the class that this thumbnail is for (so we can lazy bind)
---@field public ClassNeedingThumbnail TSubclassOf<UObject> @This is the class that this entry is for, i.e. the class that will be rendered in the thumbnail views
---@field public RendererClassName string @The name of the class to load when rendering this thumbnail NOTE: This is a string to avoid any dependencies of compilation
---@field public Renderer UThumbnailRenderer @The instance of the renderer class
local FThumbnailRenderingInfo = {}
