---@class UVoipListenerSynthComponent : USynthComponent
local UVoipListenerSynthComponent = {}

---* Thread safe way to get whether this synth component still has buffered packets of audio to play back.
---* This function is used by the Voice Engine to clean up voice sounds when they are not playing back audio
---* to make space for other sounds to be rendered.
---* @@returns true if this synth component is out of audio to play.
---@return boolean
function UVoipListenerSynthComponent:IsIdling() end

