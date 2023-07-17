---Track containing data for moving an actor around over time.
---@class UInterpTrackMove : UInterpTrack
---@field public PosTrack FInterpCurveVector @Actual position keyframe data.
---@field public EulerTrack FInterpCurveVector @Actual rotation keyframe data, stored as Euler angles in degrees, for easy editing on curve.
---@field public LookupTrack FInterpLookupTrack
---@field public LookAtGroupName string @When using IMR_LookAtGroup, specifies the Group which this track should always point its actor at.
---@field public LinCurveTension number @Controls the tightness of the curve for the translation path.
---@field public AngCurveTension number @Controls the tightness of the curve for the rotation path.
---@field public bUseQuatInterpolation boolean @Use a Quaternion linear interpolation between keys. This is robust and will find the 'shortest' distance between keys, but does not support ease in/out.
---@field public bShowArrowAtKeys boolean @In the editor, show a small arrow at each keyframe indicating the rotation at that key.
---@field public bDisableMovement boolean @Disable previewing of this track - will always position  AActor  at Time=0.0. Useful when keyframing an object relative to this group.
---@field public bShowTranslationOnCurveEd boolean @If false, when this track is displayed on the Curve Editor in Matinee, do not show the Translation tracks.
---@field public bShowRotationOnCurveEd boolean @If false, when this track is displayed on the Curve Editor in Matinee, do not show the Rotation tracks.
---@field public bHide3DTrack boolean @If true, 3D representation of this track in the 3D viewport is disabled.
---@field public RotMode integer
local UInterpTrackMove = {}

