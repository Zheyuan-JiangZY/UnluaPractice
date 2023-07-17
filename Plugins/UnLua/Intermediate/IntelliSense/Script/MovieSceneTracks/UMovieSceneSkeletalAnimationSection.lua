---Movie scene section that control skeletal animation
---@class UMovieSceneSkeletalAnimationSection : UMovieSceneSection
---@field public Params FMovieSceneSkeletalAnimationParams
---@field public StartLocationOffset FVector @Location Offset applied to this this animations start root motion
---@field public StartRotationOffset FRotator @Rotation Offset applied to this this animations start root motion
---@field public bMatchWithPrevious boolean
---@field public MatchedBoneName string
---@field public MatchedLocationOffset FVector
---@field public MatchedRotationOffset FRotator
---@field public bMatchTranslation boolean
---@field public bMatchIncludeZHeight boolean
---@field public bMatchRotationYaw boolean
---@field public bMatchRotationPitch boolean
---@field public bMatchRotationRoll boolean
---@field public bShowSkeleton boolean @Whether to show the underlying skeleton for this section.
local UMovieSceneSkeletalAnimationSection = {}

