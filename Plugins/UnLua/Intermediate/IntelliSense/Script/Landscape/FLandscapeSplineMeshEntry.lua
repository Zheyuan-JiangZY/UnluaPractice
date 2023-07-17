---@class FLandscapeSplineMeshEntry
---@field public Mesh UStaticMesh @Mesh to use on the spline
---@field public MaterialOverrides TArray<UMaterialInterface> @Overrides mesh's materials
---@field public bCenterH boolean @Whether to automatically center the mesh horizontally on the spline
---@field public CenterAdjust FVector2D @Tweak to center the mesh correctly on the spline
---@field public bScaleToWidth boolean @Whether to scale the mesh to fit the width of the spline
---@field public Scale FVector @Scale of the spline mesh, (Z=Forwards)
---@field public ForwardAxis integer @Chooses the forward axis for the spline mesh orientation
---@field public UpAxis integer @Chooses the up axis for the spline mesh orientation
local FLandscapeSplineMeshEntry = {}
