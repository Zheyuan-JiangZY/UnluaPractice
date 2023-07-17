---Settings to tweak the performance of the editor
---@class UEditorPerformanceSettings : UDeveloperSettings
---@field public bShowFrameRateAndMemory boolean @When enabled, the application frame rate, memory and Unreal object count will be displayed in the main editor UI
---@field public bThrottleCPUWhenNotForeground boolean @Lowers CPU usage when the editor is in the background and not the active application
---@field public bDisableRealtimeViewportsInRemoteSessions boolean @Disables realtime viewports by default when connected via a remote session
---@field public bMonitorEditorPerformance boolean @When turned on, the editor will constantly monitor performance and adjust scalability settings for you when performance drops (disabled in debug)
---@field public bOverrideDPIBasedEditorViewportScaling boolean @By default the editor will adjust scene scaling (quality) for high DPI in order to ensure consistent performance with very large render targets. Enabling this will disable automatic adjusting and render at the full resolution of the viewport
---@field public bEnableSharedDDCPerformanceNotifications boolean @When enabled, Shared Data Cache performance notifications may be displayed when not connected to a shared cache
---@field public bEnableScalabilityWarningIndicator boolean @When enabled, a warning will appear in the viewport when your editors scalability settings are non-default and you may be viewing a low quality scene
local UEditorPerformanceSettings = {}

