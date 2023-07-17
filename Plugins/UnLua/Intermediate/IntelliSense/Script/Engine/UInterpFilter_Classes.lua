---@class UInterpFilter_Classes : UInterpFilter
---@field public ClassToFilterBy TSubclassOf<UObject> @Which class to filter groups by.
---@field public TrackClasses TArray<TSubclassOf<UObject>> @List of allowed track classes.  If empty, then all track classes will be included.  Only groups that               contain at least one of these types of tracks will be displayed.
local UInterpFilter_Classes = {}

