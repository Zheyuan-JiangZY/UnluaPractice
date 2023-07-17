---Category description
---@class FTutorialCategory
---@field public Identifier string @Period-separated category name, e.g. "Editor Quickstart.Level Editor"
---@field public Title string @Title of the category
---@field public SortOrder integer @Sort order, used by the tutorial browser - set in editor game-agnostic INI file
---@field public Description string @Localized text to use to describe this category
---@field public Icon string @Icon for this tutorial, used when presented to the user in the tutorial browser. Only used if there isn't a valid texture to use.
---@field public Texture FSoftObjectPath @Texture for this tutorial, used when presented to the user in the tutorial browser.
local FTutorialCategory = {}
