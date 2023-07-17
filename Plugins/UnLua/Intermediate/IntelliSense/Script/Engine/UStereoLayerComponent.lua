---A geometry layer within the stereo rendered viewport.
---@class UStereoLayerComponent : USceneComponent
---@field public bLiveTexture boolean @True if the stereo layer texture needs to update itself every frame(scene capture, video, etc.)
---@field public bSupportsDepth boolean @True if the stereo layer needs to support depth intersections with the scene geometry, if available on the platform
---@field public bNoAlphaChannel boolean @True if the texture should not use its own alpha channel (1.0 will be substituted)
---@field protected Texture UTexture @Texture displayed on the stereo layer (is stereocopic textures are supported on the platfrom and more than one texture is provided, this will be the right eye) *
---@field protected LeftTexture UTexture @Texture displayed on the stereo layer for left eye, if stereoscopic textures are supported on the platform and by the layer shape *
---@field public bQuadPreserveTextureRatio boolean @True if the quad should internally set it's Y value based on the set texture's dimensions
---@field protected QuadSize FVector2D @Size of the rendered stereo layer quad *
---@field protected UVRect FBox2D @UV coordinates mapped to the quad face *
---@field protected StereoLayerType integer @Specifies how and where the quad is rendered to the screen *
---@field protected Shape UStereoLayerShape @Specifies which shape of layer it is.  Note that some shapes will be supported only on certain platforms! *
---@field protected Priority integer @Render priority among all stereo layers, higher priority render on top of lower priority *
local UStereoLayerComponent = {}

---Change the UV coordinates mapped to the quad face
---@param InUVRect FBox2D
function UStereoLayerComponent:SetUVRect(InUVRect) end

---Change the texture displayed on the stereo layer.
---If stereoscopic layer textures are supported on the platform and LeftTexture is set, this property controls the texture for the right eye.
---@param InTexture UTexture
function UStereoLayerComponent:SetTexture(InTexture) end

---Change the quad size. This is the unscaled height and width, before component scale is applied.
---@param InQuadSize FVector2D
function UStereoLayerComponent:SetQuadSize(InQuadSize) end

---Change the layer's render priority, higher priorities render on top of lower priorities
---@param InPriority integer
function UStereoLayerComponent:SetPriority(InPriority) end

---Change the texture displayed on the stereo layer for left eye, if stereoscopic layer textures are supported on the platform.
---@param InTexture UTexture
function UStereoLayerComponent:SetLeftTexture(InTexture) end

---Set Equirect layer properties: UVRect, Scale, and Bias
---@param InScaleBiases FEquirectProps
function UStereoLayerComponent:SetEquirectProps(InScaleBiases) end

---Manually mark the stereo layer texture for updating
function UStereoLayerComponent:MarkTextureForUpdate() end

---
---@return FBox2D
function UStereoLayerComponent:GetUVRect() end

---
---@return UTexture
function UStereoLayerComponent:GetTexture() end

---
---@return FVector2D
function UStereoLayerComponent:GetQuadSize() end

---
---@return integer
function UStereoLayerComponent:GetPriority() end

---
---@return UTexture
function UStereoLayerComponent:GetLeftTexture() end

