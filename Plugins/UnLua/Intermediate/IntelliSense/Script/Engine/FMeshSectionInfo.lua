---Per-section settings.
---@class FMeshSectionInfo
---@field public MaterialIndex integer @Index in to the Materials array on UStaticMesh.
---@field public bEnableCollision boolean @If true, collision is enabled for this section.
---@field public bCastShadow boolean @If true, this section will cast shadows.
---@field public bVisibleInRayTracing boolean @If true, this section will be visible in ray tracing Geometry.
---@field public bForceOpaque boolean @If true, this section will always considered opaque in ray tracing Geometry.
local FMeshSectionInfo = {}
