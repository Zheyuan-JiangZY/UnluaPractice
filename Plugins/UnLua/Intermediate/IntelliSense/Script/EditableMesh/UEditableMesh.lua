---@class UEditableMesh : UObject
---@field public Adapters TArray<UEditableMeshAdapter> @Adapters registered with this editable mesh
---@field public TextureCoordinateCount integer @The number of texture coordinates stored on the vertices of this mesh
---@field public PendingCompactCounter integer @Counter to determine when we should compact data
---@field public SubdivisionCount integer @How many levels to subdivide this mesh.  Zero will turn off subdivisions
local UEditableMesh = {}

---@param VertexIDs TArray_FVertexID_
---@param OutNewVertexID FVertexID @[out] 
function UEditableMesh:WeldVertices(VertexIDs, OutNewVertexID) end

---@param VertexID FVertexID
---@param bOutWasVertexRemoved boolean @[out] 
---@param OutNewEdgeID FEdgeID @[out] 
function UEditableMesh:TryToRemoveVertex(VertexID, bOutWasVertexRemoved, OutNewEdgeID) end

---@param EdgeID FEdgeID
---@param bOutWasEdgeRemoved boolean @[out] 
---@param OutNewPolygonID FPolygonID @[out] 
function UEditableMesh:TryToRemovePolygonEdge(EdgeID, bOutWasEdgeRemoved, OutNewPolygonID) end

---@param PolygonIDs TArray_FPolygonID_
---@param OutNewTrianglePolygons TArray_FPolygonID_ @[out] 
function UEditableMesh:TriangulatePolygons(PolygonIDs, OutNewTrianglePolygons) end

---@param PolygonIDs TArray_FPolygonID_
---@param TriangleTessellationMode ETriangleTessellationMode
---@param OutNewPolygonIDs TArray_FPolygonID_ @[out] 
function UEditableMesh:TessellatePolygons(PolygonIDs, TriangleTessellationMode, OutNewPolygonIDs) end

---@param MeshModificationType EMeshModificationType
---@param MeshTopologyChange EMeshTopologyChange
function UEditableMesh:StartModification(MeshModificationType, MeshTopologyChange) end

---@param PolygonsToSplit TArray_FPolygonToSplit_
---@param OutNewEdgeIDs TArray_FEdgeID_ @[out] 
function UEditableMesh:SplitPolygons(PolygonsToSplit, OutNewEdgeIDs) end

---@param InPlane FPlane
---@param PolygonIDs1 TArray_FPolygonID_ @[out] 
---@param PolygonIDs2 TArray_FPolygonID_ @[out] 
---@param BoundaryIDs TArray_FEdgeID_ @[out] 
function UEditableMesh:SplitPolygonalMesh(InPlane, PolygonIDs1, PolygonIDs2, BoundaryIDs) end

---@param EdgeID FEdgeID
---@param Splits TArray_number_
---@param OutNewVertexIDs TArray_FVertexID_ @[out] 
function UEditableMesh:SplitEdge(EdgeID, Splits, OutNewVertexIDs) end

---@param VertexIDs TArray_FVertexID_
---@param VerticesNewCornerSharpness TArray_number_
function UEditableMesh:SetVerticesCornerSharpness(VertexIDs, VerticesNewCornerSharpness) end

---@param AttributesForVertices TArray_FAttributesForVertex_
function UEditableMesh:SetVerticesAttributes(AttributesForVertices) end

---@param AttributesForVertexInstances TArray_FAttributesForVertexInstance_
function UEditableMesh:SetVertexInstancesAttributes(AttributesForVertexInstances) end

---@param NumTexCoords integer
function UEditableMesh:SetTextureCoordinateCount(NumTexCoords) end

---@param NewSubdivisionCount integer
function UEditableMesh:SetSubdivisionCount(NewSubdivisionCount) end

---@param VertexAttributesForPolygons TArray_FVertexAttributesForPolygon_
function UEditableMesh:SetPolygonsVertexAttributes(VertexAttributesForPolygons) end

---@param EdgeIDs TArray_FEdgeID_
---@param MaxDotProductForSoftEdge number
function UEditableMesh:SetEdgesHardnessAutomatically(EdgeIDs, MaxDotProductForSoftEdge) end

---@param EdgeIDs TArray_FEdgeID_
---@param EdgesNewIsHard TArray_boolean_
function UEditableMesh:SetEdgesHardness(EdgeIDs, EdgesNewIsHard) end

---@param EdgeIDs TArray_FEdgeID_
---@param EdgesNewCreaseSharpness TArray_number_
function UEditableMesh:SetEdgesCreaseSharpness(EdgeIDs, EdgesNewCreaseSharpness) end

---@param AttributesForEdges TArray_FAttributesForEdge_
function UEditableMesh:SetEdgesAttributes(AttributesForEdges) end

---Sets whether undo is allowed on this mesh
---@param bInAllowUndo boolean
function UEditableMesh:SetAllowUndo(bInAllowUndo) end

---Sets whether this mesh should automatically generate and maintain an octree spatial database.  Certain queries may only be
---supported when the mesh has an octree generated.  The octree is never saved or loaded, and always generated on demand.  This
---feature adds significant overhead to editable mesh initialization and modification, so only use it if you really need to.
---@param bInAllowSpatialDatabase boolean
function UEditableMesh:SetAllowSpatialDatabase(bInAllowSpatialDatabase) end

---Sets whether the mesh can be sporadically compacted as modifications are performed
---@param bInAllowCompact boolean
function UEditableMesh:SetAllowCompact(bInAllowCompact) end

---@param InPlane FPlane
---@param OutPolygons TArray_FPolygonID_ @[out] 
function UEditableMesh:SearchSpatialDatabaseForPolygonsPotentiallyIntersectingPlane(InPlane, OutPolygons) end

---@param LineSegmentStart FVector
---@param LineSegmentEnd FVector
---@param OutPolygons TArray_FPolygonID_ @[out] 
function UEditableMesh:SearchSpatialDatabaseForPolygonsPotentiallyIntersectingLineSegment(LineSegmentStart, LineSegmentEnd, OutPolygons) end

---@param Planes TArray_FPlane_
---@param OutPolygons TArray_FPolygonID_ @[out] 
function UEditableMesh:SearchSpatialDatabaseForPolygonsInVolume(Planes, OutPolygons) end

---@return UEditableMesh
function UEditableMesh:RevertInstance() end

function UEditableMesh:Revert() end

function UEditableMesh:RebuildRenderMesh() end

---@param OutNewPolygonIDs TArray_FPolygonID_ @[out] 
function UEditableMesh:QuadrangulateMesh(OutNewPolygonIDs) end

function UEditableMesh:PropagateInstanceChanges() end

---@param VerticesToMove TArray_FVertexToMove_
function UEditableMesh:MoveVertices(VerticesToMove) end

---@param VertexIndex integer
---@return FVertexID
function UEditableMesh.MakeVertexID(VertexIndex) end

---@param PolygonIndex integer
---@return FPolygonID
function UEditableMesh.MakePolygonID(PolygonIndex) end

---@param PolygonGroupIndex integer
---@return FPolygonGroupID
function UEditableMesh.MakePolygonGroupID(PolygonGroupIndex) end

---@param EdgeIndex integer
---@return FEdgeID
function UEditableMesh.MakeEdgeID(EdgeIndex) end

---Returns whether the given vertex ID is valid
---@param VertexID FVertexID
---@return boolean
function UEditableMesh:IsValidVertex(VertexID) end

---Returns whether the given polygon group ID is valid
---@param PolygonGroupID FPolygonGroupID
---@return boolean
function UEditableMesh:IsValidPolygonGroup(PolygonGroupID) end

---Returns whether the given polygon ID is valid
---@param PolygonID FPolygonID
---@return boolean
function UEditableMesh:IsValidPolygon(PolygonID) end

---Returns whether the given edge ID is valid
---@param EdgeID FEdgeID
---@return boolean
function UEditableMesh:IsValidEdge(EdgeID) end

---
---@return boolean
function UEditableMesh:IsUndoAllowed() end

---
---@return boolean
function UEditableMesh:IsSpatialDatabaseAllowed() end

---@return boolean
function UEditableMesh:IsPreviewingSubdivisions() end

---Returns whether the given vertex ID is orphaned
---@param VertexID FVertexID
---@return boolean
function UEditableMesh:IsOrphanedVertex(VertexID) end

---
---@return boolean
function UEditableMesh:IsCompactAllowed() end

---@return boolean
function UEditableMesh:IsCommittedAsInstance() end

---@return boolean
function UEditableMesh:IsCommitted() end

---
---@return boolean
function UEditableMesh:IsBeingModified() end

---Statics
---@return FVertexID
function UEditableMesh.InvalidVertexID() end

---@return FPolygonID
function UEditableMesh.InvalidPolygonID() end

---@return FPolygonGroupID
function UEditableMesh.InvalidPolygonGroupID() end

---@return FEdgeID
function UEditableMesh.InvalidEdgeID() end

---@param PolygonIDs TArray_FPolygonID_
---@param InsetFixedDistance number
---@param InsetProgressTowardCenter number
---@param Mode EInsetPolygonsMode
---@param OutNewCenterPolygonIDs TArray_FPolygonID_ @[out] 
---@param OutNewSidePolygonIDs TArray_FPolygonID_ @[out] 
function UEditableMesh:InsetPolygons(PolygonIDs, InsetFixedDistance, InsetProgressTowardCenter, Mode, OutNewCenterPolygonIDs, OutNewSidePolygonIDs) end

---@param EdgeID FEdgeID
---@param Splits TArray_number_
---@param OutNewEdgeIDs TArray_FEdgeID_ @[out] 
function UEditableMesh:InsertEdgeLoop(EdgeID, Splits, OutNewEdgeIDs) end

function UEditableMesh:InitializeAdapters() end

---@param VertexID FVertexID
---@param NextVertexID FVertexID
---@param bOutEdgeWindingIsReversed boolean @[out] 
---@return FEdgeID
function UEditableMesh:GetVertexPairEdge(VertexID, NextVertexID, bOutEdgeWindingIsReversed) end

---Returns the vertex ID which the given vertex instance is instancing
---@param VertexInstanceID FVertexInstanceID
---@return FVertexID
function UEditableMesh:GetVertexInstanceVertex(VertexInstanceID) end

---Returns the number of vertex instances in this mesh
---@return integer
function UEditableMesh:GetVertexInstanceCount() end

---@param VertexInstanceID FVertexInstanceID
---@param OutConnectedPolygonIDs TArray_FPolygonID_ @[out] 
function UEditableMesh:GetVertexInstanceConnectedPolygons(VertexInstanceID, OutConnectedPolygonIDs) end

---Returns the number of polygons connected to this vertex instance
---@param VertexInstanceID FVertexInstanceID
---@return integer
function UEditableMesh:GetVertexInstanceConnectedPolygonCount(VertexInstanceID) end

---Returns the indexed polygon connected to this vertex instance
---@param VertexInstanceID FVertexInstanceID
---@param ConnectedPolygonNumber integer
---@return FPolygonID
function UEditableMesh:GetVertexInstanceConnectedPolygon(VertexInstanceID, ConnectedPolygonNumber) end

---Returns the number of vertices in this mesh
---@return integer
function UEditableMesh:GetVertexCount() end

---@param VertexID FVertexID
---@param OutConnectedPolygonIDs TArray_FPolygonID_ @[out] 
function UEditableMesh:GetVertexConnectedPolygons(VertexID, OutConnectedPolygonIDs) end

---@param VertexID FVertexID
---@param OutConnectedEdgeIDs TArray_FEdgeID_ @[out] 
function UEditableMesh:GetVertexConnectedEdges(VertexID, OutConnectedEdgeIDs) end

---Returns the number of edges connected to this vertex
---@param VertexID FVertexID
---@return integer
function UEditableMesh:GetVertexConnectedEdgeCount(VertexID) end

---Returns the requested edge connected to this vertex
---@param VertexID FVertexID
---@param ConnectedEdgeNumber integer
---@return FEdgeID
function UEditableMesh:GetVertexConnectedEdge(VertexID, ConnectedEdgeNumber) end

---@param VertexID FVertexID
---@param OutAdjacentVertexIDs TArray_FVertexID_ @[out] 
function UEditableMesh:GetVertexAdjacentVertices(VertexID, OutAdjacentVertexIDs) end

---@return integer
function UEditableMesh:GetTextureCoordinateCount() end

---@return FSubdivisionLimitData
function UEditableMesh:GetSubdivisionLimitData() end

---@return integer
function UEditableMesh:GetSubdivisionCount() end

---Returns the number of triangles which make up this polygon
---@param PolygonID FPolygonID
---@return integer
function UEditableMesh:GetPolygonTriangulatedTriangleCount(PolygonID) end

---Returns the indexed triangle of the triangulated polygon
---@param PolygonID FPolygonID
---@param PolygonTriangleNumber integer
---@return FTriangleID
function UEditableMesh:GetPolygonTriangulatedTriangle(PolygonID, PolygonTriangleNumber) end

---@param PolygonID FPolygonID
---@param OutPolygonPerimeterVertexIDs TArray_FVertexID_ @[out] 
function UEditableMesh:GetPolygonPerimeterVertices(PolygonID, OutPolygonPerimeterVertexIDs) end

---@param PolygonID FPolygonID
---@param OutPolygonPerimeterVertexInstanceIDs TArray_FVertexInstanceID_ @[out] 
function UEditableMesh:GetPolygonPerimeterVertexInstances(PolygonID, OutPolygonPerimeterVertexInstanceIDs) end

---Returns the indexed vertex instance on this polygon's perimeter
---@param PolygonID FPolygonID
---@param PolygonVertexNumber integer
---@return FVertexInstanceID
function UEditableMesh:GetPolygonPerimeterVertexInstance(PolygonID, PolygonVertexNumber) end

---Returns the number of vertices on this polygon's perimeter
---@param PolygonID FPolygonID
---@return integer
function UEditableMesh:GetPolygonPerimeterVertexCount(PolygonID) end

---Returns the indexed vertex on this polygon's perimeter
---@param PolygonID FPolygonID
---@param PolygonVertexNumber integer
---@return FVertexID
function UEditableMesh:GetPolygonPerimeterVertex(PolygonID, PolygonVertexNumber) end

---@param PolygonID FPolygonID
---@param OutPolygonPerimeterEdgeIDs TArray_FEdgeID_ @[out] 
function UEditableMesh:GetPolygonPerimeterEdges(PolygonID, OutPolygonPerimeterEdgeIDs) end

---@param PolygonID FPolygonID
---@return integer
function UEditableMesh:GetPolygonPerimeterEdgeCount(PolygonID) end

---@param PolygonID FPolygonID
---@param PerimeterEdgeNumber integer
---@param bOutEdgeWindingIsReversedForPolygon boolean @[out] 
---@return FEdgeID
function UEditableMesh:GetPolygonPerimeterEdge(PolygonID, PerimeterEdgeNumber, bOutEdgeWindingIsReversedForPolygon) end

---Returns the given indexed polygon in this polygon group
---@param PolygonGroupID FPolygonGroupID
---@param PolygonNumber integer
---@return FPolygonID
function UEditableMesh:GetPolygonInGroup(PolygonGroupID, PolygonNumber) end

---Returns the number of polygon groups in this mesh
---@return integer
function UEditableMesh:GetPolygonGroupCount() end

---Returns the number of polygons in this polygon group
---@param PolygonGroupID FPolygonGroupID
---@return integer
function UEditableMesh:GetPolygonCountInGroup(PolygonGroupID) end

---Returns the number of polygons in this mesh
---@return integer
function UEditableMesh:GetPolygonCount() end

---@param PolygonID FPolygonID
---@param OutAdjacentPolygons TArray_FPolygonID_ @[out] 
function UEditableMesh:GetPolygonAdjacentPolygons(PolygonID, OutAdjacentPolygons) end

---Returns the polygon group this polygon is assigned to
---@param PolygonID FPolygonID
---@return FPolygonGroupID
function UEditableMesh:GetGroupForPolygon(PolygonID) end

---@return FPolygonGroupID
function UEditableMesh:GetFirstValidPolygonGroup() end

---@param EdgeID FEdgeID
---@param OutEdgeVertexID0 FVertexID @[out] 
---@param OutEdgeVertexID1 FVertexID @[out] 
function UEditableMesh:GetEdgeVertices(EdgeID, OutEdgeVertexID0, OutEdgeVertexID1) end

---Returns the given indexed vertex for this edge. EdgeVertexNumber must be 0 or 1.
---@param EdgeID FEdgeID
---@param EdgeVertexNumber integer
---@return FVertexID
function UEditableMesh:GetEdgeVertex(EdgeID, EdgeVertexNumber) end

---@param VertexID0 FVertexID
---@param VertexID1 FVertexID
---@return FEdgeID
function UEditableMesh:GetEdgeThatConnectsVertices(VertexID0, VertexID1) end

---@param EdgeID FEdgeID
---@param EdgeLoopIDs TArray_FEdgeID_ @[out] 
function UEditableMesh:GetEdgeLoopElements(EdgeID, EdgeLoopIDs) end

---Returns the number of edges in this mesh
---@return integer
function UEditableMesh:GetEdgeCount() end

---@param EdgeID FEdgeID
---@param OutConnectedPolygonIDs TArray_FPolygonID_ @[out] 
function UEditableMesh:GetEdgeConnectedPolygons(EdgeID, OutConnectedPolygonIDs) end

---Returns the number of polygons connected to this edge
---@param EdgeID FEdgeID
---@return integer
function UEditableMesh:GetEdgeConnectedPolygonCount(EdgeID) end

---Returns the indexed polygon connected to this edge
---@param EdgeID FEdgeID
---@param ConnectedPolygonNumber integer
---@return FPolygonID
function UEditableMesh:GetEdgeConnectedPolygon(EdgeID, ConnectedPolygonNumber) end

---@param PolygonIDs TArray_FPolygonID_
function UEditableMesh:GeneratePolygonTangentsAndNormals(PolygonIDs) end

---
---      UFUNCTION( BlueprintCallable, Category="Editable Mesh" ) void SetEdgesVertices( const TArray<FVerticesForEdge>& VerticesForEdges );
---      UFUNCTION( BlueprintCallable, Category="Editable Mesh" ) void InsertPolygonPerimeterVertices( const FPolygonID PolygonID, const int32 InsertBeforeVertexNumber, const TArray<FVertexAndAttributes>& VerticesToInsert );
---      UFUNCTION( BlueprintCallable, Category="Editable Mesh" ) void RemovePolygonPerimeterVertices( const FPolygonID PolygonID, const int32 FirstVertexNumberToRemove, const int32 NumVerticesToRemove, const bool bDeleteOrphanedVertexInstances );
---@param PolygonIDs TArray_FPolygonID_
function UEditableMesh:FlipPolygons(PolygonIDs) end

---@param PolygonID FPolygonID
---@param VertexID FVertexID
---@return integer
function UEditableMesh:FindPolygonPerimeterVertexNumberForVertex(PolygonID, VertexID) end

---@param PolygonID FPolygonID
---@param EdgeVertexID0 FVertexID
---@param EdgeVertexID1 FVertexID
---@return integer
function UEditableMesh:FindPolygonPerimeterEdgeNumberForVertices(PolygonID, EdgeVertexID0, EdgeVertexID1) end

---@param EdgeID FEdgeID
---@param OutEdgeLoopEdgeIDs TArray_FEdgeID_ @[out] 
---@param OutFlippedEdgeIDs TArray_FEdgeID_ @[out] 
---@param OutReversedEdgeIDPathToTake TArray_FEdgeID_ @[out] 
---@param OutPolygonIDsToSplit TArray_FPolygonID_ @[out] 
function UEditableMesh:FindPolygonLoop(EdgeID, OutEdgeLoopEdgeIDs, OutFlippedEdgeIDs, OutReversedEdgeIDPathToTake, OutPolygonIDsToSplit) end

---@param Polygons TArray_FPolygonID_
---@param ExtrudeDistance number
---@param bKeepNeighborsTogether boolean
---@param OutNewExtrudedFrontPolygons TArray_FPolygonID_ @[out] 
function UEditableMesh:ExtrudePolygons(Polygons, ExtrudeDistance, bKeepNeighborsTogether, OutNewExtrudedFrontPolygons) end

---@param VertexIDs TArray_FVertexID_
---@param bOnlyExtendClosestEdge boolean
---@param ReferencePosition FVector
---@param OutNewExtendedVertexIDs TArray_FVertexID_ @[out] 
function UEditableMesh:ExtendVertices(VertexIDs, bOnlyExtendClosestEdge, ReferencePosition, OutNewExtendedVertexIDs) end

---@param EdgeIDs TArray_FEdgeID_
---@param bWeldNeighbors boolean
---@param OutNewExtendedEdgeIDs TArray_FEdgeID_ @[out] 
function UEditableMesh:ExtendEdges(EdgeIDs, bWeldNeighbors, OutNewExtendedEdgeIDs) end

---@param bFromUndo boolean @[opt] 
function UEditableMesh:EndModification(bFromUndo) end

---@param VertexInstanceIDsToDelete TArray_FVertexInstanceID_
---@param bDeleteOrphanedVertices boolean
function UEditableMesh:DeleteVertexInstances(VertexInstanceIDsToDelete, bDeleteOrphanedVertices) end

---@param VertexID FVertexID
---@param bDeleteOrphanedEdges boolean
---@param bDeleteOrphanedVertices boolean
---@param bDeleteOrphanedVertexInstances boolean
---@param bDeleteEmptyPolygonGroups boolean
function UEditableMesh:DeleteVertexAndConnectedEdgesAndPolygons(VertexID, bDeleteOrphanedEdges, bDeleteOrphanedVertices, bDeleteOrphanedVertexInstances, bDeleteEmptyPolygonGroups) end

---@param PolygonIDsToDelete TArray_FPolygonID_
---@param bDeleteOrphanedEdges boolean
---@param bDeleteOrphanedVertices boolean
---@param bDeleteOrphanedVertexInstances boolean
---@param bDeleteEmptyPolygonGroups boolean
function UEditableMesh:DeletePolygons(PolygonIDsToDelete, bDeleteOrphanedEdges, bDeleteOrphanedVertices, bDeleteOrphanedVertexInstances, bDeleteEmptyPolygonGroups) end

---@param PolygonGroupIDs TArray_FPolygonGroupID_
function UEditableMesh:DeletePolygonGroups(PolygonGroupIDs) end

---@param VertexIDsToDelete TArray_FVertexID_
function UEditableMesh:DeleteOrphanVertices(VertexIDsToDelete) end

---@param EdgeIDsToDelete TArray_FEdgeID_
---@param bDeleteOrphanedVertices boolean
function UEditableMesh:DeleteEdges(EdgeIDsToDelete, bDeleteOrphanedVertices) end

---@param EdgeID FEdgeID
---@param bDeleteOrphanedEdges boolean
---@param bDeleteOrphanedVertices boolean
---@param bDeleteOrphanedVertexInstances boolean
---@param bDeleteEmptyPolygonGroups boolean
function UEditableMesh:DeleteEdgeAndConnectedPolygons(EdgeID, bDeleteOrphanedEdges, bDeleteOrphanedVertices, bDeleteOrphanedVertexInstances, bDeleteEmptyPolygonGroups) end

---@param VerticesToCreate TArray_FVertexToCreate_
---@param OutNewVertexIDs TArray_FVertexID_ @[out] 
function UEditableMesh:CreateVertices(VerticesToCreate, OutNewVertexIDs) end

---@param VertexInstancesToCreate TArray_FVertexInstanceToCreate_
---@param OutNewVertexInstanceIDs TArray_FVertexInstanceID_ @[out] 
function UEditableMesh:CreateVertexInstances(VertexInstancesToCreate, OutNewVertexInstanceIDs) end

---@param PolygonsToCreate TArray_FPolygonToCreate_
---@param OutNewPolygonIDs TArray_FPolygonID_ @[out] 
---@param OutNewEdgeIDs TArray_FEdgeID_ @[out] 
function UEditableMesh:CreatePolygons(PolygonsToCreate, OutNewPolygonIDs, OutNewEdgeIDs) end

---@param PolygonGroupsToCreate TArray_FPolygonGroupToCreate_
---@param OutNewPolygonGroupIDs TArray_FPolygonGroupID_ @[out] 
function UEditableMesh:CreatePolygonGroups(PolygonGroupsToCreate, OutNewPolygonGroupIDs) end

---@param PolygonID FPolygonID
---@param OutNewEdgeIDs TArray_FEdgeID_ @[out] 
function UEditableMesh:CreateMissingPolygonPerimeterEdges(PolygonID, OutNewEdgeIDs) end

---@param NumVerticesToCreate integer
---@param OutNewVertexIDs TArray_FVertexID_ @[out] 
function UEditableMesh:CreateEmptyVertexRange(NumVerticesToCreate, OutNewVertexIDs) end

---@param EdgesToCreate TArray_FEdgeToCreate_
---@param OutNewEdgeIDs TArray_FEdgeID_ @[out] 
function UEditableMesh:CreateEdges(EdgesToCreate, OutNewEdgeIDs) end

---@param PolygonIDs TArray_FPolygonID_
---@param OutSharedEdgeIDs TArray_FEdgeID_ @[out] 
function UEditableMesh:ComputePolygonsSharedEdges(PolygonIDs, OutSharedEdgeIDs) end

---@param PolygonID FPolygonID
---@return FPlane
function UEditableMesh:ComputePolygonPlane(PolygonID) end

---@param PolygonID FPolygonID
---@return FVector
function UEditableMesh:ComputePolygonNormal(PolygonID) end

---@param PolygonID FPolygonID
---@return FVector
function UEditableMesh:ComputePolygonCenter(PolygonID) end

---@return FBoxSphereBounds
function UEditableMesh:ComputeBoundingBoxAndSphere() end

---@return FBox
function UEditableMesh:ComputeBoundingBox() end

---@param ComponentToInstanceTo UPrimitiveComponent
---@return UEditableMesh
function UEditableMesh:CommitInstance(ComponentToInstanceTo) end

function UEditableMesh:Commit() end

---@param VertexInstancesForPolygons TArray_FChangeVertexInstancesForPolygon_
function UEditableMesh:ChangePolygonsVertexInstances(VertexInstancesForPolygons) end

---@param PolygonIDs TArray_FPolygonID_
---@param BevelFixedDistance number
---@param BevelProgressTowardCenter number
---@param OutNewCenterPolygonIDs TArray_FPolygonID_ @[out] 
---@param OutNewSidePolygonIDs TArray_FPolygonID_ @[out] 
function UEditableMesh:BevelPolygons(PolygonIDs, BevelFixedDistance, BevelProgressTowardCenter, OutNewCenterPolygonIDs, OutNewSidePolygonIDs) end

---@param PolygonGroupForPolygons TArray_FPolygonGroupForPolygon_
---@param bDeleteOrphanedPolygonGroups boolean
function UEditableMesh:AssignPolygonsToPolygonGroups(PolygonGroupForPolygons, bDeleteOrphanedPolygonGroups) end

---
---@return boolean
function UEditableMesh:AnyChangesToUndo() end

