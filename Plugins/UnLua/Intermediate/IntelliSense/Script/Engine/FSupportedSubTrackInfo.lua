---Helper struct for creating sub tracks supported by this track
---@class FSupportedSubTrackInfo
---@field public SupportedClass TSubclassOf<UInterpTrack> @The sub track class which is supported by this track
---@field public SubTrackName string @The name of the subtrack
---@field public GroupIndex integer @Index into the any subtrack group this subtrack belongs to (can be -1 for no group)
local FSupportedSubTrackInfo = {}
