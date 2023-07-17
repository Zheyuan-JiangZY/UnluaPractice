---A Spline Mesh Component is a derivation of a Static Mesh Component which can be deformed using a spline. Only a start and end position (and tangent) can be specified.
---@class USplineMeshComponent : UStaticMeshComponent
---@field public SplineParams FSplineMeshParams @Spline that is used to deform mesh
---@field public SplineUpDir FVector @Axis (in component space) that is used to determine X axis for co-ordinates along spline
---@field public SplineBoundaryMin number @Minimum coordinate along the spline forward axis which corresponds to start of spline. If set to 0.0, will use bounding box to determine bounds
---@field public CachedMeshBodySetupGuid FGuid @Used to automatically trigger rebuild of collision data
---@field public BodySetup UBodySetup @Physics data.
---@field public SplineBoundaryMax number @Maximum coordinate along the spline forward axis which corresponds to end of spline. If set to 0.0, will use bounding box to determine bounds
---@field public bAllowSplineEditingPerInstance boolean @If true, spline keys may be edited per instance in the level viewport. Otherwise, the spline should be initialized in the construction script.
---@field public bSmoothInterpRollScale boolean @If true, will use smooth interpolation (ease in/out) for Scale, Roll, and Offset along this section of spline. If false, uses linear
---@field public bMeshDirty boolean @Indicates that the mesh needs updating
---@field public ForwardAxis integer @Chooses the forward axis for the spline mesh orientation
---@field public VirtualTextureMainPassMaxDrawDistance number @The max draw distance to use in the main pass when also rendering to a runtime virtual texture. This is only exposed to the user through the same setting on ULandscapeSplineSegment.
---@field public bSelected boolean
local USplineMeshComponent = {}

---Update the collision and render state on the spline mesh following changes to its geometry
function USplineMeshComponent:UpdateMesh() end

---Set the start tangent vector of spline in local space
---@param StartTangent FVector
---@param bUpdateMesh boolean @[opt] 
function USplineMeshComponent:SetStartTangent(StartTangent, bUpdateMesh) end

---Set the start scaling
---@param StartScale FVector2D @[opt] 
---@param bUpdateMesh boolean @[opt] 
function USplineMeshComponent:SetStartScale(StartScale, bUpdateMesh) end

---Set the start roll
---@param StartRoll number
---@param bUpdateMesh boolean @[opt] 
function USplineMeshComponent:SetStartRoll(StartRoll, bUpdateMesh) end

---Set the start position of spline in local space
---@param StartPos FVector
---@param bUpdateMesh boolean @[opt] 
function USplineMeshComponent:SetStartPosition(StartPos, bUpdateMesh) end

---Set the start offset
---@param StartOffset FVector2D
---@param bUpdateMesh boolean @[opt] 
function USplineMeshComponent:SetStartOffset(StartOffset, bUpdateMesh) end

---Set the start and end, position and tangent, all in local space
---@param StartPos FVector
---@param StartTangent FVector
---@param EndPos FVector
---@param EndTangent FVector
---@param bUpdateMesh boolean @[opt] 
function USplineMeshComponent:SetStartAndEnd(StartPos, StartTangent, EndPos, EndTangent, bUpdateMesh) end

---Set the spline up direction
---@param InSplineUpDir FVector
---@param bUpdateMesh boolean @[opt] 
function USplineMeshComponent:SetSplineUpDir(InSplineUpDir, bUpdateMesh) end

---Set the forward axis
---@param InForwardAxis integer
---@param bUpdateMesh boolean @[opt] 
function USplineMeshComponent:SetForwardAxis(InForwardAxis, bUpdateMesh) end

---Set the end tangent vector of spline in local space
---@param EndTangent FVector
---@param bUpdateMesh boolean @[opt] 
function USplineMeshComponent:SetEndTangent(EndTangent, bUpdateMesh) end

---Set the end scaling
---@param EndScale FVector2D @[opt] 
---@param bUpdateMesh boolean @[opt] 
function USplineMeshComponent:SetEndScale(EndScale, bUpdateMesh) end

---Set the end roll
---@param EndRoll number
---@param bUpdateMesh boolean @[opt] 
function USplineMeshComponent:SetEndRoll(EndRoll, bUpdateMesh) end

---Set the end position of spline in local space
---@param EndPos FVector
---@param bUpdateMesh boolean @[opt] 
function USplineMeshComponent:SetEndPosition(EndPos, bUpdateMesh) end

---Set the end offset
---@param EndOffset FVector2D
---@param bUpdateMesh boolean @[opt] 
function USplineMeshComponent:SetEndOffset(EndOffset, bUpdateMesh) end

---Set the boundary min
---@param InBoundaryMin number
---@param bUpdateMesh boolean @[opt] 
function USplineMeshComponent:SetBoundaryMin(InBoundaryMin, bUpdateMesh) end

---Set the boundary max
---@param InBoundaryMax number
---@param bUpdateMesh boolean @[opt] 
function USplineMeshComponent:SetBoundaryMax(InBoundaryMax, bUpdateMesh) end

---Get the start tangent vector of spline in local space
---@return FVector
function USplineMeshComponent:GetStartTangent() end

---Get the start scaling
---@return FVector2D
function USplineMeshComponent:GetStartScale() end

---Get the start roll
---@return number
function USplineMeshComponent:GetStartRoll() end

---Get the start position of spline in local space
---@return FVector
function USplineMeshComponent:GetStartPosition() end

---Get the start offset
---@return FVector2D
function USplineMeshComponent:GetStartOffset() end

---Get the spline up direction
---@return FVector
function USplineMeshComponent:GetSplineUpDir() end

---Get the forward axis
---@return integer
function USplineMeshComponent:GetForwardAxis() end

---Get the end tangent vector of spline in local space
---@return FVector
function USplineMeshComponent:GetEndTangent() end

---Get the end scaling
---@return FVector2D
function USplineMeshComponent:GetEndScale() end

---Get the end roll
---@return number
function USplineMeshComponent:GetEndRoll() end

---Get the end position of spline in local space
---@return FVector
function USplineMeshComponent:GetEndPosition() end

---Get the end offset
---@return FVector2D
function USplineMeshComponent:GetEndOffset() end

---Get the boundary min
---@return number
function USplineMeshComponent:GetBoundaryMin() end

---Get the boundary max
---@return number
function USplineMeshComponent:GetBoundaryMax() end

