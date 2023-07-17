---Allows multiple animations to be blended between based on input parameters
---@class UBlendSpaceBase : UAnimationAsset
---@field public bRotationBlendInMeshSpace boolean @When you use blend per bone, allows rotation to blend in mesh space. This only works if this does not contain additive animation samples This is more performance intensive
---@field public PreviewBasePose UAnimSequence @Preview Base pose for additive BlendSpace *
---@field public AnimLength number @This animation length changes based on current input (resulting in different blend time)*
---@field public InterpolationParam FInterpolationParameter @Input interpolation parameter for all 3 axis, for each axis input, decide how you'd like to interpolate input to
---@field public TargetWeightInterpolationSpeedPerSec number @Target weight interpolation. When target samples are set, how fast you'd like to get to target. Improve target blending. i.e. for locomotion, if you interpolate input, when you move from left to right rapidly, you'll interpolate through forward, but if you use target weight interpolation, you'll skip forward, but interpolate between left to right
---@field public NotifyTriggerMode integer @The current mode used by the blendspace to decide which animation notifies to fire. Valid options are:       - AllAnimations - All notify events will fire       - HighestWeightedAnimation - Notify events will only fire from the highest weighted animation       - None - No notify events will fire from any animations
---@field protected PerBoneBlend TArray<FPerBoneInterpolation> @Define target weight interpolation per bone. This will blend in different speed per each bone setting
---@field protected SampleIndexWithMarkers integer @Track index to get marker data from. Samples are tested for the suitability of marker based sync           during load and if we can use marker based sync we cache an index to a representative sample here
---@field protected SampleData TArray<FBlendSample> @Sample animation data *
---@field protected GridSamples TArray<FEditorElement> @Grid samples, indexing scheme imposed by subclass *
---@field protected BlendParameters FBlendParameter @Blend Parameters for each axis. *
local UBlendSpaceBase = {}

