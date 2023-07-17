---A recording source that records LiveLink
---@class UTakeRecorderLiveLinkSource : UTakeRecorderSource
---@field public bReduceKeys boolean @Whether to perform key-reduction algorithms as part of the recording
---@field public SubjectName string @Name of the subject to record
---@field public bSaveSubjectSettings boolean @Whether we should save subject settings in the the live link section. If not, we'll create one with subject information with no settings
---@field public bUseSourceTimecode boolean @If true we use timecode even if not synchronized, else we use world time
---@field public bDiscardSamplesBeforeStart boolean @If true discard livelink samples with timecode that occurs before the start of recording
---@field public TrackRecorder UMovieSceneLiveLinkTrackRecorder @The master track recorder we created.
local UTakeRecorderLiveLinkSource = {}

