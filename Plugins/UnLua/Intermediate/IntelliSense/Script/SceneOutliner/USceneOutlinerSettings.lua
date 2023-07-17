---Implements the settings for the Scene Outliner.
---@class USceneOutlinerSettings : UObject
---@field public bHideTemporaryActors boolean @True when the Scene Outliner is hiding temporary/run-time Actors
---@field public bShowOnlyActorsInCurrentLevel boolean @True when the Scene Outliner is showing only Actors that exist in the current level
---@field public bHideFoldersContainingHiddenActors boolean @True when the Scene Outliner is showing only Folders containing  non-hidden Actors
---@field public bShowOnlySelectedActors boolean @True when the Scene Outliner is only displaying selected Actors
---@field public bShowActorComponents boolean @True when the Scene Outliner is only displaying Actor Components
local USceneOutlinerSettings = {}

