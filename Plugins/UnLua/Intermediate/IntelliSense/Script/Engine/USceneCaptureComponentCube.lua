---Used to capture a 'snapshot' of the scene from a 6 planes and feed it to a render target.
---@class USceneCaptureComponentCube : USceneCaptureComponent
---@field public TextureTarget UTextureRenderTargetCube @Temporary render target that can be used by the editor.
---@field public bCaptureRotation boolean @Preserve the rotation of the actor when updating the capture. The default behavior is to capture the cube aligned to the world axis system.
---@field public TextureTargetLeft UTextureRenderTargetCube @Omni-directional Stereo Capture If vr.ODSCapture is enabled and both left, right and ODS render targets are set, we'll ignore the texture target and instead do an omni-directional stereo capture. Warped cube maps will be rendered into the left and right texture targets using the IPD property for stereo offset. We will then reconstruct a stereo lat-long with the left eye stacked on top of the right eye in the ODS target. See: https://developers.google.com/vr/jump/rendering-ods-content.pdf
---@field public TextureTargetRight UTextureRenderTargetCube
---@field public TextureTargetODS UTextureRenderTarget2D
---@field public IPD number
local USceneCaptureComponentCube = {}

---Render the scene to the texture target immediately.
---This should not be used if bCaptureEveryFrame is enabled, or the scene capture will render redundantly.
function USceneCaptureComponentCube:CaptureScene() end

