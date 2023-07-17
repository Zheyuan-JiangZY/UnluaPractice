---@class USynthSamplePlayer : USynthComponent
---@field public SoundWave USoundWave
---@field public OnSampleLoaded MulticastDelegate
---@field public OnSamplePlaybackProgress MulticastDelegate
local USynthSamplePlayer = {}

---This will override the current sound wave if one is set, stop audio, and reload the new sound wave
---@param InSoundWave USoundWave
function USynthSamplePlayer:SetSoundWave(InSoundWave) end

---@param InScrubTimeWidthSec number
function USynthSamplePlayer:SetScrubTimeWidth(InScrubTimeWidthSec) end

---@param bScrubMode boolean
function USynthSamplePlayer:SetScrubMode(bScrubMode) end

---@param InPitch number
---@param TimeSec number
function USynthSamplePlayer:SetPitch(InPitch, TimeSec) end

---@param TimeSec number
---@param SeekType ESamplePlayerSeekType
---@param bWrap boolean @[opt] 
function USynthSamplePlayer:SeekToTime(TimeSec, SeekType, bWrap) end

---@return boolean
function USynthSamplePlayer:IsLoaded() end

---@return number
function USynthSamplePlayer:GetSampleDuration() end

---@return number
function USynthSamplePlayer:GetCurrentPlaybackProgressTime() end

---@return number
function USynthSamplePlayer:GetCurrentPlaybackProgressPercent() end

