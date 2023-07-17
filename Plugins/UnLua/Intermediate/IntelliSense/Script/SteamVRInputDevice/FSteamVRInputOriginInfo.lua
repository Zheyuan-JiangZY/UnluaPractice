---Information about the tracked device associated from the input source
---@class FSteamVRInputOriginInfo
---@field public TrackedDeviceIndex integer @The tracked device index for the device or k_unTrackedDeviceInvalid (0xFFFFFFFF)
---@field public RenderModelComponentName string @The name of the component of the tracked device's render model that represents this input source, or an empty string if there is no associated render model component.
---@field public TrackedDeviceModel string @The tracked device's model info
local FSteamVRInputOriginInfo = {}
