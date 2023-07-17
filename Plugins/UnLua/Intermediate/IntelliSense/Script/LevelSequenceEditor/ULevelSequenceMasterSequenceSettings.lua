---Level Sequence Master Sequence settings.
---@class ULevelSequenceMasterSequenceSettings : UObject
---@field public MasterSequenceName string @Master sequence name.
---@field public MasterSequenceSuffix string @Master sequence suffix.
---@field public MasterSequenceBasePath FDirectoryPath @Master sequence path.
---@field public MasterSequenceNumShots integer @Master sequence number of shots.
---@field public MasterSequenceLevelSequenceToDuplicate TLazyObjectPtr<ULevelSequence> @Master sequence level sequence to duplicate when creating shots.
---@field public SubSequenceNames TArray<string> @Array of sub sequence names, each will result in a level sequence asset in the shot.
---@field public bInstanceSubSequences boolean @Whether to instance sub sequences based on the first created sub sequences.
local ULevelSequenceMasterSequenceSettings = {}

