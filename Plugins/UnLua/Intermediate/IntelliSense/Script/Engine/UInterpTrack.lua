---@class UInterpTrack : UObject
---@field public SubTracks TArray<UInterpTrack> @A list of subtracks that belong to this track
---@field public SubTrackGroups TArray<FSubTrackGroup> @A list of subtrack groups (for editor UI organization only)
---@field public SupportedSubTracks TArray<FSupportedSubTrackInfo> @A list of supported tracks that can be a subtrack of this track.
---@field public TrackInstClass TSubclassOf<UInterpTrackInst>
---@field public ActiveCondition integer @Sets the condition that must be met for this track to be enabled
---@field public TrackTitle string @Title of track type.
---@field public bOnePerGroup boolean @Whether there may only be one of this track in an UInterpGroup.
---@field public bDirGroupOnly boolean @If this track can only exist inside the Director group.
---@field private bDisableTrack boolean @Whether or not this track should actually update the target actor.
---@field private bIsSelected boolean @Whether or not this track is selected in the editor.
---@field public TrackIcon UTexture2D
---@field public bIsAnimControlTrack boolean @If true, the  AActor  this track is working on will have BeginAnimControl/FinishAnimControl called on it.
---@field public bSubTrackOnly boolean @If this track can only exist as a sub track.
---@field public bVisible boolean @Whether or not this track is visible in the editor.
---@field public bIsRecording boolean @Whether or not this track is recording in the editor.
---@field public bIsCollapsed boolean @If this track is collapsed. (Only applies  to tracks with subtracks).
local UInterpTrack = {}

