---@class UInterpGroupInst : UObject
---@field public Group UInterpGroup @UInterpGroup within the InterpData that this is an instance of.
---@field public GroupActor AActor @Actor that this Group instance is acting upon. NB: that this may be set to NULL at any time as a result of the  AActor  being destroyed.
---@field public TrackInst TArray<UInterpTrackInst> @Array if InterpTrack instances. TrackInst.Num() == UInterpGroup.InterpTrack.Num() must be true.
local UInterpGroupInst = {}

