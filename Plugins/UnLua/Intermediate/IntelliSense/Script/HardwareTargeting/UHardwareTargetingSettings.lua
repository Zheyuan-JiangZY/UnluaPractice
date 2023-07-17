---Hardware targeting settings, stored in default config, per-project
---@class UHardwareTargetingSettings : UObject
---@field public TargetedHardwareClass integer @Enum specifying which class of hardware this game is targeting
---@field public AppliedTargetedHardwareClass integer @Enum that is set to TargetedHardwareClass when the settings have been successfully applied
---@field public DefaultGraphicsPerformance integer @Enum specifying a graphics preset to use for this game
---@field public AppliedDefaultGraphicsPerformance integer @Enum that is set to DefaultGraphicsPerformance when the settings have been successfully applied
local UHardwareTargetingSettings = {}

