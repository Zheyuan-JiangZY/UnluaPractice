---Component that allows you to specify custom triangle mesh geometry
---@class UCustomMeshComponent : UMeshComponent
local UCustomMeshComponent = {}

---Set the geometry to use on this triangle mesh
---@param Triangles TArray_FCustomMeshTriangle_
---@return boolean
function UCustomMeshComponent:SetCustomMeshTriangles(Triangles) end

---Removes all geometry from this triangle mesh.  Does not deallocate memory, allowing new geometry to reuse the existing allocation.
function UCustomMeshComponent:ClearCustomMeshTriangles() end

---Add to the geometry to use on this triangle mesh.  This may cause an allocation.  Use SetCustomMeshTriangles() instead when possible to reduce allocations.
---@param Triangles TArray_FCustomMeshTriangle_
function UCustomMeshComponent:AddCustomMeshTriangles(Triangles) end

