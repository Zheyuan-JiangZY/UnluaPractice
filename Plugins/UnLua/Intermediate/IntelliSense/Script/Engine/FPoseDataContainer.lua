---Pose data container
---Contains animation and curve for all poses
---@class FPoseDataContainer
---@field private PoseNames TArray<FSmartName> @pose names - horizontal data
---@field private Tracks TArray<string> @this is list of tracks - vertical data
---@field private TrackMap TMap<string, integer> @cache for the track names to skeleton index
---@field private Poses TArray<FPoseData> @this is list of poses
---@field private Curves TArray<FAnimCurveBase> @curve meta data # of Curve UIDs should match with Poses.CurveValues.Num
local FPoseDataContainer = {}
