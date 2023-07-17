---@class ULuminARSessionConfig : UARSessionConfig
---@field public PlanesQuery FMagicLeapPlanesQuery @The planes information that the AR session uses when generating a query.
---@field public bArbitraryOrientationPlaneDetection boolean @Should we detect planes with any orientation (ie not just horizontal or vertical).
---@field public bDiscardZeroExtentPlanes boolean @If true discard any 'plane' objects that come through with zero extents and only polygon edge data.
---@field public bDefaultUseUnreliablePose boolean @For image tracking, Candidate Images may contain both AR Candidate Images and Lumin AR Candidate Images.  The former does not contain info about whether to update the pose when tracking is unreliable.  In that case, this value is used to determine whether to update the pose, instead.
local ULuminARSessionConfig = {}

