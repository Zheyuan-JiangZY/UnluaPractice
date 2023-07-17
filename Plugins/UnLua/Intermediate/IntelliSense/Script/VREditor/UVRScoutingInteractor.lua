---Represents the interactor in the world
---@class UVRScoutingInteractor : UVREditorInteractor
---@field public FlyingIndicatorComponent UStaticMeshComponent @Shown in Navigation mode
local UVRScoutingInteractor = {}

---Sets the gizmo mode for selected object
---@param InGizmoMode EGizmoHandleTypes
function UVRScoutingInteractor:SetGizmoMode(InGizmoMode) end

---Gets all actors that are selected in the world editor
---@return TArray_AActor_
function UVRScoutingInteractor.GetSelectedActors() end

---Gets the gizmo mode for selected object
---@return EGizmoHandleTypes
function UVRScoutingInteractor:GetGizmoMode() end

