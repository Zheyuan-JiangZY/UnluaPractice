---Blueprint library for altering and analyzing animation / skeletal data
---@class UAnimationBlueprintLibrary : UBlueprintFunctionLibrary
local UAnimationBlueprintLibrary = {}

---Sets the Root Motion Lock Type for the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param RootMotionLockType integer
function UAnimationBlueprintLibrary.SetRootMotionLockType(AnimationSequence, RootMotionLockType) end

---Sets whether or not Root Motion is Enabled for the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param bEnabled boolean
function UAnimationBlueprintLibrary.SetRootMotionEnabled(AnimationSequence, bEnabled) end

---Sets the (Play) Rate Scale for the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param RateScale number
function UAnimationBlueprintLibrary.SetRateScale(AnimationSequence, RateScale) end

---Sets whether or not Root Motion locking is Forced for the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param bForced boolean
function UAnimationBlueprintLibrary.SetIsRootMotionLockForced(AnimationSequence, bForced) end

---Sets the Curve Compression Settings for the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param CompressionSettings UAnimCurveCompressionSettings
function UAnimationBlueprintLibrary.SetCurveCompressionSettings(AnimationSequence, CompressionSettings) end

---Sets the Bone Compression Settings for the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param CompressionSettings UAnimBoneCompressionSettings
function UAnimationBlueprintLibrary.SetBoneCompressionSettings(AnimationSequence, CompressionSettings) end

---Sets the Animation Interpolation type for the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param InterpolationType EAnimInterpolationType
function UAnimationBlueprintLibrary.SetAnimationInterpolationType(AnimationSequence, InterpolationType) end

---Sets the Additive Base Pose type for the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param AdditiveBasePoseType integer
function UAnimationBlueprintLibrary.SetAdditiveBasePoseType(AnimationSequence, AdditiveBasePoseType) end

---Sets the Additive Animation type for the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param AdditiveAnimationType integer
function UAnimationBlueprintLibrary.SetAdditiveAnimationType(AnimationSequence, AdditiveAnimationType) end

---Replaces animation notifies in the specified Animation Sequence
---@param AnimationSequence UAnimSequenceBase
---@param OldNotifyClass TSubclassOf_UAnimNotifyState_
---@param NewNotifyClass TSubclassOf_UAnimNotifyState_
---@param OnNotifyStateReplaced Delegate
function UAnimationBlueprintLibrary.ReplaceAnimNotifyStates(AnimationSequence, OldNotifyClass, NewNotifyClass, OnNotifyStateReplaced) end

---Replaces animation notifies in the specified Animation Sequence
---@param AnimationSequence UAnimSequenceBase
---@param OldNotifyClass TSubclassOf_UAnimNotify_
---@param NewNotifyClass TSubclassOf_UAnimNotify_
---@param OnNotifyReplaced Delegate
function UAnimationBlueprintLibrary.ReplaceAnimNotifies(AnimationSequence, OldNotifyClass, NewNotifyClass, OnNotifyReplaced) end

---Removes Virtual Bones with the specified Bone Names from the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param VirtualBoneNames TArray_string_
function UAnimationBlueprintLibrary.RemoveVirtualBones(AnimationSequence, VirtualBoneNames) end

---Removes a Virtual Bone with the specified Bone Name from the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param VirtualBoneName string
function UAnimationBlueprintLibrary.RemoveVirtualBone(AnimationSequence, VirtualBoneName) end

---Removes all Meta Data Instance of the specified Class from the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param MetaDataClass TSubclassOf_UAnimMetaData_
function UAnimationBlueprintLibrary.RemoveMetaDataOfClass(AnimationSequence, MetaDataClass) end

---Removes the specified Meta Data Instance from the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param MetaDataObject UAnimMetaData
function UAnimationBlueprintLibrary.RemoveMetaData(AnimationSequence, MetaDataObject) end

---Removes an Animation Curve by Name from the given Animation Sequence (Raw Animation Curves [Names] may not be removed from the Skeleton)
---@param AnimationSequence UAnimSequence
---@param CurveName string
---@param bRemoveNameFromSkeleton boolean @[opt] 
function UAnimationBlueprintLibrary.RemoveCurve(AnimationSequence, CurveName, bRemoveNameFromSkeleton) end

---Removes an Animation Curve by Name from the given Animation Sequence (Raw Animation Curves [Names] may not be removed from the Skeleton)
---    @@param AnimationSequence : AnimSequence
---    @@param BoneName : Name of bone track user wants to remove
---    @@param bIncludeChildren : true if user wants to include all children of BoneName
---@param AnimationSequence UAnimSequence
---@param BoneName string
---@param bIncludeChildren boolean @[opt] 
---@param bFinalize boolean @[opt] 
function UAnimationBlueprintLibrary.RemoveBoneAnimation(AnimationSequence, BoneName, bIncludeChildren, bFinalize) end

---Removes All Animation Sync Marker found within the Animation Sequence that belong to the specific Notify Track, and returns the number of removed instances
---@param AnimationSequence UAnimSequence
---@param NotifyTrackName string
---@return integer
function UAnimationBlueprintLibrary.RemoveAnimationSyncMarkersByTrack(AnimationSequence, NotifyTrackName) end

---Removes All Animation Sync Marker found within the Animation Sequence whose name matches MarkerName, and returns the number of removed instances
---@param AnimationSequence UAnimSequence
---@param MarkerName string
---@return integer
function UAnimationBlueprintLibrary.RemoveAnimationSyncMarkersByName(AnimationSequence, MarkerName) end

---Removes an Animation Notify Track from Animation Sequence by Name
---@param AnimationSequence UAnimSequence
---@param NotifyTrackName string
function UAnimationBlueprintLibrary.RemoveAnimationNotifyTrack(AnimationSequence, NotifyTrackName) end

---Removes Animation Notify Events found by Track within the Animation Sequence, and returns the number of removed name instances
---@param AnimationSequence UAnimSequence
---@param NotifyTrackName string
---@return integer
function UAnimationBlueprintLibrary.RemoveAnimationNotifyEventsByTrack(AnimationSequence, NotifyTrackName) end

---Removes Animation Notify Events found by Name within the Animation Sequence, and returns the number of removed name instances
---@param AnimationSequence UAnimSequence
---@param NotifyName string
---@return integer
function UAnimationBlueprintLibrary.RemoveAnimationNotifyEventsByName(AnimationSequence, NotifyName) end

---Removes all Virtual Bones from the given Animation Sequence
---@param AnimationSequence UAnimSequence
function UAnimationBlueprintLibrary.RemoveAllVirtualBones(AnimationSequence) end

---Removes all Meta Data from the given Animation Sequence
---@param AnimationSequence UAnimSequence
function UAnimationBlueprintLibrary.RemoveAllMetaData(AnimationSequence) end

---Removes all Animation Curve Data from the given Animation Sequence (Raw Animation Curves [Names] may not be removed from the Skeleton)
---@param AnimationSequence UAnimSequence
function UAnimationBlueprintLibrary.RemoveAllCurveData(AnimationSequence) end

---Removes all Animation Bone Track Data from the given Animation Sequence
---@param AnimationSequence UAnimSequence
function UAnimationBlueprintLibrary.RemoveAllBoneAnimation(AnimationSequence) end

---Removes All Animation Sync Markers found within the Animation Sequence, and returns the number of removed instances
---@param AnimationSequence UAnimSequence
function UAnimationBlueprintLibrary.RemoveAllAnimationSyncMarkers(AnimationSequence) end

---Removes All Animation Notify Tracks from Animation Sequence
---@param AnimationSequence UAnimSequence
function UAnimationBlueprintLibrary.RemoveAllAnimationNotifyTracks(AnimationSequence) end

---Checks whether or not the given Time Value lies within the given Animation Sequence's Length
---@param AnimationSequence UAnimSequence
---@param Time number
---@param IsValid boolean @[out] 
function UAnimationBlueprintLibrary.IsValidTime(AnimationSequence, Time, IsValid) end

---Checks whether or not the given Animation Track Name is contained within the Animation Sequence
---@param AnimationSequence UAnimSequence
---@param TrackName string
---@return boolean
function UAnimationBlueprintLibrary.IsValidRawAnimationTrackName(AnimationSequence, TrackName) end

---Checks whether or not the given Track Name is a valid Animation Notify Track in the Animation Sequence
---@param AnimationSequence UAnimSequence
---@param NotifyTrackName string
---@return boolean
function UAnimationBlueprintLibrary.IsValidAnimNotifyTrackName(AnimationSequence, NotifyTrackName) end

---Checks whether or not the given Marker Name is a valid Animation Sync Marker Name
---@param AnimationSequence UAnimSequence
---@param MarkerName string
---@return boolean
function UAnimationBlueprintLibrary.IsValidAnimationSyncMarkerName(AnimationSequence, MarkerName) end

---Checks whether or not Root Motion locking is Forced for the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@return boolean
function UAnimationBlueprintLibrary.IsRootMotionLockForced(AnimationSequence) end

---Checks whether or not Root Motion is Enabled for the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@return boolean
function UAnimationBlueprintLibrary.IsRootMotionEnabled(AnimationSequence) end

---Retrieves, a multiple of, Vector Key(s) from the specified Animation Curve inside of the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param CurveName string
---@param Times TArray_number_ @[out] 
---@param Values TArray_FVector_ @[out] 
function UAnimationBlueprintLibrary.GetVectorKeys(AnimationSequence, CurveName, Times, Values) end

---Retrieves all the Unique Names for the Animation Sync Markers contained by the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param MarkerNames TArray_string_ @[out] 
function UAnimationBlueprintLibrary.GetUniqueMarkerNames(AnimationSequence, MarkerNames) end

---Retrieves, a multiple of, Transformation Key(s) from the specified Animation Curve inside of the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param CurveName string
---@param Times TArray_number_ @[out] 
---@param Values TArray_FTransform_ @[out] 
function UAnimationBlueprintLibrary.GetTransformationKeys(AnimationSequence, CurveName, Times, Values) end

---Retrieves the Time Value at the specified Frame Indexfor the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param Frame integer
---@param Time number @[out] 
function UAnimationBlueprintLibrary.GetTimeAtFrame(AnimationSequence, Frame, Time) end

---Retrieves the Length of the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param Length number @[out] 
function UAnimationBlueprintLibrary.GetSequenceLength(AnimationSequence, Length) end

---Retrieves the Root Motion Lock Type for the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param LockType integer @[out] 
function UAnimationBlueprintLibrary.GetRootMotionLockType(AnimationSequence, LockType) end

---Retrieves the Raw Scale Animation Data for the given Animation Track Name and Animation Sequence
---@param AnimationSequence UAnimSequence
---@param TrackName string
---@param ScaleData TArray_FVector_ @[out] 
function UAnimationBlueprintLibrary.GetRawTrackScaleData(AnimationSequence, TrackName, ScaleData) end

---Retrieves the Raw Rotation Animation Data for the given Animation Track Name and Animation Sequence
---@param AnimationSequence UAnimSequence
---@param TrackName string
---@param RotationData TArray_FQuat_ @[out] 
function UAnimationBlueprintLibrary.GetRawTrackRotationData(AnimationSequence, TrackName, RotationData) end

---Retrieves the Raw Translation Animation Data for the given Animation Track Name and Animation Sequence
---@param AnimationSequence UAnimSequence
---@param TrackName string
---@param PositionData TArray_FVector_ @[out] 
function UAnimationBlueprintLibrary.GetRawTrackPositionData(AnimationSequence, TrackName, PositionData) end

---Retrieves the Raw Animation Data for the given Animation Track Name and Animation Sequence
---@param AnimationSequence UAnimSequence
---@param TrackName string
---@param PositionKeys TArray_FVector_ @[out] 
---@param RotationKeys TArray_FQuat_ @[out] 
---@param ScalingKeys TArray_FVector_ @[out] 
function UAnimationBlueprintLibrary.GetRawTrackData(AnimationSequence, TrackName, PositionKeys, RotationKeys, ScalingKeys) end

---Retrieves the (Play) Rate Scale of the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param RateScale number @[out] 
function UAnimationBlueprintLibrary.GetRateScale(AnimationSequence, RateScale) end

---Retrieves the number of animation frames for the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param NumFrames integer @[out] 
function UAnimationBlueprintLibrary.GetNumFrames(AnimationSequence, NumFrames) end

---Retrieves all Meta Data Instances from the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param MetaDataClass TSubclassOf_UAnimMetaData_
---@param MetaDataOfClass TArray_UAnimMetaData_
function UAnimationBlueprintLibrary.GetMetaDataOfClass(AnimationSequence, MetaDataClass, MetaDataOfClass) end

---Retrieves all Meta Data Instances from the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param MetaData TArray_UAnimMetaData_
function UAnimationBlueprintLibrary.GetMetaData(AnimationSequence, MetaData) end

---Retrieves the Frame Index at the specified Time Value for the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param Time number
---@param Frame integer @[out] 
function UAnimationBlueprintLibrary.GetFrameAtTime(AnimationSequence, Time, Frame) end

---Retrieves, a multiple of, Float Key(s) from the specified Animation Curve inside of the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param CurveName string
---@param Times TArray_number_ @[out] 
---@param Values TArray_number_ @[out] 
function UAnimationBlueprintLibrary.GetFloatKeys(AnimationSequence, CurveName, Times, Values) end

---Retrieves the Curve Compression Settings for the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param CompressionSettings UAnimCurveCompressionSettings @[out] 
function UAnimationBlueprintLibrary.GetCurveCompressionSettings(AnimationSequence, CompressionSettings) end

---Retrieves Bone Pose data for the given Bone Names at the specified Time from the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param BoneNames TArray_string_
---@param Time number
---@param bExtractRootMotion boolean
---@param Poses TArray_FTransform_ @[out] 
---@param PreviewMesh USkeletalMesh @[opt] 
function UAnimationBlueprintLibrary.GetBonePosesForTime(AnimationSequence, BoneNames, Time, bExtractRootMotion, Poses, PreviewMesh) end

---Retrieves Bone Pose data for the given Bone Names at the specified Frame from the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param BoneNames TArray_string_
---@param Frame integer
---@param bExtractRootMotion boolean
---@param Poses TArray_FTransform_ @[out] 
---@param PreviewMesh USkeletalMesh @[opt] 
function UAnimationBlueprintLibrary.GetBonePosesForFrame(AnimationSequence, BoneNames, Frame, bExtractRootMotion, Poses, PreviewMesh) end

---Retrieves Bone Pose data for the given Bone Name at the specified Time from the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param BoneName string
---@param Time number
---@param bExtractRootMotion boolean
---@param Pose FTransform @[out] 
function UAnimationBlueprintLibrary.GetBonePoseForTime(AnimationSequence, BoneName, Time, bExtractRootMotion, Pose) end

---Retrieves Bone Pose data for the given Bone Name at the specified Frame from the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param BoneName string
---@param Frame integer
---@param bExtractRootMotion boolean
---@param Pose FTransform @[out] 
function UAnimationBlueprintLibrary.GetBonePoseForFrame(AnimationSequence, BoneName, Frame, bExtractRootMotion, Pose) end

---Retrieves the Bone Compression Settings for the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param CompressionSettings UAnimBoneCompressionSettings @[out] 
function UAnimationBlueprintLibrary.GetBoneCompressionSettings(AnimationSequence, CompressionSettings) end

---Returns the actual trigger time for a NotifyEvent
---@param NotifyEvent FAnimNotifyEvent
---@return number
function UAnimationBlueprintLibrary.GetAnimNotifyEventTriggerTime(NotifyEvent) end

---Retrieves the Names of the individual ATracks for the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param TrackNames TArray_string_ @[out] 
function UAnimationBlueprintLibrary.GetAnimationTrackNames(AnimationSequence, TrackNames) end

---Retrieves all Animation Sync Markers for the given Notify Track Name from the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param NotifyTrackName string
---@param Markers TArray_FAnimSyncMarker_ @[out] 
function UAnimationBlueprintLibrary.GetAnimationSyncMarkersForTrack(AnimationSequence, NotifyTrackName, Markers) end

---Retrieves all the Animation Sync Markers for the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param Markers TArray_FAnimSyncMarker_ @[out] 
function UAnimationBlueprintLibrary.GetAnimationSyncMarkers(AnimationSequence, Markers) end

---Retrieves all Unique Animation Notify Track Names found within the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param TrackNames TArray_string_ @[out] 
function UAnimationBlueprintLibrary.GetAnimationNotifyTrackNames(AnimationSequence, TrackNames) end

---Retrieves all Animation Notify Events for the given Notify Track Name from the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param NotifyTrackName string
---@param Events TArray_FAnimNotifyEvent_ @[out] 
function UAnimationBlueprintLibrary.GetAnimationNotifyEventsForTrack(AnimationSequence, NotifyTrackName, Events) end

---Retrieves all Animation Notify Events found within the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param NotifyEvents TArray_FAnimNotifyEvent_ @[out] 
function UAnimationBlueprintLibrary.GetAnimationNotifyEvents(AnimationSequence, NotifyEvents) end

---Retrieves all Unique Animation Notify Events found within the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param EventNames TArray_string_ @[out] 
function UAnimationBlueprintLibrary.GetAnimationNotifyEventNames(AnimationSequence, EventNames) end

---Retrieves the Animation Interpolation type for the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param InterpolationType EAnimInterpolationType @[out] 
function UAnimationBlueprintLibrary.GetAnimationInterpolationType(AnimationSequence, InterpolationType) end

---Retrieves the Names of the individual float curves for the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param CurveType ERawCurveTrackTypes
---@param CurveNames TArray_string_ @[out] 
function UAnimationBlueprintLibrary.GetAnimationCurveNames(AnimationSequence, CurveType, CurveNames) end

---Retrieves the Additive Base Pose type for the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param AdditiveBasePoseType integer @[out] 
function UAnimationBlueprintLibrary.GetAdditiveBasePoseType(AnimationSequence, AdditiveBasePoseType) end

---Retrieves the Additive Animation type for the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param AdditiveAnimationType integer @[out] 
function UAnimationBlueprintLibrary.GetAdditiveAnimationType(AnimationSequence, AdditiveAnimationType) end

---Finds the Bone Path from the given Bone to the Root Bone
---@param AnimationSequence UAnimSequence
---@param BoneName string
---@param BonePath TArray_string_ @[out] 
function UAnimationBlueprintLibrary.FindBonePathToRoot(AnimationSequence, BoneName, BonePath) end

---Apply all the changes made to Bone Tracks to Finalize. This triggers recompression. Note that this is expensive, but will require to get correct compressed data
---@param AnimationSequence UAnimSequence
function UAnimationBlueprintLibrary.FinalizeBoneAnimation(AnimationSequence) end

---Checks whether or not the given Curve Name exist on the Skeleton referenced by the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param CurveName string
---@param CurveType ERawCurveTrackTypes
---@return boolean
function UAnimationBlueprintLibrary.DoesCurveExist(AnimationSequence, CurveName, CurveType) end

---Checks whether or not the given Bone Name exist on the Skeleton referenced by the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param BoneName string
---@param bExists boolean @[out] 
function UAnimationBlueprintLibrary.DoesBoneNameExist(AnimationSequence, BoneName, bExists) end

---Copies animation notifies from Src Animation Sequence to Dest. Creates anim notify tracks as necessary. Returns true on success.
---@param SrcAnimSequence UAnimSequence
---@param DestAnimSequence UAnimSequence
function UAnimationBlueprintLibrary.CopyAnimNotifiesFromSequence(SrcAnimSequence, DestAnimSequence) end

---Checks whether or not the given Animation Sequences contains Meta Data Instance of the specified Meta Data Class
---@param AnimationSequence UAnimSequence
---@param MetaDataClass TSubclassOf_UAnimMetaData_
---@return boolean
function UAnimationBlueprintLibrary.ContainsMetaDataOfClass(AnimationSequence, MetaDataClass) end

---Adds a Virtual Bone between the Source and Target Bones to the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param SourceBoneName string
---@param TargetBoneName string
---@param VirtualBoneName string @[out] 
function UAnimationBlueprintLibrary.AddVirtualBone(AnimationSequence, SourceBoneName, TargetBoneName, VirtualBoneName) end

---Adds a multiple of Vector Keys to the specified Animation Curve inside of the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param CurveName string
---@param Times TArray_number_
---@param Vectors TArray_FVector_
function UAnimationBlueprintLibrary.AddVectorCurveKeys(AnimationSequence, CurveName, Times, Vectors) end

---Adds a Vector Key to the specified Animation Curve inside of the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param CurveName string
---@param Time number
---@param Vector FVector
function UAnimationBlueprintLibrary.AddVectorCurveKey(AnimationSequence, CurveName, Time, Vector) end

---Adds a multiple of Transformation Keys to the specified Animation Curve inside of the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param CurveName string
---@param Times TArray_number_
---@param Transforms TArray_FTransform_
function UAnimationBlueprintLibrary.AddTransformationCurveKeys(AnimationSequence, CurveName, Times, Transforms) end

---Adds a Transformation Key to the specified Animation Curve inside of the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param CurveName string
---@param Time number
---@param Transform FTransform
function UAnimationBlueprintLibrary.AddTransformationCurveKey(AnimationSequence, CurveName, Time, Transform) end

---Adds an instance of the specified MetaData Class to the given Animation Sequence (requires MetaDataObject's outer to be the Animation Sequence)
---@param AnimationSequence UAnimSequence
---@param MetaDataObject UAnimMetaData
function UAnimationBlueprintLibrary.AddMetaDataObject(AnimationSequence, MetaDataObject) end

---Creates and Adds an instance of the specified MetaData Class to the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param MetaDataClass TSubclassOf_UAnimMetaData_
---@param MetaDataInstance UAnimMetaData
function UAnimationBlueprintLibrary.AddMetaData(AnimationSequence, MetaDataClass, MetaDataInstance) end

---Adds a multiple of Float Keys to the specified Animation Curve inside of the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param CurveName string
---@param Times TArray_number_
---@param Values TArray_number_
function UAnimationBlueprintLibrary.AddFloatCurveKeys(AnimationSequence, CurveName, Times, Values) end

---Adds a Float Key to the specified Animation Curve inside of the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param CurveName string
---@param Time number
---@param Value number
function UAnimationBlueprintLibrary.AddFloatCurveKey(AnimationSequence, CurveName, Time, Value) end

---Adds an Animation Curve by Type and Name to the given Animation Sequence
---@param AnimationSequence UAnimSequence
---@param CurveName string
---@param CurveType ERawCurveTrackTypes @[opt] 
---@param bMetaDataCurve boolean @[opt] 
function UAnimationBlueprintLibrary.AddCurve(AnimationSequence, CurveName, CurveType, bMetaDataCurve) end

---Adds an Animation Sync Marker to Notify track in the given Animation with the corresponding Marker Name and Time
---@param AnimationSequence UAnimSequence
---@param MarkerName string
---@param Time number
---@param NotifyTrackName string
function UAnimationBlueprintLibrary.AddAnimationSyncMarker(AnimationSequence, MarkerName, Time, NotifyTrackName) end

---Adds an Animation Notify Track to the Animation Sequence
---@param AnimationSequence UAnimSequence
---@param NotifyTrackName string
---@param TrackColor FLinearColor @[opt] 
function UAnimationBlueprintLibrary.AddAnimationNotifyTrack(AnimationSequence, NotifyTrackName, TrackColor) end

---Adds an the specific Animation Notify State to the Animation Sequence (requires Notify State's outer to be the Animation Sequence)
---@param AnimationSequence UAnimSequence
---@param StartTime number
---@param Duration number
---@param NotifyState UAnimNotifyState
---@param NotifyTrackName string
function UAnimationBlueprintLibrary.AddAnimationNotifyStateEventObject(AnimationSequence, StartTime, Duration, NotifyState, NotifyTrackName) end

---Adds an Animation Notify State Event to Notify track in the given Animation with the given Notify State creation data
---@param AnimationSequence UAnimSequence
---@param NotifyTrackName string
---@param StartTime number
---@param Duration number
---@param NotifyStateClass TSubclassOf_UAnimNotifyState_
---@return UAnimNotifyState
function UAnimationBlueprintLibrary.AddAnimationNotifyStateEvent(AnimationSequence, NotifyTrackName, StartTime, Duration, NotifyStateClass) end

---Adds an the specific Animation Notify to the Animation Sequence (requires Notify's outer to be the Animation Sequence)
---@param AnimationSequence UAnimSequence
---@param StartTime number
---@param Notify UAnimNotify
---@param NotifyTrackName string
function UAnimationBlueprintLibrary.AddAnimationNotifyEventObject(AnimationSequence, StartTime, Notify, NotifyTrackName) end

---Adds an Animation Notify Event to Notify track in the given Animation with the given Notify creation data
---@param AnimationSequence UAnimSequence
---@param NotifyTrackName string
---@param StartTime number
---@param NotifyClass TSubclassOf_UAnimNotify_
---@return UAnimNotify
function UAnimationBlueprintLibrary.AddAnimationNotifyEvent(AnimationSequence, NotifyTrackName, StartTime, NotifyClass) end

