---@class USteamVRTrackingReferences : UActorComponent
---@field public OnTrackedDeviceActivated MulticastDelegate @Blueprint event - When a new active device is recognized
---@field public OnTrackedDeviceDeactivated MulticastDelegate @When an active device gets deactivated
---@field public ActiveDevicePollFrequency number @Scale to apply to the tracking reference mesh
---@field public TrackingReferenceScale FVector @Scale to apply to the tracking reference mesh
---@field public TrackingReferences TArray<UStaticMeshComponent> @Currently displayed Tracking References in-world
local USteamVRTrackingReferences = {}

---Display Tracking References in-world
---@param TrackingReferenceMesh UStaticMesh
---@return boolean
function USteamVRTrackingReferences:ShowTrackingReferences(TrackingReferenceMesh) end

---Remove Tracking References in-world
function USteamVRTrackingReferences:HideTrackingReferences() end

