---Component that allows you to specify custom triangle mesh geometry
---@class UOculusMR_PlaneMeshComponent : UMeshComponent
local UOculusMR_PlaneMeshComponent = {}

---Set the geometry to use on this triangle mesh
---@param Triangles TArray_FOculusMR_PlaneMeshTriangle_
---@return boolean
function UOculusMR_PlaneMeshComponent:SetCustomMeshTriangles(Triangles) end

---Removes all geometry from this triangle mesh.  Does not deallocate memory, allowing new geometry to reuse the existing allocation.
function UOculusMR_PlaneMeshComponent:ClearCustomMeshTriangles() end

---Add to the geometry to use on this triangle mesh.  This may cause an allocation.  Use SetCustomMeshTriangles() instead when possible to reduce allocations.
---@param Triangles TArray_FOculusMR_PlaneMeshTriangle_
function UOculusMR_PlaneMeshComponent:AddCustomMeshTriangles(Triangles) end

