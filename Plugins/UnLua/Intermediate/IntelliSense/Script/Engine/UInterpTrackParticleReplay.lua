---@class UInterpTrackParticleReplay : UInterpTrack
---@field public TrackKeys TArray<FParticleReplayTrackKey> @Array of keys
---@field public bIsCapturingReplay boolean @True in the editor if track should be used to capture replay frames instead of play them back
---@field public FixedTimeStep number @Current replay fixed time quantum between frames (one over frame rate)
local UInterpTrackParticleReplay = {}

