---Allows applying selected AreaClass to navmesh, using Volume's shape
---@class ANavModifierVolume : AVolume
---@field protected AreaClass TSubclassOf<UNavArea>
---@field protected bMaskFillCollisionUnderneathForNavmesh boolean @Experimental: if set, the 2D space occupied by the volume box will ignore FillCollisionUnderneathForNavmesh
local ANavModifierVolume = {}

