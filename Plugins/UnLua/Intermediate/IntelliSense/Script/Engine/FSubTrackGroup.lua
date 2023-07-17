---A small structure holding data for grouping subtracks. (For UI drawing purposes)
---@class FSubTrackGroup
---@field public GroupName string @Name of the subtrack  group
---@field public TrackIndices TArray<integer> @Indices to tracks in the parent track subtrack array.
---@field public bIsCollapsed boolean @If this group is collapsed
---@field public bIsSelected boolean @If this group is selected
local FSubTrackGroup = {}
