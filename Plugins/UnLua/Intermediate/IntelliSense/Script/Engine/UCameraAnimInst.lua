---@class UCameraAnimInst : UObject
---@field public CamAnim UCameraAnim @which CameraAnim this is an instance of
---@field private InterpGroupInst UInterpGroupInst @the UInterpGroupInst used to do the interpolation
---@field public PlayRate number @Multiplier for playback rate.  1.0 = normal.
---@field public MoveTrack UInterpTrackMove @cached movement track from the currently playing anim so we don't have to go find it every frame
---@field public MoveInst UInterpTrackInstMove
---@field public PlaySpace ECameraShakePlaySpace
local UCameraAnimInst = {}

---Stops this instance playing whatever animation it is playing.
---@param bImmediate boolean @[opt] 
function UCameraAnimInst:Stop(bImmediate) end

---Changes the scale of the animation while playing.
---@param NewDuration number
function UCameraAnimInst:SetScale(NewDuration) end

---Changes the running duration of this active anim, while maintaining playback position.
---@param NewDuration number
function UCameraAnimInst:SetDuration(NewDuration) end

