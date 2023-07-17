---Because of the way ARPlanesTracker works, assuming the current ARSession
---        configuration contains the flag 'bGenerateMeshDataFromTrackedGeometry',
---        the ARPlanesTracker requires that there exists a UMaterialInterface
---        which is compatible with the mesh data provided to UMRMeshComponents
---        which are subsequently attached to the AROrigin.  This is because for
---        some reason, the default surface material obtained via
---        UMaterial::GetDefaultMaterial(MD_Surface) does not correctly render
---        vertex data provided to the UMRMeshComponents, even if an exact copy
---        of the WorldGridMaterial itself does!
---For this reason, the LuminAROrigin will store a compatible material which
---        is loaded via standard UE4 constructor interfaces.
---@class ALuminAROrigin : AAROriginActor
---@field private MRMeshComponent UMRMeshComponent
---@field private PlaneSurfaceMaterial UMaterialInterface
---@field private WireframeMaterial UMaterialInterface
local ALuminAROrigin = {}

