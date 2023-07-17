---@class UAnimGraphNode_AnimDynamics : UAnimGraphNode_SkeletalControlBase
---@field private Node FAnimNode_AnimDynamics
---@field private bPreviewLive boolean @Preview the live physics object on the mesh
---@field private bShowLinearLimits boolean @Show linear (prismatic) limits in the viewport
---@field private bShowAngularLimits boolean @Show angular limit ranges in the viewport
---@field private bShowPlanarLimit boolean @Show planar limit info (actual plane, plane normal) in the viewport
---@field private bShowSphericalLimit boolean @Show spherical limits in the viewport (preview live only)
---@field private bShowCollisionSpheres boolean @If planar limits are enabled and the collision mode isn't CoM, draw sphere collision sizes
---@field private LastPreviewComponent USkeletalMeshComponent
local UAnimGraphNode_AnimDynamics = {}

