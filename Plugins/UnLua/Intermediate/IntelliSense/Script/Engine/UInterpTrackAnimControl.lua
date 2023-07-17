---@class UInterpTrackAnimControl : UInterpTrackFloatBase
---@field public SlotName string @Name of slot to use when playing animation. Passed to Actor. When multiple tracks use the same slot name, they are each given a different ChannelIndex when SetAnimPosition is called.
---@field public AnimSeqs TArray<FAnimControlTrackKey> @Track of different animations to play and when to start playing them.
---@field public bSkipAnimNotifiers boolean @Skip all anim notifiers *
local UInterpTrackAnimControl = {}

