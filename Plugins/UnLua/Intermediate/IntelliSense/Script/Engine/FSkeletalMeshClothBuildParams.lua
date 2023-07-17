---Struct holding parameters needed when creating a new clothing asset or sub asset (LOD)
---@class FSkeletalMeshClothBuildParams
---@field public TargetAsset TWeakObjectPtr<UClothingAssetBase> @Target asset when importing LODs
---@field public TargetLod integer @Target LOD to import to when importing LODs
---@field public bRemapParameters boolean @If reimporting, this will map the old LOD parameters to the new LOD mesh. If adding a new LOD this will map the parameters from the preceeding LOD.
---@field public AssetName string @Name of the clothing asset
---@field public LodIndex integer @LOD to extract the section from
---@field public SourceSection integer @Section within the specified LOD to extract
---@field public bRemoveFromMesh boolean @Whether or not to leave this section behind (if driving a mesh with itself). Enable this if driving a high poly mesh with a low poly
---@field public PhysicsAsset TSoftObjectPtr<UPhysicsAsset> @Physics asset to extract collisions from, note this will only extract spheres and Sphyls, as that is what the simulation supports.
local FSkeletalMeshClothBuildParams = {}
