---An actor component to enable accessing LiveLink data in Blueprints.
---Data can be accessed in Editor through the "OnLiveLinkUpdated" event.
---Any Skeletal Mesh Components on the parent will be set to animate in editor causing their AnimBPs to run.
---@class ULiveLinkComponent : UActorComponent
---@field public OnLiveLinkUpdated MulticastDelegate @This Event is triggered any time new LiveLink data is available, including in the editor
local ULiveLinkComponent = {}

---@param SubjectName string
---@param WorldTime number
---@param bSuccess boolean @[out] 
---@param SubjectFrameHandle FSubjectFrameHandle @[out] 
function ULiveLinkComponent:GetSubjectDataAtWorldTime(SubjectName, WorldTime, bSuccess, SubjectFrameHandle) end

---@param SubjectName string
---@param SceneTime FTimecode
---@param bSuccess boolean @[out] 
---@param SubjectFrameHandle FSubjectFrameHandle @[out] 
function ULiveLinkComponent:GetSubjectDataAtSceneTime(SubjectName, SceneTime, bSuccess, SubjectFrameHandle) end

---@param SubjectName string
---@param bSuccess boolean @[out] 
---@param SubjectFrameHandle FSubjectFrameHandle @[out] 
function ULiveLinkComponent:GetSubjectData(SubjectName, bSuccess, SubjectFrameHandle) end

---@param SubjectNames TArray_string_ @[out] 
function ULiveLinkComponent:GetAvailableSubjectNames(SubjectNames) end

