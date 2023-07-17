---Struct used for passing information from Matinee to an Actor for blending animations during a sequence.
---@class FAnimSlotInfo
---@field public SlotName string @Name of slot that we want to play the animtion in.
---@field public ChannelWeights TArray<number> @Strength of each Channel within this Slot. Channel indexs are determined by track order in Matinee.
local FAnimSlotInfo = {}
