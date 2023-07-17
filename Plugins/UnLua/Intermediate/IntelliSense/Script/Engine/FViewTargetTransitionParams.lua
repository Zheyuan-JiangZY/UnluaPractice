---A set of parameters to describe how to transition between view targets.
---@class FViewTargetTransitionParams
---@field public BlendTime number @Total duration of blend to pending view target. 0 means no blending.
---@field public BlendFunction integer @Function to apply to the blend parameter.
---@field public BlendExp number @Exponent, used by certain blend functions to control the shape of the curve.
---@field public bLockOutgoing boolean @If true, lock outgoing viewtarget to last frame's camera POV for the remainder of the blend. This is useful if you plan to teleport the old viewtarget, but don't want to affect the blend.
local FViewTargetTransitionParams = {}
