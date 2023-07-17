---* Information about relationships between a triggered boundary (EBoundaryType::Boundary_Outer or
---* EBoundaryType::Boundary_PlayArea) and a device or point in the world.
---* All dimensions, points, and vectors are returned in Unreal world coordinate space.
---@class FGuardianTestResult
---@field public IsTriggering boolean @Is there a triggering interaction between the device/point and specified boundary?
---@field public DeviceType ETrackedDeviceType @Device type triggering boundary (ETrackedDeviceType::None if BoundaryTestResult corresponds to a point rather than a device)
---@field public ClosestDistance number @Distance of device/point to surface of boundary specified by BoundaryType
---@field public ClosestPoint FVector @Closest point on surface corresponding to specified boundary
---@field public ClosestPointNormal FVector @Normal of closest point
local FGuardianTestResult = {}
