---@class UAnimStreamable : UAnimSequenceBase
---@field public NumFrames integer @Number of raw frames in this sequence (not used by engine - just for informational purposes).
---@field public Interpolation EAnimInterpolationType @This defines how values between keys are calculated *
---@field public RetargetSource string @Base pose to use when retargeting
---@field public SourceSequence UAnimSequence @Sequence the streamable was created from (used for reflecting changes to the source in editor)
---@field public RawDataGuid FGuid
---@field public RawAnimationData TArray<FRawAnimSequenceTrack> @Raw uncompressed keyframe data.
---@field public TrackToSkeletonMapTable TArray<FTrackToSkeletonMap> @In the future, maybe keeping RawAnimSequenceTrack + TrackMap as one would be good idea to avoid inconsistent array size TrackToSkeletonMapTable(i) should contains  track mapping data for RawAnimationData(i).
---@field public AnimationTrackNames TArray<string> @This is name of RawAnimationData tracks for editoronly - if we lose skeleton, we'll need relink them
---@field public BoneCompressionSettings UAnimBoneCompressionSettings @The bone compression settings used to compress bones in this sequence.
---@field public CurveCompressionSettings UAnimCurveCompressionSettings @The curve compression settings used to compress curves in this sequence.
---@field public bEnableRootMotion boolean @If this is on, it will allow extracting of root motion *
---@field public RootMotionRootLock integer @Root Bone will be locked to that position when extracting root motion.*
---@field public bForceRootLock boolean @Force Root Bone Lock even if Root Motion is not enabled
---@field public bUseNormalizedRootMotionScale boolean @If this is on, it will use a normalized scale value for the root motion extracted: FVector(1.0, 1.0, 1.0) *
local UAnimStreamable = {}

