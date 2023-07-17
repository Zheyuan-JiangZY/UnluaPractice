---Base class for all actor action-related utilities
---Any functions/events that are exposed on derived classes that have the correct signature will be
---included as menu options when right-clicking on a group of actors in the level editor.
---@class UActorActionUtility : UEditorUtilityObject
local UActorActionUtility = {}

---Return the class that this actor action supports. Leave this blank to support all actor classes.
---@return TSubclassOf_UObject_
function UActorActionUtility:GetSupportedClass() end

