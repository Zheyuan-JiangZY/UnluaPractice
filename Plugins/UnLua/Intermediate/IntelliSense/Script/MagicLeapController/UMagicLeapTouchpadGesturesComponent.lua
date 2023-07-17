---DEPRECATED use Touchpad Gesture Events instead. - Delegates touchpad gesture events for the Magic Leap Controller & MLMA
---@class UMagicLeapTouchpadGesturesComponent : UActorComponent
---@field public OnTouchpadGestureStart MulticastDelegate @DEPRECATED use Touchpad Gesture Events instead. - Event called when a touchpad gesture starts. Provides all the meta data about the given gestures.
---@field public OnTouchpadGestureContinue MulticastDelegate @DEPRECATED use Touchpad Gesture Events instead. - Event called when a touchpad gesture continues. Provides all the meta data about the given gestures.
---@field public OnTouchpadGestureEnd MulticastDelegate @DEPRECATED use Touchpad Gesture Events instead. - Event called when a touchpad gesture ends. Provides all the meta data about the given gestures.
local UMagicLeapTouchpadGesturesComponent = {}

---@param GestureData FMagicLeapTouchpadGesture
function UMagicLeapTouchpadGesturesComponent:TouchpadGestureEvent__DelegateSignature(GestureData) end

