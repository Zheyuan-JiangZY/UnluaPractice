---Interpolation data, containing keyframe tracks, event tracks etc.
---This does not contain any  AActor  references or state, so can safely be stored in
---packages, shared between multiple MatineeActors etc.
---@class UInterpData : UObject
---@field public InterpLength number @Duration of interpolation sequence - in seconds.
---@field public PathBuildTime number @Position in Interp to move things to for path-building in editor.
---@field public InterpGroups TArray<UInterpGroup> @Actual interpolation data. Groups of InterpTracks.
---@field public CurveEdSetup UInterpCurveEdSetup @Used for curve editor to remember curve-editing setup. Only loaded in editor.
---@field public InterpFilters TArray<UInterpFilter> @Used for filtering which tracks are currently visible.
---@field public SelectedFilter UInterpFilter @The currently selected filter.
---@field public DefaultFilters TArray<UInterpFilter> @Array of default filters.
---@field public EdSectionStart number @Used in editor for defining sections to loop, stretch etc.
---@field public EdSectionEnd number @Used in editor for defining sections to loop, stretch etc.
---@field public bShouldBakeAndPrune boolean @If true, then the matinee should be baked and pruned at cook time.
---@field public CachedDirectorGroup UInterpGroupDirector @Cached version of the director group, if any, for easy access while in game
---@field public AllEventNames TArray<string> @Unique names of all events contained across all event tracks
local UInterpData = {}

