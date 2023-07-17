---The LightingTrackingComponent wraps the Magic Leap lighting tracking API.
---This api provides lumosity data from the camera that can be used to shade objects in a more realistic
---manner (via the post processor).
---@class UMagicLeapLightingTrackingComponent : UActorComponent
---@field public UseGlobalAmbience boolean @Set to true if you want the global ambience value from the cameras to be used in post processing.
---@field public UseColorTemp boolean @Set to true if you want the color temperature value from the cameras to be used in post processing.
local UMagicLeapLightingTrackingComponent = {}

