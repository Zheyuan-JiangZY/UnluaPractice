---Struct to hold information about the "base" object the character is standing on.
---@class FBasedMovementInfo
---@field public MovementBase UPrimitiveComponent @Component we are based on
---@field public BoneName string @Bone name on component, for skeletal meshes. NAME_None if not a skeletal mesh or if bone is invalid.
---@field public Location FVector_NetQuantize100 @Location relative to MovementBase. Only valid if HasRelativeLocation() is true.
---@field public Rotation FRotator @Rotation: relative to MovementBase if HasRelativeRotation() is true, absolute otherwise.
---@field public bServerHasBaseComponent boolean @Whether the server says that there is a base. On clients, the component may not have resolved yet.
---@field public bRelativeRotation boolean @Whether rotation is relative to the base or absolute. It can only be relative if location is also relative.
---@field public bServerHasVelocity boolean @Whether there is a velocity on the server. Used for forcing replication when velocity goes to zero.
local FBasedMovementInfo = {}
