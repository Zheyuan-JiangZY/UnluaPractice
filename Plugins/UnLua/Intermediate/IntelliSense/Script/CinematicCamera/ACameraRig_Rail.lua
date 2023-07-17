---@class ACameraRig_Rail : AActor
---@field public CurrentPositionOnRail number @Defines current position of the mount point along the rail, in terms of normalized distance from the beginning of the rail.
---@field public bLockOrientationToRail boolean @Determines whether the orientation of the mount should be in the direction of the rail.
---@field public bShowRailVisualization boolean @Determines whether or not to show the rail mesh preview.
---@field public PreviewMeshScale number @Determines the scale of the rail mesh preview
---@field private TransformComponent USceneComponent @Root component to give the whole actor a transform.
---@field private RailSplineComponent USplineComponent @Spline component to define the rail path.
---@field private RailCameraMount USceneComponent @Component to define the attach point for cameras. Moves along the rail.
---@field private PreviewMesh_Rail USplineMeshComponent @Preview meshes for visualization
---@field private PreviewRailMeshSegments TArray<USplineMeshComponent>
---@field private PreviewRailStaticMesh UStaticMesh
---@field private PreviewMesh_Mount UStaticMeshComponent
local ACameraRig_Rail = {}

---Returns the spline component that defines the rail path
---@return USplineComponent
function ACameraRig_Rail:GetRailSplineComponent() end

