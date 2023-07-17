---Represents a plane returned from the ML-API.
---@class FMagicLeapPlaneResult
---@field public PlanePosition FVector @Position of the center of the plane in world coordinates.
---@field public PlaneOrientation FRotator @Orientation of the plane.
---@field public ContentOrientation FRotator @Orientation of the content with its up-vector orthogonal to the plane.
---@field public PlaneDimensions FVector2D @Width and height of the plane (in Unreal units).
---@field public PlaneFlags TArray<EMagicLeapPlaneQueryFlags> @The flags which describe this plane. TODO: Should be a TSet but that is misbehaving in the editor.
---@field public ID FGuid @ID of the plane result. This ID is persistent across queries
---@field public InnerID FGuid @ID of the inner plane. This ID is persistent across queries
local FMagicLeapPlaneResult = {}
