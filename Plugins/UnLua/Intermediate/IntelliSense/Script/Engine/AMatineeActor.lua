---@class AMatineeActor : AActor
---@field public MatineeData UInterpData @The matinee data used by this actor
---@field public MatineeControllerName string @Name of controller node in level script, used to know what function to try and find for events
---@field public PlayRate number @Time multiplier for playback.
---@field public bPlayOnLevelLoad boolean @If true, the matinee will play when the level is loaded.
---@field public bForceStartPos boolean @Lets you force the sequence to always start at ForceStartPosition
---@field public ForceStartPosition number @Time position to always start at if bForceStartPos is set to true.
---@field public bLooping boolean @If sequence should pop back to beginning when finished. Note, if true, will never get Completed/Reversed events - sequence must be explicitly Stopped.
---@field public bRewindOnPlay boolean @If true, sequence will rewind itself back to the start each time the Play input is activated.
---@field public bNoResetOnRewind boolean @If true, when rewinding this interpolation, reset the 'initial positions' of any RelateToInitial movements to the current location. This allows the next loop of movement to proceed from the current locations.
---@field public bRewindIfAlreadyPlaying boolean @Only used if bRewindOnPlay if true. Defines what should happen if the Play input is activated while currently playing. If true, hitting Play while currently playing will pop the position back to the start and begin playback over again. If false, hitting Play while currently playing will do nothing.
---@field public bDisableRadioFilter boolean @If true, disables the realtime radio effect
---@field public bClientSideOnly boolean @Indicates that this interpolation does not affect gameplay. This means that: -it is not replicated via MatineeActor -it is not ticked if no affected Actors are visible -on dedicated servers, it is completely ignored
---@field public bSkipUpdateIfNotVisible boolean @if bClientSideOnly is true, whether this matinee should be completely skipped if none of the affected Actors are visible
---@field public bIsSkippable boolean @Lets you skip the matinee with the CANCELMATINEE exec command. Triggers all events to the end along the way.
---@field public PreferredSplitScreenNum integer @Preferred local viewport number (when split screen is active) the director track should associate with, or zero for 'all'.
---@field public bDisableMovementInput boolean @Disable Input from player during play
---@field public bDisableLookAtInput boolean @Disable LookAt Input from player during play
---@field public bHidePlayer boolean @Hide Player Pawn during play
---@field public bHideHud boolean @Hide HUD during play
---@field public GroupActorInfos TArray<FInterpGroupActorInfo> @
---@field public bShouldShowGore boolean @Cached value that indicates whether or not gore was enabled when the sequence was started
---@field public GroupInst TArray<UInterpGroupInst> @Instance data for interp groups. One for each variable/group combination.
---@field public CameraCuts TArray<FCameraCutInfo> @Contains the camera world-position for each camera cut in the cinematic.
---@field private SpriteComponent UBillboardComponent
---@field public bIsBeingEdited boolean
---@field public bIsScrubbing boolean @Set by the editor when scrubbing data
---@field public bIsPlaying boolean @properties that may change on InterpAction that we need to notify clients about, since the object's properties will not be replicated
---@field public bReversePlayback boolean
---@field public bPaused boolean
---@field public bPendingStop boolean @The below property is deprecated and will be removed in 4.9.
---@field public InterpPosition number
---@field private ReplicationForceIsPlaying integer @Counter to indicate that play count has changed. Used to work around single frames that go from play-stop-play where bIsPlaying won't get replicated.
---@field public OnPlay MulticastDelegate @Event triggered when the matinee is played for whatever reason
---@field public OnStop MulticastDelegate @Event triggered when the matinee is stopped for whatever reason
---@field public OnPause MulticastDelegate @Event triggered when the matinee is paused for whatever reason
local AMatineeActor = {}

---Stops playback at the current position
function AMatineeActor:Stop() end

---Set the position of the interpolation.
---@param NewPosition number
---@param bJump boolean @[opt] 
function AMatineeActor:SetPosition(NewPosition, bJump) end

---Change the looping behaviour of this matinee
---@param bNewLooping boolean
function AMatineeActor:SetLoopingState(bNewLooping) end

---Similar to play, but the playback will go backwards until the beginning of the sequence is reached.
function AMatineeActor:Reverse() end

---Begin playback of the matinee. Only called in game.
---Will then advance Position by (PlayRate * Deltatime) each time the matinee is ticked.
function AMatineeActor:Play() end

---Hold playback at its current position. Calling Pause again will continue playback in its current direction.
function AMatineeActor:Pause() end

---@param GroupName string
---@param bEnable boolean
function AMatineeActor:EnableGroupByName(GroupName, bEnable) end

---Changes the direction of playback (go in reverse if it was going forward, or vice versa)
function AMatineeActor:ChangePlaybackDirection() end

