---@class UAnimSequence : UAnimSequenceBase
---@field public ImportFileFramerate number @The DCC framerate of the imported file. UI information only, unit are Hz
---@field public ImportResampleFramerate integer @The resample framerate that was computed during import. UI information only, unit are Hz
---@field protected NumFrames integer @Number of raw frames in this sequence (not used by engine - just for informational purposes).
---@field protected TrackToSkeletonMapTable TArray<FTrackToSkeletonMap> @In the future, maybe keeping RawAnimSequenceTrack + TrackMap as one would be good idea to avoid inconsistent array size TrackToSkeletonMapTable(i) should contains  track mapping data for RawAnimationData(i).
---@field protected RawDataGuid FGuid @Update this if the contents of RawAnimationData changes;
---@field protected AnimationTrackNames TArray<string> @This is name of RawAnimationData tracks for editoronly - if we lose skeleton, we'll need relink them
---@field public bAllowFrameStripping boolean @Allow frame stripping to be performed on this animation if the platform requests it Can be disabled if animation has high frequency movements that are being lost.
---@field public CompressionErrorThresholdScale number @Set a scale for error threshold on compression. This is useful if the animation will be played back at a different scale (e.g. if you know the animation will be played on an actor/component that is scaled up by a factor of 10, set this value to 10)
---@field public BoneCompressionSettings UAnimBoneCompressionSettings @The bone compression settings used to compress bones in this sequence.
---@field public CurveCompressionSettings UAnimCurveCompressionSettings @The curve compression settings used to compress curves in this sequence.
---@field public AdditiveAnimType integer @Additive animation type. *
---@field public RefPoseType integer @Additive refrerence pose type. Refer above enum type
---@field public RefPoseSeq UAnimSequence @Additive reference animation if it's relevant - i.e. AnimScaled or AnimFrame *
---@field public RefFrameIndex integer @Additve reference frame if RefPoseType == AnimFrame *
---@field public RetargetSource string @Base pose to use when retargeting
---@field public RetargetSourceAsset TSoftObjectPtr<USkeletalMesh> @If RetargetSource is set to Default (None), this is asset for the base pose to use when retargeting. Transform data will be saved in RetargetSourceAssetReferencePose.
---@field public RetargetSourceAssetReferencePose TArray<FTransform> @When using RetargetSourceAsset, use the post stored here
---@field public Interpolation EAnimInterpolationType @This defines how values between keys are calculated *
---@field public bEnableRootMotion boolean @If this is on, it will allow extracting of root motion *
---@field public RootMotionRootLock integer @Root Bone will be locked to that position when extracting root motion.*
---@field public bForceRootLock boolean @Force Root Bone Lock even if Root Motion is not enabled
---@field public bUseNormalizedRootMotionScale boolean @If this is on, it will use a normalized scale value for the root motion extracted: FVector(1.0, 1.0, 1.0) *
---@field public bRootMotionSettingsCopiedFromMontage boolean @Have we copied root motion settings from an owning montage
---@field public CompressCommandletVersion integer @Saved version number with CompressAnimations commandlet. To help with doing it in multiple passes.
---@field public bDoNotOverrideCompression boolean @Do not attempt to override compression scheme when running CompressAnimations commandlet. Some high frequency animations are too sensitive and shouldn't be changed.
---@field public AssetImportData UAssetImportData @Importing data and options used for this mesh
---@field public bNeedsRebake boolean
---@field public AuthoredSyncMarkers TArray<FAnimSyncMarker> @Authored Sync markers
---@field private PerBoneCustomAttributeData TArray<FCustomAttributePerBoneData>
---@field private CustomAttributesGuid FGuid
---@field private BakedCustomAttributesGuid FGuid
---@field private BakedPerBoneCustomAttributeData TArray<FBakedCustomAttributePerBoneData>
local UAnimSequence = {}

---@param BoneName string
---@param AttributeName string
function UAnimSequence:RemoveCustomAttribute(BoneName, AttributeName) end

---@param BoneName string
function UAnimSequence:RemoveAllCustomAttributesForBone(BoneName) end

function UAnimSequence:RemoveAllCustomAttributes() end

---@param BoneName string
---@param AttributeName string
---@param TimeKeys TArray_number_
---@param ValueKeys TArray_string_
function UAnimSequence:AddBoneStringCustomAttribute(BoneName, AttributeName, TimeKeys, ValueKeys) end

---@param BoneName string
---@param AttributeName string
---@param TimeKeys TArray_number_
---@param ValueKeys TArray_integer_
function UAnimSequence:AddBoneIntegerCustomAttribute(BoneName, AttributeName, TimeKeys, ValueKeys) end

---@param BoneName string
---@param AttributeName string
---@param TimeKeys TArray_number_
---@param ValueKeys TArray_number_
function UAnimSequence:AddBoneFloatCustomAttribute(BoneName, AttributeName, TimeKeys, ValueKeys) end

