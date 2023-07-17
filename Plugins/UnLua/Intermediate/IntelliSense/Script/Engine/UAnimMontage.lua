---* Any property you're adding to AnimMontage and parent class has to be considered for Child Asset
---*
---* Child Asset is considered to be only asset mapping feature using everything else in the class
---* For example, you can just use all parent's setting  for the montage, but only remap assets
---* This isn't magic bullet unfortunately and it is consistent effort of keeping the data synced with parent
---* If you add new property, please make sure those property has to be copied for children.
---* If it does, please add the copy in the function RefreshParentAssetData
---@class UAnimMontage : UAnimCompositeBase
---@field public BlendIn FAlphaBlend @Blend in option.
---@field public BlendOut FAlphaBlend @Blend out option. This is only used when it blends out itself. If it's interrupted by other montages, it will use new montage's BlendIn option to blend out.
---@field public BlendOutTriggerTime number @Time from Sequence End to trigger blend out. <0 means using BlendOutTime, so BlendOut finishes as Montage ends. >=0 means using 'SequenceEnd - BlendOutTriggerTime' to trigger blend out.
---@field public SyncGroup string @If you're using marker based sync for this montage, make sure to add sync group name. For now we only support one group
---@field public SyncSlotIndex integer @wip: until we have UI working
---@field public MarkerData FMarkerSyncData
---@field public CompositeSections TArray<FCompositeSection> @composite section.
---@field public SlotAnimTracks TArray<FSlotAnimationTrack> @slot data, each slot contains anim track
---@field public bEnableRootMotionTranslation boolean @If this is on, it will allow extracting root motion translation. DEPRECATED in 4.5 root motion is controlled by anim sequences *
---@field public bEnableRootMotionRotation boolean @If this is on, it will allow extracting root motion rotation. DEPRECATED in 4.5 root motion is controlled by anim sequences *
---@field public bEnableAutoBlendOut boolean @When it hits end, it automatically blends out. If this is false, it won't blend out but keep the last pose until stopped explicitly
---@field public RootMotionRootLock integer @Root Bone will be locked to that position when extracting root motion. DEPRECATED in 4.5 root motion is controlled by anim sequences *
---@field public PreviewBasePose UAnimSequence @Preview Base pose for additive BlendSpace *
---@field private BranchingPointMarkers TArray<FBranchingPointMarker> @Cached list of Branching Point markers
---@field public BranchingPointStateNotifyIndices TArray<integer> @Keep track of which AnimNotify_State are marked as BranchingPoints, so we can update their state when the Montage is ticked
---@field public TimeStretchCurve FTimeStretchCurve
---@field public TimeStretchCurveName string @Name of optional TimeStretchCurveName to look for in Montage.
local UAnimMontage = {}

---@return number
function UAnimMontage:GetDefaultBlendOutTime() end

