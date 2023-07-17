---@class FAnimNode_RandomPlayer : FAnimNode_Base
---@field public Entries TArray<FRandomPlayerSequenceEntry> @List of sequences to randomly step through
---@field public bShuffleMode boolean @When shuffle mode is active we will never loop a sequence beyond MaxLoopCount without visiting each sequence in turn (no repeats). Enabling this will ignore ChanceToPlay for each entry
local FAnimNode_RandomPlayer = {}
