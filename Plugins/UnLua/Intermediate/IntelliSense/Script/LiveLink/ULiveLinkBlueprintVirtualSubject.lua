---Base class for creating virtual subjects in Blueprints
---@class ULiveLinkBlueprintVirtualSubject : ULiveLinkVirtualSubject
local ULiveLinkBlueprintVirtualSubject = {}

---@param InStruct FLiveLinkBaseStaticData
---@return boolean
function ULiveLinkBlueprintVirtualSubject:UpdateVirtualSubjectStaticData_Internal(InStruct) end

---@param InStruct FLiveLinkBaseFrameData
---@param bInShouldStampCurrentTime boolean
---@return boolean
function ULiveLinkBlueprintVirtualSubject:UpdateVirtualSubjectFrameData_Internal(InStruct, bInShouldStampCurrentTime) end

function ULiveLinkBlueprintVirtualSubject:OnUpdate() end

function ULiveLinkBlueprintVirtualSubject:OnInitialize() end

