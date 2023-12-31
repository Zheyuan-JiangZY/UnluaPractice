---ALevelScriptActor is the base class for classes generated by
---ULevelScriptBlueprints. ALevelScriptActor instances are hidden actors that
---exist within a level, and can execute level-wide logic (operating on specific
---actor instances within the level). The level-script's functionality is defined
---inside the ULevelScriptBlueprint itself (using the blueprint's node-based
---interface).
---@class ALevelScriptActor : AActor
---@field private bInputEnabled boolean
local ALevelScriptActor = {}

---Event called on world origin location changes
---@param OldOriginLocation FIntVector
---@param NewOriginLocation FIntVector
function ALevelScriptActor:WorldOriginLocationChanged(OldOriginLocation, NewOriginLocation) end

---Sets the cinematic mode on all PlayerControllers
---@param bCinematicMode boolean
---@param bHidePlayer boolean @[opt] 
---@param bAffectsHUD boolean @[opt] 
---@param bAffectsMovement boolean @[opt] 
---@param bAffectsTurning boolean @[opt] 
function ALevelScriptActor:SetCinematicMode(bCinematicMode, bHidePlayer, bAffectsHUD, bAffectsMovement, bAffectsTurning) end

---Tries to find an event named "EventName" on all other levels, and calls it
---@param EventName string
---@return boolean
function ALevelScriptActor:RemoteEvent(EventName) end

---
function ALevelScriptActor:LevelReset() end

