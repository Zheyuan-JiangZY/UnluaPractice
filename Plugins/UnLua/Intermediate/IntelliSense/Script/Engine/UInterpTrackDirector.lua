---@class UInterpTrackDirector : UInterpTrack
---@field public CutTrack TArray<FDirectorTrackCut> @Array of cuts between cameras.
---@field private bSimulateCameraCutsOnClients boolean @True to allow clients to simulate their own camera cuts.  Can help with latency-induced timing issues.
---@field private PreviewCamera ACameraActor @The camera actor which the track is currently focused on. Only valid if this track or it's group is selected
local UInterpTrackDirector = {}

