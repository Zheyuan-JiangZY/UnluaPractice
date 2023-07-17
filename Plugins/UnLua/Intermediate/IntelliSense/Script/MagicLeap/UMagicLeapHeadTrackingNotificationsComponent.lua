---Provides head tracking map events to enable apps to cleanly handle it.
---The most important event to be aware of is when a map changes.
---In the case that a new map session begins, or recovery fails, all formerly cached transform
---and world reconstruction data (raycast, planes, mesh) is invalidated and must be updated.
---@class UMagicLeapHeadTrackingNotificationsComponent : UVRNotificationsComponent
---@field private OnHeadTrackingLost MulticastDelegate @Map was lost. It could possibly recover.
---@field private OnHeadTrackingRecovered MulticastDelegate @Previous map was recovered.
---@field private OnHeadTrackingRecoveryFailed MulticastDelegate @Failed to recover previous map.
---@field private OnHeadTrackingNewSessionStarted MulticastDelegate @New map session created.
local UMagicLeapHeadTrackingNotificationsComponent = {}

