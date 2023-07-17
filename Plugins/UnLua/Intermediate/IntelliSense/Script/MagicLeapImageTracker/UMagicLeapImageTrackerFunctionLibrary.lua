---@class UMagicLeapImageTrackerFunctionLibrary : UBlueprintFunctionLibrary
local UMagicLeapImageTrackerFunctionLibrary = {}

---Set maximum number of Image Targets that can be tracked at any given time.
---If the tracker is already tracking the maximum number of targets
---possible then it will stop searching for new targets which helps
---in reducing the load on the CPU. For example, if you are interested in
---tracking a maximum of x targets from a list y (x < y) targets then set this
---parameter to x.
---The valid range for this parameter is from 1 through 25.
---@param MaxSimultaneousTargets integer
function UMagicLeapImageTrackerFunctionLibrary.SetMaxSimultaneousTargets(MaxSimultaneousTargets) end

---Gets the active state of the image tracking system.
---@return boolean
function UMagicLeapImageTrackerFunctionLibrary.IsImageTrackingEnabled() end

---Gets the maximum number of Image Targets that can be tracked at any given time.
---@return integer
function UMagicLeapImageTrackerFunctionLibrary.GetMaxSimultaneousTargets() end

---If true, image tracker will detect and track targets.
---When enabled Image Tracker will gain access to the camera and start
---trackingimages. Enabling image tracker is expensive, takes about 1500ms
---on the average.
---When disabled Image Tracker will release the camera and stop tracking
---images. Internal state of the tracker will be maintained (i.e. list of
---active/inactive argets and their target_handles).
---This is done automatically on application pause / resume.
---@param bEnable boolean
function UMagicLeapImageTrackerFunctionLibrary.EnableImageTracking(bEnable) end

