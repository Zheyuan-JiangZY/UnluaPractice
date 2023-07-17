---@class ULiveLinkBlueprintLibrary : UBlueprintFunctionLibrary
local ULiveLinkBlueprintLibrary = {}

---Returns an array of Transform Names stored in the Subject Frame
---@param SubjectFrameHandle FSubjectFrameHandle @[out] 
---@param TransformNames TArray_string_ @[out] 
function ULiveLinkBlueprintLibrary.TransformNames(SubjectFrameHandle, TransformNames) end

---Returns the Name of a given LiveLink Transform
---@param LiveLinkTransform FLiveLinkTransform @[out] 
---@param Name string @[out] 
function ULiveLinkBlueprintLibrary.TransformName(LiveLinkTransform, Name) end

---Set the subject's from a specific source to enabled, disabling the other in the process.
---Only 1 subject with the same name can be enabled.
---At the start of the frame, a snapshot of the enabled subjects will be made.
---That snapshot dictate which subject will be used for the duration of that frame.
---SetSubjectEnabled will take effect on the next frame.
---@param SubjectKey FLiveLinkSubjectKey
---@param bEnabled boolean
function ULiveLinkBlueprintLibrary.SetLiveLinkSubjectEnabled(SubjectKey, bEnabled) end

---Requests the given LiveLink Source to shut down via its handle
---@param SourceHandle FLiveLinkSourceHandle @[out] 
---@return boolean
function ULiveLinkBlueprintLibrary.RemoveSource(SourceHandle) end

---Returns the Transform value in Parent Space for a given LiveLink Transform
---@param LiveLinkTransform FLiveLinkTransform @[out] 
---@param Transform FTransform @[out] 
function ULiveLinkBlueprintLibrary.ParentBoneSpaceTransform(LiveLinkTransform, Transform) end

---Returns the number of Transforms stored in the Subject Frame
---@param SubjectFrameHandle FSubjectFrameHandle @[out] 
---@return integer
function ULiveLinkBlueprintLibrary.NumberOfTransforms(SubjectFrameHandle) end

---Whether or not a subject from the specific source is the enabled subject.
---Only 1 subject with the same name can be enabled.
---At the start of the frame, a snapshot of the enabled subjects will be made.
---That snapshot dictate which subject will be used for the duration of that frame.
---@param SubjectKey FLiveLinkSubjectKey
---@param bForThisFrame boolean
---@return boolean
function ULiveLinkBlueprintLibrary.IsSpecificLiveLinkSubjectEnabled(SubjectKey, bForThisFrame) end

---Checks whether the LiveLink Source is valid via its handle
---@param SourceHandle FLiveLinkSourceHandle @[out] 
---@return boolean
function ULiveLinkBlueprintLibrary.IsSourceStillValid(SourceHandle) end

---Whether or not the client has a subject with this name enabled
---Only 1 subject with the same name can be enabled.
---At the start of the frame, a snapshot of the enabled subjects will be made.
---That snapshot dictate which subject will be used for the duration of that frame.
---@param SubjectName FLiveLinkSubjectName
---@return boolean
function ULiveLinkBlueprintLibrary.IsLiveLinkSubjectEnabled(SubjectName) end

---Returns whether a given LiveLink Transform has a parent transform
---@param LiveLinkTransform FLiveLinkTransform @[out] 
---@return boolean
function ULiveLinkBlueprintLibrary.HasParent(LiveLinkTransform) end

---Returns the LiveLink Transform stored in a Subject Frame with a given name. Returns an Identity transform if Transform Name is invalid.
---@param SubjectFrameHandle FSubjectFrameHandle @[out] 
---@param TransformName string
---@param LiveLinkTransform FLiveLinkTransform @[out] 
function ULiveLinkBlueprintLibrary.GetTransformByName(SubjectFrameHandle, TransformName, LiveLinkTransform) end

---Returns the LiveLink Transform stored in a Subject Frame at a given index. Returns an Identity transform if Transform Index is invalid.
---@param SubjectFrameHandle FSubjectFrameHandle @[out] 
---@param TransformIndex integer
---@param LiveLinkTransform FLiveLinkTransform @[out] 
function ULiveLinkBlueprintLibrary.GetTransformByIndex(SubjectFrameHandle, TransformIndex, LiveLinkTransform) end

---Get the role of a subject from a specific source
---@param SubjectKey FLiveLinkSubjectKey
---@return TSubclassOf_ULiveLinkRole_
function ULiveLinkBlueprintLibrary.GetSpecificLiveLinkSubjectRole(SubjectKey) end

---Get the type of a LiveLink Source via its handle
---@param SourceHandle FLiveLinkSourceHandle @[out] 
---@return string
function ULiveLinkBlueprintLibrary.GetSourceType(SourceHandle) end

---Get the text status of a LiveLink Source via its handle
---@param SourceHandle FLiveLinkSourceHandle @[out] 
---@return string
function ULiveLinkBlueprintLibrary.GetSourceStatus(SourceHandle) end

---Get the machine name of a LiveLink Source via its handle
---@param SourceHandle FLiveLinkSourceHandle @[out] 
---@return string
function ULiveLinkBlueprintLibrary.GetSourceMachineName(SourceHandle) end

---Returns the Root Transform for the Subject Frame as a LiveLink Transform or the Identity if there are no transforms.
---@param SubjectFrameHandle FSubjectFrameHandle @[out] 
---@param LiveLinkTransform FLiveLinkTransform @[out] 
function ULiveLinkBlueprintLibrary.GetRootTransform(SubjectFrameHandle, LiveLinkTransform) end

---Returns the value of a property stored in the Subject Frame
---@param BasicData FLiveLinkBasicBlueprintData @[out] 
---@param PropertyName string
---@param Value number @[out] 
---@return boolean
function ULiveLinkBlueprintLibrary.GetPropertyValue(BasicData, PropertyName, Value) end

---Returns the Parent LiveLink Transform if one exists or an Identity transform if no parent exists
---@param LiveLinkTransform FLiveLinkTransform @[out] 
---@param Parent FLiveLinkTransform @[out] 
function ULiveLinkBlueprintLibrary.GetParent(LiveLinkTransform, Parent) end

---Returns the Subject Metadata structure stored in the Subject Frame
---@param SubjectFrameHandle FSubjectFrameHandle @[out] 
---@param Metadata FSubjectMetadata @[out] 
function ULiveLinkBlueprintLibrary.GetMetadata(SubjectFrameHandle, Metadata) end

---Get a list of all subjects
---@param bIncludeDisabledSubject boolean
---@param bIncludeVirtualSubject boolean
---@return TArray_FLiveLinkSubjectKey_
function ULiveLinkBlueprintLibrary.GetLiveLinkSubjects(bIncludeDisabledSubject, bIncludeVirtualSubject) end

---Get the role of the subject with this name
---@param SubjectName FLiveLinkSubjectName
---@return TSubclassOf_ULiveLinkRole_
function ULiveLinkBlueprintLibrary.GetLiveLinkSubjectRole(SubjectName) end

---Get a list of all enabled subject names
---@param bIncludeVirtualSubject boolean
---@return TArray_FLiveLinkSubjectName_
function ULiveLinkBlueprintLibrary.GetLiveLinkEnabledSubjectNames(bIncludeVirtualSubject) end

---Returns the float curves stored in the Subject Frame as a map
---@param SubjectFrameHandle FSubjectFrameHandle @[out] 
---@param Curves TMap_string__number_ @[out] 
function ULiveLinkBlueprintLibrary.GetCurves(SubjectFrameHandle, Curves) end

---Returns an array of Child LiveLink Transforms for a given LiveLink Transform
---@param LiveLinkTransform FLiveLinkTransform @[out] 
---@param Children TArray_FLiveLinkTransform_ @[out] 
function ULiveLinkBlueprintLibrary.GetChildren(LiveLinkTransform, Children) end

---Returns the Subject base structure stored in the Subject Frame
---@param SubjectFrameHandle FSubjectFrameHandle @[out] 
---@param BasicBlueprintData FLiveLinkBasicBlueprintData @[out] 
function ULiveLinkBlueprintLibrary.GetBasicData(SubjectFrameHandle, BasicBlueprintData) end

---Returns the Subject's static data stored in the Subject Frame. Returns false if no valid data found.
---@param SubjectFrameHandle FSubjectFrameHandle @[out] 
---@param AnimationStaticData FLiveLinkSkeletonStaticData @[out] 
---@return boolean
function ULiveLinkBlueprintLibrary.GetAnimationStaticData(SubjectFrameHandle, AnimationStaticData) end

---Returns the Subject's frame data stored in the Subject Frame. Returns false if no valid data found.
---@param SubjectFrameHandle FSubjectFrameHandle @[out] 
---@param AnimationFrameData FLiveLinkAnimationFrameData @[out] 
---@return boolean
function ULiveLinkBlueprintLibrary.GetAnimationFrameData(SubjectFrameHandle, AnimationFrameData) end

---Fetches a frame on a subject for a specific role. Output is evaluated based on the role
---@param SubjectName FLiveLinkSubjectName
---@param Role TSubclassOf_ULiveLinkRole_
---@param OutBlueprintData FLiveLinkBaseBlueprintData @[out] 
---@return boolean
function ULiveLinkBlueprintLibrary.EvaluateLiveLinkFrameWithSpecificRole(SubjectName, Role, OutBlueprintData) end

---Fetches a frame on a subject for a specific role at an offset from the application current time. Output is evaluated based on the role
---@param SubjectName FLiveLinkSubjectName
---@param Role TSubclassOf_ULiveLinkRole_
---@param WorldTimeOffset number
---@param OutBlueprintData FLiveLinkBaseBlueprintData @[out] 
---@return boolean
function ULiveLinkBlueprintLibrary.EvaluateLiveLinkFrameAtWorldTimeOffset(SubjectName, Role, WorldTimeOffset, OutBlueprintData) end

---Fetches a frame on a subject for a specific role at a specified scene time (timecode).
---The Timecode should be at the frame rate as the engine timecode.
---Output is evaluated based on the role
---@param SubjectName FLiveLinkSubjectName
---@param Role TSubclassOf_ULiveLinkRole_
---@param SceneTime FTimecode
---@param OutBlueprintData FLiveLinkBaseBlueprintData @[out] 
---@return boolean
function ULiveLinkBlueprintLibrary.EvaluateLiveLinkFrameAtSceneTime(SubjectName, Role, SceneTime, OutBlueprintData) end

---@param SubjectRepresentation FLiveLinkSubjectRepresentation
---@param OutBlueprintData FLiveLinkBaseBlueprintData @[out] 
---@return boolean
function ULiveLinkBlueprintLibrary.EvaluateLiveLinkFrame(SubjectRepresentation, OutBlueprintData) end

---Returns the Transform value in Root Space for a given LiveLink Transform
---@param LiveLinkTransform FLiveLinkTransform @[out] 
---@param Transform FTransform @[out] 
function ULiveLinkBlueprintLibrary.ComponentSpaceTransform(LiveLinkTransform, Transform) end

---Returns the number of Children for a given LiveLink Transform
---@param LiveLinkTransform FLiveLinkTransform @[out] 
---@return integer
function ULiveLinkBlueprintLibrary.ChildCount(LiveLinkTransform) end

