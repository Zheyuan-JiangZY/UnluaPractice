---Abstract class that provides consistent player behaviour for various animation players
---@class UMovieSceneSequencePlayer : UObject
---@field public OnPlay MulticastDelegate @Event triggered when the level sequence player is played
---@field public OnPlayReverse MulticastDelegate @Event triggered when the level sequence player is played in reverse
---@field public OnStop MulticastDelegate @Event triggered when the level sequence player is stopped
---@field public OnPause MulticastDelegate @Event triggered when the level sequence player is paused
---@field public OnFinished MulticastDelegate @Event triggered when the level sequence player finishes naturally (without explicitly calling stop)
---@field protected Status integer @Movie player status.
---@field protected bReversePlayback boolean @Whether we're currently playing in reverse.
---@field protected Sequence UMovieSceneSequence @The sequence to play back
---@field protected StartTime FFrameNumber @Time (in playback frames) at which to start playing the sequence (defaults to the lower bound of the sequence's play range)
---@field protected DurationFrames integer @Time (in playback frames) at which to stop playing the sequence (defaults to the upper bound of the sequence's play range)
---@field protected DurationSubFrames number
---@field protected CurrentNumLoops integer @The number of times we have looped in the current playback
---@field protected PlaybackSettings FMovieSceneSequencePlaybackSettings @Specific playback settings for the animation.
---@field protected RootTemplateInstance FMovieSceneRootEvaluationTemplateInstance @The root template instance we're evaluating
---@field protected NetSyncProps FMovieSceneSequenceReplProperties @Replicated playback status and current time that are replicated to clients
---@field protected PlaybackClient TScriptInterface<UMovieScenePlaybackClient> @External client pointer in charge of playing back this sequence
---@field protected TickManager UMovieSceneSequenceTickManager @Global tick manager, held here to keep it alive while world sequences are in play
local UMovieSceneSequencePlayer = {}

---Stop playback without moving the cursor.
function UMovieSceneSequencePlayer:StopAtCurrentTime() end

---Stop playback and move the cursor to the end (or start, for reversed playback) of the sequence.
function UMovieSceneSequencePlayer:Stop() end

---Set the valid play range for this sequence, determined by a starting time  and a duration (in seconds)
---@param StartTime number
---@param Duration number
function UMovieSceneSequencePlayer:SetTimeRange(StartTime, Duration) end

---Set the playback rate of this player. Negative values will play the animation in reverse.
---@param PlayRate number
function UMovieSceneSequencePlayer:SetPlayRate(PlayRate) end

---Set the current time of the player by evaluating from the current time to the specified time, as if the sequence is playing.
---Triggers events that lie within the evaluated range. Does not alter the persistent playback status of the player (IsPlaying).
---@param PlaybackParams FMovieSceneSequencePlaybackParams
function UMovieSceneSequencePlayer:SetPlaybackPosition(PlaybackParams) end

---Set the frame-rate that this player should play with, making all frame numbers in the specified time-space
---@param FrameRate FFrameRate
function UMovieSceneSequencePlayer:SetFrameRate(FrameRate) end

---Set the valid play range for this sequence, determined by a starting frame number (in this sequence player's plaback frame), and a number of frames duration
---@param StartFrame integer
---@param Duration integer
---@param SubFrames number @[opt] 
function UMovieSceneSequencePlayer:SetFrameRange(StartFrame, Duration, SubFrames) end

---Set whether to disable camera cuts
---@param bInDisableCameraCuts boolean
function UMovieSceneSequencePlayer:SetDisableCameraCuts(bInDisableCameraCuts) end

---@param TimeInSeconds number
function UMovieSceneSequencePlayer:ScrubToSeconds(TimeInSeconds) end

---@param InLabel string
---@return boolean
function UMovieSceneSequencePlayer:ScrubToMarkedFrame(InLabel) end

---@param NewPosition FFrameTime
function UMovieSceneSequencePlayer:ScrubToFrame(NewPosition) end

---Scrub playback.
function UMovieSceneSequencePlayer:Scrub() end

---Called on the server when Stop() is called in order to differentiate Stops from Pauses.
---@param StoppedTime FFrameTime
function UMovieSceneSequencePlayer:RPC_OnStopEvent(StoppedTime) end

---Called on the server whenever an explicit change in time has occurred through one of the (Play|Jump|Scrub)To methods
---@param Method EUpdatePositionMethod
---@param RelevantTime FFrameTime
function UMovieSceneSequencePlayer:RPC_ExplicitServerUpdateEvent(Method, RelevantTime) end

---Restore any changes made by this player to their original state
function UMovieSceneSequencePlayer:RestoreState() end

---@param TimeInSeconds number
function UMovieSceneSequencePlayer:PlayToSeconds(TimeInSeconds) end

---@param InLabel string
---@return boolean
function UMovieSceneSequencePlayer:PlayToMarkedFrame(InLabel) end

---@param NewPosition FFrameTime
function UMovieSceneSequencePlayer:PlayToFrame(NewPosition) end

---Play from the current position to the requested position and pause. If requested position is before the current position,
---playback will be reversed. Playback to the requested position will be cancelled if Stop() or Pause() is invoked during this
---playback.
---@param PlaybackParams FMovieSceneSequencePlaybackParams
function UMovieSceneSequencePlayer:PlayTo(PlaybackParams) end

---Reverse playback.
function UMovieSceneSequencePlayer:PlayReverse() end

---Start playback from the current time cursor position, looping the specified number of times.
---@param NumLoops integer @[opt] 
function UMovieSceneSequencePlayer:PlayLooping(NumLoops) end

---Start playback forwards from the current time cursor position, using the current play rate.
function UMovieSceneSequencePlayer:Play() end

---Pause playback.
function UMovieSceneSequencePlayer:Pause() end

---@param TimeInSeconds number
function UMovieSceneSequencePlayer:JumpToSeconds(TimeInSeconds) end

---@param InLabel string
---@return boolean
function UMovieSceneSequencePlayer:JumpToMarkedFrame(InLabel) end

---@param NewPosition FFrameTime
function UMovieSceneSequencePlayer:JumpToFrame(NewPosition) end

---Check whether playback is reversed.
---@return boolean
function UMovieSceneSequencePlayer:IsReversed() end

---Check whether the sequence is actively playing.
---@return boolean
function UMovieSceneSequencePlayer:IsPlaying() end

---Check whether the sequence is paused.
---@return boolean
function UMovieSceneSequencePlayer:IsPaused() end

---Go to end of the sequence and stop. Adheres to 'When Finished' section rules.
function UMovieSceneSequencePlayer:GoToEndAndStop() end

---Get the offset within the level sequence to start playing
---@return FQualifiedFrameTime
function UMovieSceneSequencePlayer:GetStartTime() end

---Access the sequence this player is playing
---@return UMovieSceneSequence
function UMovieSceneSequencePlayer:GetSequence() end

---Get the playback rate of this player.
---@return number
function UMovieSceneSequencePlayer:GetPlayRate() end

---Get the object bindings for the requested object
---@param InObject UObject
---@return TArray_FMovieSceneObjectBindingID_
function UMovieSceneSequencePlayer:GetObjectBindings(InObject) end

---Get this sequence's display rate.
---@return FFrameRate
function UMovieSceneSequencePlayer:GetFrameRate() end

---Get this sequence's duration in frames
---@return integer
function UMovieSceneSequencePlayer:GetFrameDuration() end

---Get the offset within the level sequence to finish playing
---@return FQualifiedFrameTime
function UMovieSceneSequencePlayer:GetEndTime() end

---Get the total duration of the sequence
---@return FQualifiedFrameTime
function UMovieSceneSequencePlayer:GetDuration() end

---Set whether to disable camera cuts
---@return boolean
function UMovieSceneSequencePlayer:GetDisableCameraCuts() end

---Get the current playback position
---@return FQualifiedFrameTime
function UMovieSceneSequencePlayer:GetCurrentTime() end

---Retrieve all objects currently bound to the specified binding identifier
---@param ObjectBinding FMovieSceneObjectBindingID
---@return TArray_UObject_
function UMovieSceneSequencePlayer:GetBoundObjects(ObjectBinding) end

---Changes the direction of playback (go in reverse if it was going forward, or vice versa)
function UMovieSceneSequencePlayer:ChangePlaybackDirection() end

