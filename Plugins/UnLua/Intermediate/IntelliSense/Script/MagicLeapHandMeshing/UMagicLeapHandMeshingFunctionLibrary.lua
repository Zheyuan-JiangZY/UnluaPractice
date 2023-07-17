---@class UMagicLeapHandMeshingFunctionLibrary : UBlueprintFunctionLibrary
local UMagicLeapHandMeshingFunctionLibrary = {}

---Disconnects the MRMesh component.
---@param InMRMeshPtr UMRMeshComponent
---@return boolean
function UMagicLeapHandMeshingFunctionLibrary.DisconnectMRMesh(InMRMeshPtr) end

---Destroys the hand meshing client.
---@return boolean
function UMagicLeapHandMeshingFunctionLibrary.DestroyClient() end

---Create the hand meshing client Note that this will be the only function in the HandMeshing API that will raise a
---PrivilegeDenied error.  Trying to call the other functions with an invalid MLHandle will result in an InvalidParam error.
---@return boolean
function UMagicLeapHandMeshingFunctionLibrary.CreateClient() end

---Connects the MRMesh component.
---@param InMRMeshPtr UMRMeshComponent
---@return boolean
function UMagicLeapHandMeshingFunctionLibrary.ConnectMRMesh(InMRMeshPtr) end

