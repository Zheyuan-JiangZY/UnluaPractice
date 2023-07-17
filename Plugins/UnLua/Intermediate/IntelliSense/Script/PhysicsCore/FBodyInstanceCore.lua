---@class FBodyInstanceCore
---@field public bSimulatePhysics boolean @If true, this body will use simulation. If false, will be 'fixed' (ie kinematic) and move where it is told. For a Skeletal Mesh Component, simulating requires a physics asset setup and assigned on the SkeletalMesh asset. For a Static Mesh Component, simulating requires simple collision to be setup on the StaticMesh asset.
---@field public bOverrideMass boolean @If true, mass will not be automatically computed and you must set it directly
---@field public bEnableGravity boolean @If object should have the force of gravity applied
---@field public bAutoWeld boolean @If true and is attached to a parent, the two bodies will be joined into a single rigid body. Physical settings like collision profile and body settings are determined by the root
---@field public bStartAwake boolean @If object should start awake, or if it should initially be sleeping
---@field public bGenerateWakeEvents boolean @Should 'wake/sleep' events fire when this object is woken up or put to sleep by the physics simulation.
---@field public bUpdateMassWhenScaleChanges boolean @If true, it will update mass when scale changes *
local FBodyInstanceCore = {}
