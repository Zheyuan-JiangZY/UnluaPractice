---@class UPawnAction_Repeat : UPawnAction
---@field public ActionToRepeat UPawnAction @Action to repeat. This instance won't really be run, it's a source for copying actions to be actually performed
---@field public RecentActionCopy UPawnAction
---@field public ChildFailureHandlingMode integer
local UPawnAction_Repeat = {}

