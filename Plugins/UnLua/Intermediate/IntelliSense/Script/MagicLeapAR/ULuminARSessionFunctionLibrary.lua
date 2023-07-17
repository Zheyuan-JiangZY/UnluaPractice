---A function library that provides static/Blueprint functions associated with LuminAR session.
---@class ULuminARSessionFunctionLibrary : UBlueprintFunctionLibrary
local ULuminARSessionFunctionLibrary = {}

---Starts a new LuminAR tracking session LuminAR specific configuration.
---If the session already started and the config isn't the same, it will stop the previous session and start a new session with the new config.
---Note that this is a latent action, you can query the session start result by querying GetLuminARSessionStatus() after the latent action finished.
---@param WorldContextObject UObject
---@param Configuration ULuminARSessionConfig
function ULuminARSessionFunctionLibrary.StartLuminARSession(WorldContextObject, Configuration) end

