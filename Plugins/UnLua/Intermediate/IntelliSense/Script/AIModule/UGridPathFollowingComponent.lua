---Path following augmented with local navigation grids
---Keeps track of nearby grids and use them instead of navigation path when agent is inside.
---Once outside grid, regular path following is resumed.
---This allows creating dynamic navigation obstacles with fully static navigation (e.g. static navmesh),
---as long as they are minor modifications for path. Not recommended for blocking off entire corridors.
---Does not replace proper avoidance for dynamic obstacles!
---@class UGridPathFollowingComponent : UPathFollowingComponent
---@field protected GridManager UNavLocalGridManager
local UGridPathFollowingComponent = {}

