---@class FLiveLinkTransformControllerData
---@field public bWorldTransform boolean @Set the transform of the component in world space of in its local reference frame.
---@field public bUseLocation boolean @Whether we should set the owning actor's location with the value coming from live link.
---@field public bUseRotation boolean @Whether we should set the owning actor's rotation with the value coming from live link.
---@field public bUseScale boolean @Whether we should set the owning actor's scale with the value coming from live link.
---@field public bSweep boolean @Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
---@field public bTeleport boolean @Whether we teleport the physics state (if physics collision is enabled for this object). If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
local FLiveLinkTransformControllerData = {}
