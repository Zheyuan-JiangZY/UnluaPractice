---Legacy camera shake which can do either oscillation or run camera anims.
---@class UMatineeCameraShake : UCameraShakeBase
---@field public OscillationDuration number @Duration in seconds of current screen shake. Less than 0 means indefinite, 0 means no oscillation.
---@field public OscillationBlendInTime number @Duration of the blend-in, where the oscillation scales from 0 to 1.
---@field public OscillationBlendOutTime number @Duration of the blend-out, where the oscillation scales from 1 to 0.
---@field public RotOscillation FROscillator @Rotational oscillation
---@field public LocOscillation FVOscillator @Positional oscillation
---@field public FOVOscillation FFOscillator @FOV oscillation
---@field public AnimPlayRate number @Scalar defining how fast to play the anim.
---@field public AnimScale number @Scalar defining how "intense" to play the anim.
---@field public AnimBlendInTime number @Linear blend-in time.
---@field public AnimBlendOutTime number @Linear blend-out time.
---@field public RandomAnimSegmentDuration number @When bRandomAnimSegment is true, this defines how long the anim should play.
---@field public Anim UCameraAnim @Source camera animation to play. Can be null.
---@field public AnimSequence UCameraAnimationSequence @Source camera animation sequence to play. Can be null, but can't have both Anim and AnimSequence.
---@field public bRandomAnimSegment boolean @If true, play a random snippet of the animation of length Duration.  Implies bLoop and bRandomStartTime = true for the CameraAnim. If false, play the full anim once, non-looped. Useful for getting variety out of a single looped CameraAnim asset.
---@field public OscillatorTimeRemaining number @Time remaining for oscillation shakes. Less than 0.f means shake infinitely.
---@field public AnimInst UCameraAnimInst @The playing instance of the CameraAnim-based shake, if any.
---@field protected SequenceShakePattern USequenceCameraShakePattern @Sequence shake pattern for when using a sequence instead of a camera anim
local UMatineeCameraShake = {}

---Backwards compatible method used by core BP redirectors. This is needed because the return value is specifically a Matinee camera shake,
---which some BP logic often uses directly to set oscillator/anim properties.
---@param PlayerCameraManager APlayerCameraManager
---@param ShakeClass TSubclassOf_UMatineeCameraShake_
---@param SourceComponent UCameraShakeSourceComponent
---@param Scale number @[opt] 
---@param PlaySpace ECameraShakePlaySpace @[opt] 
---@param UserPlaySpaceRot FRotator
---@return UMatineeCameraShake
function UMatineeCameraShake.StartMatineeCameraShakeFromSource(PlayerCameraManager, ShakeClass, SourceComponent, Scale, PlaySpace, UserPlaySpaceRot) end

---Backwards compatible method used by core BP redirectors. This is needed because the return value is specifically a Matinee camera shake,
---which some BP logic often uses directly to set oscillator/anim properties.
---@param PlayerCameraManager APlayerCameraManager
---@param ShakeClass TSubclassOf_UMatineeCameraShake_
---@param Scale number @[opt] 
---@param PlaySpace ECameraShakePlaySpace @[opt] 
---@param UserPlaySpaceRot FRotator
---@return UMatineeCameraShake
function UMatineeCameraShake.StartMatineeCameraShake(PlayerCameraManager, ShakeClass, Scale, PlaySpace, UserPlaySpaceRot) end

---Called when the shake is explicitly stopped.
---@param bImmediately boolean
function UMatineeCameraShake:ReceiveStopShake(bImmediately) end

---Called when the shake starts playing
---@param Scale number
function UMatineeCameraShake:ReceivePlayShake(Scale) end

---Called to allow a shake to decide when it's finished playing.
---@return boolean
function UMatineeCameraShake:ReceiveIsFinished() end

---Called every tick to let the shake modify the point of view
---@param DeltaTime number
---@param Alpha number
---@param POV FMinimalViewInfo
---@param ModifiedPOV FMinimalViewInfo @[out] 
function UMatineeCameraShake:BlueprintUpdateCameraShake(DeltaTime, Alpha, POV, ModifiedPOV) end

