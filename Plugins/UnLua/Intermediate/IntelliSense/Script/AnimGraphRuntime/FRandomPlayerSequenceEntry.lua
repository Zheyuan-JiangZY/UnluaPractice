---The random player node holds a list of sequences and parameter ranges which will be played continuously
---In a random order. If shuffle mode is enabled then each entry will be played once before repeating any
---@class FRandomPlayerSequenceEntry
---@field public Sequence UAnimSequence @Sequence to play when this entry is picked
---@field public ChanceToPlay number @When not in shuffle mode, this is the chance this entry will play (normalized against all other sample chances)
---@field public MinLoopCount integer @Minimum number of times this entry will loop before ending
---@field public MaxLoopCount integer @Maximum number of times this entry will loop before ending
---@field public MinPlayRate number @Minimum playrate for this entry
---@field public MaxPlayRate number @Maximum playrate for this entry
---@field public BlendIn FAlphaBlend @Blending properties used when this entry is blending in ontop of another entry
local FRandomPlayerSequenceEntry = {}
