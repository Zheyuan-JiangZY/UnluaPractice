---A specialized version of a camera component, geared toward cinematic usage.
---@class UCineCameraComponent : UCameraComponent
---@field public Filmback FCameraFilmbackSettings @Controls the filmback of the camera.
---@field public LensSettings FCameraLensSettings @Controls the camera's lens.
---@field public FocusSettings FCameraFocusSettings @Controls the camera's focus.
---@field public CurrentFocalLength number @Current focal length of the camera (i.e. controls FoV, zoom)
---@field public CurrentAperture number @Current aperture, in terms of f-stop (e.g. 2.8 for f/2.8)
---@field public CurrentFocusDistance number @Read-only. Control this value via FocusSettings.
---@field public CurrentHorizontalFOV number @Read-only. Control this value with CurrentFocalLength (and filmback settings).
---@field protected FocusPlaneVisualizationMesh UStaticMesh @Mesh used for debug focus plane visualization
---@field protected FocusPlaneVisualizationMaterial UMaterial @Material used for debug focus plane visualization
---@field protected DebugFocusPlaneComponent UStaticMeshComponent @Component for the debug focus plane visualization
---@field protected DebugFocusPlaneMID UMaterialInstanceDynamic @Dynamic material instance for the debug focus plane visualization
---@field protected FilmbackPresets TArray<FNamedFilmbackPreset> @List of available filmback presets
---@field protected LensPresets TArray<FNamedLensPreset> @List of available lens presets
---@field protected DefaultFilmbackPreset string @Name of the default filmback preset
---@field protected DefaultLensPresetName string @Name of the default lens preset
---@field protected DefaultLensFocalLength number @Default focal length (will be constrained by default lens)
---@field protected DefaultLensFStop number @Default aperture (will be constrained by default lens)
local UCineCameraComponent = {}

---Set the current lens settings by preset name.
---@param InPresetName string
function UCineCameraComponent:SetLensPresetByName(InPresetName) end

---Set the current preset settings by preset name.
---@param InPresetName string
function UCineCameraComponent:SetFilmbackPresetByName(InPresetName) end

---@param InFocalLength number
function UCineCameraComponent:SetCurrentFocalLength(InFocalLength) end

---Returns the vertical FOV of the camera with current settings.
---@return number
function UCineCameraComponent:GetVerticalFieldOfView() end

---Returns a copy of the list of available lens presets.
---@return TArray_FNamedLensPreset_
function UCineCameraComponent.GetLensPresetsCopy() end

---Returns the lens name of the camera with the current settings.
---@return string
function UCineCameraComponent:GetLensPresetName() end

---Returns the horizonal FOV of the camera with current settings.
---@return number
function UCineCameraComponent:GetHorizontalFieldOfView() end

---Returns a copy of the list of available filmback presets.
---@return TArray_FNamedFilmbackPreset_
function UCineCameraComponent.GetFilmbackPresetsCopy() end

---Returns the filmback name of the camera with the current settings.
---@return string
function UCineCameraComponent:GetFilmbackPresetName() end

---Returns the name of the default filmback preset.
---@return string
function UCineCameraComponent:GetDefaultFilmbackPresetName() end

