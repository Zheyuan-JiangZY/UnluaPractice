---ShapeComponent is a PrimitiveComponent that is represented by a simple geometrical shape (sphere, capsule, box, etc).
---@class UShapeComponent : UPrimitiveComponent
---@field public ShapeBodySetup UBodySetup @Description of collision
---@field public AreaClass TSubclassOf<UNavAreaBase> @Navigation area type (empty = default obstacle)
---@field public ShapeColor FColor @Color used to draw the shape.
---@field public bDrawOnlyIfSelected boolean @Only show this component if the actor is selected
---@field public bShouldCollideWhenPlacing boolean @If true it allows Collision when placing even if collision is not enabled
---@field public bDynamicObstacle boolean @If set, shape will be exported for navigation as dynamic modifier instead of using regular collision data
local UShapeComponent = {}

