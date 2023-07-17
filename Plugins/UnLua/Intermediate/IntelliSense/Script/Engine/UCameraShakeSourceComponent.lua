---@class UCameraShakeSourceComponent : USceneComponent
---@field public Attenuation ECameraShakeAttenuation @The attenuation profile for how camera shakes' intensity falls off with distance
---@field public InnerAttenuationRadius number @Under this distance from the source, the camera shakes are at full intensity
---@field public OuterAttenuationRadius number @Outside of this distance from the source, the camera shakes don't apply at all
---@field public CameraShake TSubclassOf<UCameraShakeBase>
---@field public bAutoStart boolean
---@field public EditorSpriteTexture UTexture2D @Sprite to display in the editor.
---@field public EditorSpriteTextureScale number @Sprite scaling for display in the editor.
local UCameraShakeSourceComponent = {}

---Stops a camera shake originating from this source
---@param InCameraShake TSubclassOf_UCameraShakeBase_
---@param bImmediately boolean @[opt] 
function UCameraShakeSourceComponent:StopAllCameraShakesOfType(InCameraShake, bImmediately) end

---Stops all currently active camera shakes that are originating from this source from all player controllers
---@param bImmediately boolean @[opt] 
function UCameraShakeSourceComponent:StopAllCameraShakes(bImmediately) end

---Starts a new camera shake originating from this source, and apply it on all player controllers
---@param InCameraShake TSubclassOf_UCameraShakeBase_
---@param Scale number @[opt] 
---@param PlaySpace ECameraShakePlaySpace @[opt] 
---@param UserPlaySpaceRot FRotator
function UCameraShakeSourceComponent:StartCameraShake(InCameraShake, Scale, PlaySpace, UserPlaySpaceRot) end

function UCameraShakeSourceComponent:Start() end

---Computes an attenuation factor from this source
---@param Location FVector
---@return number
function UCameraShakeSourceComponent:GetAttenuationFactor(Location) end

