---Helper class that allows the user to explicitly request AR service installation and permission granting.
---Recommended flow for explicit management:
---1. Call "GetARDependencyHandler" to get a handler, if valid:
---2. Call "CheckARServiceAvailability" to check availability, if the device is supported:
---3. Call "InstallARService" to install AR service dependency, if installed:
---4. Call "RequestARSessionPermission" to request permission, if granted:
---5. Call "UARBlueprintLibrary::StartARSession" to start the session.
---Alternatively, you can also call "StartARSessionLatent" which handles dependency and permission internally.
---@class UARDependencyHandler : UObject
local UARDependencyHandler = {}

---Latent action to start AR session.
---Will make sure dependency and permission issues are resolved internally, only returns the AR session starts successfully.
---@param WorldContextObject UObject
---@param SessionConfig UARSessionConfig
function UARDependencyHandler:StartARSessionLatent(WorldContextObject, SessionConfig) end

---Latent action to request permission to run the supplied session configuration.
---@param WorldContextObject UObject
---@param SessionConfig UARSessionConfig
---@param OutPermissionResult EARServicePermissionRequestResult @[out] 
function UARDependencyHandler:RequestARSessionPermission(WorldContextObject, SessionConfig, OutPermissionResult) end

---Latent action to install AR service on the current platform.
---@param WorldContextObject UObject
---@param OutInstallResult EARServiceInstallRequestResult @[out] 
function UARDependencyHandler:InstallARService(WorldContextObject, OutInstallResult) end

---
---Can return null if the current platform doesn't support AR, or the AR system doesn't require dependency handling.
---@return UARDependencyHandler
function UARDependencyHandler.GetARDependencyHandler() end

---Latent action to check AR availability on the current platform.
---@param WorldContextObject UObject
---@param OutAvailability EARServiceAvailability @[out] 
function UARDependencyHandler:CheckARServiceAvailability(WorldContextObject, OutAvailability) end

