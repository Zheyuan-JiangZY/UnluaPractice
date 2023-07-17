---@class UMotionControllerComponent : UPrimitiveComponent
---@field public PlayerIndex integer @Which player index this motion controller should automatically follow
---@field public MotionSource string
---@field public bDisableLowLatencyUpdate boolean @If false, render transforms within the motion controller hierarchy will be updated a second time immediately before rendering.
---@field public CurrentTrackingStatus ETrackingStatus @The tracking status for the device (e.g. full tracking, inertial tracking only, no tracking)
---@field public bDisplayDeviceModel boolean @Used to automatically render a model associated with the set hand.
---@field public DisplayModelSource string @Determines the source of the desired model. By default, the active XR system(s) will be queried and (if available) will provide a model for the associated device. NOTE: this may fail if there's no default model; use 'Custom' to specify your own.
---@field public CustomDisplayMesh UStaticMesh @A mesh override that'll be displayed attached to this MotionController.
---@field public DisplayMeshMaterialOverrides TArray<UMaterialInterface> @Material overrides for the specified display mesh.
---@field private DisplayComponent UPrimitiveComponent
local UMotionControllerComponent = {}

---@param NewSource EControllerHand
function UMotionControllerComponent:SetTrackingSource(NewSource) end

---@param NewSource string
function UMotionControllerComponent:SetTrackingMotionSource(NewSource) end

---@param bShowControllerModel boolean
function UMotionControllerComponent:SetShowDeviceModel(bShowControllerModel) end

---@param NewDisplayModelSource string
function UMotionControllerComponent:SetDisplayModelSource(NewDisplayModelSource) end

---@param NewDisplayMesh UStaticMesh
function UMotionControllerComponent:SetCustomDisplayMesh(NewDisplayMesh) end

---@param NewPlayer integer
function UMotionControllerComponent:SetAssociatedPlayerIndex(NewPlayer) end

---Blueprint Implementable function for reponding to updated data from a motion controller (so we can use custom paramater values from it)
function UMotionControllerComponent:OnMotionControllerUpdated() end

---Whether or not this component had a valid tracked device this frame
---@return boolean
function UMotionControllerComponent:IsTracked() end

---@return EControllerHand
function UMotionControllerComponent:GetTrackingSource() end

---Returns the value of a custom parameter on the current in use Motion Controller (see member InUseMotionController). Only valid for the duration of OnMotionControllerUpdated
---@param InName string
---@param bValueFound boolean @[out] 
---@return number
function UMotionControllerComponent:GetParameterValue(InName, bValueFound) end

---@param jointIndex integer
---@param bValueFound boolean @[out] 
---@return FVector
function UMotionControllerComponent:GetHandJointPosition(jointIndex, bValueFound) end

