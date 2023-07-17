---XR Loading Screen Function Library
---@class UXRLoadingScreenFunctionLibrary : UBlueprintFunctionLibrary
local UXRLoadingScreenFunctionLibrary = {}

---Show the loading screen and override the VR display
function UXRLoadingScreenFunctionLibrary.ShowLoadingScreen() end

---@param Texture UTexture
---@param Scale FVector2D @[opt] 
---@param Offset FVector
---@param bShowLoadingMovie boolean @[opt] 
---@param bShowOnSet boolean @[opt] 
function UXRLoadingScreenFunctionLibrary.SetLoadingScreen(Texture, Scale, Offset, bShowLoadingMovie, bShowOnSet) end

---Hide the splash screen and return to normal display.
function UXRLoadingScreenFunctionLibrary.HideLoadingScreen() end

function UXRLoadingScreenFunctionLibrary.ClearLoadingScreenSplashes() end

---Adds a splash element to the loading screen.
---@param Texture UTexture
---@param Translation FVector
---@param Rotation FRotator
---@param Size FVector2D @[opt] 
---@param DeltaRotation FRotator
---@param bClearBeforeAdd boolean @[opt] 
function UXRLoadingScreenFunctionLibrary.AddLoadingScreenSplash(Texture, Translation, Rotation, Size, DeltaRotation, bClearBeforeAdd) end

