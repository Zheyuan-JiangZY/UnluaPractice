---The camera actor in the level that tracks the binded physical camera in game
---@class AOculusMR_CastingCameraActor : ASceneCapture2D
---@field public VRNotificationComponent UVRNotificationsComponent
---@field public CameraColorTexture UTexture2D
---@field public CameraDepthTexture UTexture2D
---@field public PlaneMeshComponent UOculusMR_PlaneMeshComponent
---@field public ChromaKeyMaterial UMaterial
---@field public OpaqueColoredMaterial UMaterial
---@field public ChromaKeyMaterialInstance UMaterialInstanceDynamic
---@field public CameraFrameMaterialInstance UMaterialInstanceDynamic
---@field public BackdropMaterialInstance UMaterialInstanceDynamic
---@field public DefaultTexture_White UTexture2D
---@field private BackgroundRenderTargets TArray<UTextureRenderTarget2D>
---@field private ForegroundCaptureActor ASceneCapture2D
---@field private ForegroundRenderTargets TArray<UTextureRenderTarget2D>
---@field private PoseTimes TArray<number>
---@field private MRSettings UOculusMR_Settings
---@field private MRState UOculusMR_State
local AOculusMR_CastingCameraActor = {}

