---@class UEyeTrackerFunctionLibrary : UBlueprintFunctionLibrary
local UEyeTrackerFunctionLibrary = {}

---Specifies player being eye-tracked. This is not necessary for all devices, but is necessary for some to determine viewport properties, etc.
---@param PlayerController APlayerController
function UEyeTrackerFunctionLibrary.SetEyeTrackedPlayer(PlayerController) end

---Returns whether or not the eye-tracking hardware is connected and ready to use. It may or may not actually be in use.
---@return boolean
function UEyeTrackerFunctionLibrary.IsStereoGazeDataAvailable() end

---Returns whether or not the eye-tracking hardware is connected and ready to use. It may or may not actually be in use.
---@return boolean
function UEyeTrackerFunctionLibrary.IsEyeTrackerConnected() end

---Returns stereo gaze data from the eye tracker. This includes a gaze ray per eye, as well as a fixation point.
---@param OutGazeData FEyeTrackerStereoGazeData @[out] 
---@return boolean
function UEyeTrackerFunctionLibrary.GetStereoGazeData(OutGazeData) end

---Returns unfied gaze data from the eye tracker. This is a single gaze ray, representing the fusion of both eyes.
---@param OutGazeData FEyeTrackerGazeData @[out] 
---@return boolean
function UEyeTrackerFunctionLibrary.GetGazeData(OutGazeData) end

