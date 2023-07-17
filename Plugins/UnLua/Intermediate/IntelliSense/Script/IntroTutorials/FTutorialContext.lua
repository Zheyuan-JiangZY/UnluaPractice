---Named context that corresponds to a particular tutorial
---@class FTutorialContext
---@field public Context string @The context that this tutorial is used in
---@field public BrowserFilter string @The filter string to apply to the tutorials browser when launched from this context
---@field public AttractTutorial FSoftClassPath @The tutorial to use in this context to let the user know there is a tutorial available
---@field public LaunchTutorial FSoftClassPath @The tutorial to use in this context when the user chooses to launch
local FTutorialContext = {}
