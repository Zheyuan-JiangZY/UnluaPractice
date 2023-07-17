---SteamVR Extensions Function Library
---@class USteamVRChaperoneComponent : UActorComponent
---@field public OnLeaveBounds MulticastDelegate
---@field public OnReturnToBounds MulticastDelegate
local USteamVRChaperoneComponent = {}

function USteamVRChaperoneComponent:SteamVRChaperoneEvent__DelegateSignature() end

---Returns the bounds from the Chaperone, in Unreal-scale HMD-space coordinates, centered around the HMD's calibration origin (0,0,0).  Each set of four bounds will form a quad to define a set of bounds
---@return TArray_FVector_
function USteamVRChaperoneComponent:GetBounds() end

