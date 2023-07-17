---@class UNiagaraBakerSettings : UObject
---@field public StartSeconds number @This is the start time of the simultion where we being the capture. I.e. 2.0 would mean the simulation warms up by 2 seconds before we begin capturing.
---@field public DurationSeconds number @Duration in seconds to take the capture over.
---@field public FramesPerSecond integer @The frame rate to run the simulation at during capturing. This is only used for the preview view and calculating the number of ticks to execute as we capture the generated texture.
---@field public bPreviewLooping boolean @Should the preview playback as looping or not.
---@field public FramesPerDimension FIntPoint @Number of frames in each dimension.
---@field public OutputTextures TArray<FNiagaraBakerTextureSettings> @List of output textures we will generated.
---@field public CameraViewportMode ENiagaraBakerViewMode @Current active viewport we will render from.
---@field public CameraViewportLocation FVector @Per viewport camera position..
---@field public CameraViewportRotation FRotator @Per viewport camera rotation..
---@field public CameraOrbitDistance number @Perspective camera orbit distance.
---@field public CameraFOV number @Camera FOV to use when in perspective mode.
---@field public CameraOrthoWidth number @Camera Orthographic width to use with in orthographic mode.
---@field public bUseCameraAspectRatio boolean
---@field public CameraAspectRatio number @Custom aspect ratio to use rather than using the width & height to automatically calculate.
---@field public bRenderComponentOnly boolean @Should we render just the component or the whole scene.
local UNiagaraBakerSettings = {}

