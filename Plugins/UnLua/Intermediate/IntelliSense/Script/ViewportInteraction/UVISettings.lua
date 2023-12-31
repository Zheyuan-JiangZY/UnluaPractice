---Implements the settings for Viewport Interaction and VR Mode. Note that this is primarily a base class for anything that needs to be accessed in the VI module.
---@class UVISettings : UObject
---@field public bScaleWorldFromFloor boolean @Whether the world should scale relative to your tracking space floor instead of the center of your hand locations
---@field public bScaleWorldWithDynamicPivot boolean @Whether to compute a new center point for scaling relative from by looking at how far either controller moved relative to the last frame
---@field public bAllowSimultaneousWorldScalingAndRotation boolean @When enabled, you can freely rotate and scale the world with two hands at the same time.  Otherwise, we'll detect whether to rotate or scale depending on how much of either gesture you initially perform.
local UVISettings = {}

