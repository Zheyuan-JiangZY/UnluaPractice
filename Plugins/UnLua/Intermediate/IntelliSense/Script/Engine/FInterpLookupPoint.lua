---Array of group names to retrieve position and rotation data from instead of using the data stored in the keyframe.
---A value of NAME_None means to use the PosTrack and EulerTrack data for the keyframe.
---There needs to be the same amount of elements in this array as there are keyframes.
---@class FInterpLookupPoint
---@field public GroupName string
---@field public Time number
local FInterpLookupPoint = {}
