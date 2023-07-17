---@class UMagicLeapAudioFunctionLibrary : UBlueprintFunctionLibrary
local UMagicLeapAudioFunctionLibrary = {}

---Sets the delegate used to notify that an audio device has been unplugged from the audio jack.
---@param ResultDelegate Delegate
---@return boolean
function UMagicLeapAudioFunctionLibrary.SetOnAudioJackUnpluggedDelegate(ResultDelegate) end

---Sets the delegate used to notify that an audio device has been plugged into the audio jack.
---@param ResultDelegate Delegate
---@return boolean
function UMagicLeapAudioFunctionLibrary.SetOnAudioJackPluggedDelegate(ResultDelegate) end

---Mute or unmute all microphone capture.
---Note: When mic capture is muted or unmuted by one app, it is muted or unmuted for all apps.
---Note: this setting is separate from any muting done by the audio policy manager (such as when the "reality button"
---is pressed).
---@param IsMuted boolean
---@return boolean
function UMagicLeapAudioFunctionLibrary.SetMicMute(IsMuted) end

---Returns whether all microphone capture is muted or not.
---@return boolean
function UMagicLeapAudioFunctionLibrary.IsMicMuted() end

