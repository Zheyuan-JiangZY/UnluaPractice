---Used to capture a 'snapshot' of the scene from a single plane and feed it to a render target.
---@class USceneCaptureComponent2D : USceneCaptureComponent
---@field public ProjectionType integer
---@field public FOVAngle number @Camera field of view (in degrees).
---@field public OrthoWidth number @The desired width (in world units) of the orthographic view (ignored in Perspective mode)
---@field public TextureTarget UTextureRenderTarget2D @Output render target of the scene capture that can be read in materals.
---@field public CompositeMode integer @When enabled, the scene capture will composite into the render target instead of overwriting its contents.
---@field public PostProcessSettings FPostProcessSettings
---@field public PostProcessBlendWeight number @Range (0.0, 1.0) where 0 indicates no effect, 1 indicates full effect.
---@field public bOverride_CustomNearClippingPlane boolean
---@field public CustomNearClippingPlane number @Set bOverride_CustomNearClippingPlane to true if you want to use a custom clipping plane instead of GNearClippingPlane.
---@field public bUseCustomProjectionMatrix boolean @Whether a custom projection matrix will be used during rendering. Use with caution. Does not currently affect culling
---@field public CustomProjectionMatrix FMatrix @The custom projection matrix to use
---@field public bEnableClipPlane boolean @Enables a clip plane while rendering the scene capture which is useful for portals. The global clip plane must be enabled in the renderer project settings for this to work.
---@field public ClipPlaneBase FVector @Base position for the clip plane, can be any position on the plane.
---@field public ClipPlaneNormal FVector @Normal for the plane.
---@field public bCameraCutThisFrame boolean @True if we did a camera cut this frame. Automatically reset to false at every capture. This flag affects various things in the renderer (such as whether to use the occlusion queries from last frame, and motion blur). Similar to UPlayerCameraManager::bGameCameraCutThisFrame.
---@field public bConsiderUnrenderedOpaquePixelAsFullyTranslucent boolean @Treat unrendered opaque pixels as fully translucent. This is important for effects such as exponential weight fog, so it does not get applied on unrendered opaque pixels.
---@field public bDisableFlipCopyGLES boolean @Scene captures render an extra flip pass for LDR color on GLES so that the final output is oriented correctly. This check disabled the extra flip pass, improving performance, but causes the capture to be flipped vertically. (Does not affect scene captures on other non-GLES renderers or with non-LDR output)
local USceneCaptureComponent2D = {}

---Removes a blendable.
---@param InBlendableObject TScriptInterface_UBlendableInterface_
function USceneCaptureComponent2D:RemoveBlendable(InBlendableObject) end

---Render the scene to the texture target immediately.
---This should not be used if bCaptureEveryFrame is enabled, or the scene capture will render redundantly.
function USceneCaptureComponent2D:CaptureScene() end

---Adds an Blendable (implements IBlendableInterface) to the array of Blendables (if it doesn't exist) and update the weight
---@param InBlendableObject TScriptInterface_UBlendableInterface_
---@param InWeight number @[opt] 
function USceneCaptureComponent2D:AddOrUpdateBlendable(InBlendableObject, InWeight) end

