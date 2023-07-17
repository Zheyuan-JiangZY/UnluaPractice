---@class ULuminARImageTrackingFunctionLibrary : UBlueprintFunctionLibrary
local ULuminARImageTrackingFunctionLibrary = {}

---@param SessionConfig UARSessionConfig
---@param CandidateTexture UTexture2D
---@param FriendlyName string
---@param PhysicalWidth number
---@param bUseUnreliablePose boolean
---@param bImageIsStationary boolean
---@param InAxisOrientation EMagicLeapImageTargetOrientation
---@return ULuminARCandidateImage
function ULuminARImageTrackingFunctionLibrary.AddLuminRuntimeCandidateImageEx(SessionConfig, CandidateTexture, FriendlyName, PhysicalWidth, bUseUnreliablePose, bImageIsStationary, InAxisOrientation) end

---Create a LuminARCandidateImage object and add it to the ARCandidateImageList of the given \c UARSessionConfig object.
---Note that you need to restart the AR session with the \c UARSessionConfig you are adding to to make the change take effect.
---On ARCore platform, you can leave the PhysicalWidth to 0 if you don't know the physical size of the image or
---the physical size is dynamic. And this function takes time to perform non-trivial image processing (20ms - 30ms),
---and should be run on a background thread.
---               Return nullptr otherwise.
---@param SessionConfig UARSessionConfig
---@param CandidateTexture UTexture2D
---@param FriendlyName string
---@param PhysicalWidth number
---@param bUseUnreliablePose boolean
---@param bImageIsStationary boolean
---@return ULuminARCandidateImage
function ULuminARImageTrackingFunctionLibrary.AddLuminRuntimeCandidateImage(SessionConfig, CandidateTexture, FriendlyName, PhysicalWidth, bUseUnreliablePose, bImageIsStationary) end

