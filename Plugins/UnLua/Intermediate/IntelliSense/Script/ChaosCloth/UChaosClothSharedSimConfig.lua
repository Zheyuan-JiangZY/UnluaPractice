---Chaos config settings shared between all instances of a skeletal mesh.
---Unlike UChaosClothConfig, these settings contain common cloth simulation
---parameters that cannot change between the various clothing assets assigned
---to a specific skeletal mesh. @@seealso UChaosClothConfig.
---@class UChaosClothSharedSimConfig : UClothSharedConfigCommon
---@field public IterationCount integer @The number of solver iterations. This will increase the stiffness of all constraints but will increase the CPU cost.
---@field public SubdivisionCount integer @The number of solver substeps. This will increase the precision of the collision inputs and help with constraint resolutions but will increase the CPU cost.
---@field public bUseLocalSpaceSimulation boolean @Enable local space simulation to help with jitter due to floating point precision errors if the character is far away from the world origin
---@field public bUseXPBDConstraints boolean @Enable the XPBD constraints that resolve stiffness independently from the number of iterations Experimental, this feature might be removed without warning, not for production use
local UChaosClothSharedSimConfig = {}

