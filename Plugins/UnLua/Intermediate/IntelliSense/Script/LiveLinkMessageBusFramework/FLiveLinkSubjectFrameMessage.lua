---@class FLiveLinkSubjectFrameMessage
---@field public SubjectName string
---@field public Transforms TArray<FTransform> @Bone Transform data for this frame
---@field public Curves TArray<FLiveLinkCurveElement> @Curve data for this frame
---@field public MetaData FLiveLinkMetaData @Subject MetaData for this frame
---@field public Time number @Incrementing time for interpolation
local FLiveLinkSubjectFrameMessage = {}
