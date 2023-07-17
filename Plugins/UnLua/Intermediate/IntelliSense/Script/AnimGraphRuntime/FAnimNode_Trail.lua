---Trail Controller
---@class FAnimNode_Trail : FAnimNode_SkeletalControlBase
---@field public TrailBone FBoneReference @Reference to the active bone in the hierarchy to modify.
---@field public ChainLength integer @Number of bones above the active one in the hierarchy to modify. ChainLength should be at least 2.
---@field public ChainBoneAxis integer @Axis of the bones to point along trail.
---@field public bInvertChainBoneAxis boolean @Invert the direction specified in ChainBoneAxis.
---@field public bLimitStretch boolean @Limit the amount that a bone can stretch from its ref-pose length.
---@field public bLimitRotation boolean @Limit the amount that a bone can stretch from its ref-pose length.
---@field public bUsePlanarLimit boolean @Whether to evaluate planar limits
---@field public bActorSpaceFakeVel boolean @Whether 'fake' velocity should be applied in actor or world space.
---@field public bReorientParentToChild boolean @Fix up rotation to face child for the parent
---@field public bEnableDebug boolean @Enable Debug in the PIE. This doesn't work in game
---@field public bShowBaseMotion boolean @Show Base Motion
---@field public bShowTrailLocation boolean @Show Trail Location *
---@field public bShowLimit boolean @Show Planar Limits *
---@field public DebugLifeTime number @Debug Life Time
---@field public MaxDeltaTime number @To avoid hitches causing stretch of trail, you can use MaxDeltaTime to clamp the long delta time. If you want 30 fps to set it to 0.03333f ( = 1/30 ).
---@field public RelaxationSpeedScale number
---@field public TrailRelaxationSpeed FRuntimeFloatCurve @How quickly we 'relax' the bones to their animated positions. Time 0 will map to top root joint, time 1 will map to the bottom joint.
---@field public RelaxationSpeedScaleInputProcessor FInputScaleBiasClamp
---@field public RotationLimits TArray<FRotationLimit>
---@field public RotationOffsets TArray<FVector>
---@field public PlanarLimits TArray<FAnimPhysPlanarLimit> @List of available planar limits for this node
---@field public StretchLimit number @If bLimitStretch is true, this indicates how long a bone can stretch beyond its length in the ref-pose.
---@field public FakeVelocity FVector @'Fake' velocity applied to bones.
---@field public BaseJoint FBoneReference @Base Joint to calculate velocity from. If none, it will use Component's World Transform. .
---@field public LastBoneRotationAnimAlphaBlend number @How to set last bone rotation. It copies from previous joint if alpha is 0.f, or 1.f will use animated pose        * This alpha dictates the blend between parent joint and animated pose, and how much you'd like to use animated pose for
local FAnimNode_Trail = {}