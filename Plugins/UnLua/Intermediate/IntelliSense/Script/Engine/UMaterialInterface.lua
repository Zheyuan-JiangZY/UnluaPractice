---@class UMaterialInterface : UObject
---@field public SubsurfaceProfile USubsurfaceProfile @SubsurfaceProfile, for Screen Space Subsurface Scattering
---@field protected LightmassSettings FLightmassMaterialInterfaceSettings @The Lightmass settings for this object.
---@field protected bTextureStreamingDataSorted boolean @Because of redirector, the texture names need to be resorted at each load in case they changed.
---@field protected TextureStreamingDataVersion integer
---@field protected TextureStreamingData TArray<FMaterialTextureInfo> @Data used by the texture streaming to know how each texture is sampled by the material. Sorted by names for quick access.
---@field protected AssetUserData TArray<UAssetUserData> @Array of user data stored with the asset
---@field public TextureStreamingDataMissingEntries TArray<FMaterialTextureInfo> @List of all used but missing texture indices in TextureStreamingData. Used for visualization / debugging only.
---@field public PreviewMesh FSoftObjectPath @The mesh used by the material editor to preview the material.
---@field public ThumbnailInfo UThumbnailInfo @Information for thumbnail rendering
---@field public LayerParameterExpansion TMap<string, boolean>
---@field public ParameterOverviewExpansion TMap<string, boolean>
---@field public AssetImportData UAssetImportData @Importing data and options used for this material
---@field private LightingGuid FGuid @Unique ID for this material, used for caching during distributed lighting
local UMaterialInterface = {}

---Force the streaming system to disregard the normal logic for the specified duration and
---instead always load all mip-levels for all textures used by this material.
---@param OverrideForceMiplevelsToBeResident boolean
---@param bForceMiplevelsToBeResidentValue boolean
---@param ForceDuration number
---@param CinematicTextureGroups integer @[opt] 
---@param bFastResponse boolean @[opt] 
function UMaterialInterface:SetForceMipLevelsToBeResident(OverrideForceMiplevelsToBeResident, bForceMiplevelsToBeResidentValue, ForceDuration, CinematicTextureGroups, bFastResponse) end

---Return a pointer to the physical material mask used by this material instance.
---@return UPhysicalMaterialMask
function UMaterialInterface:GetPhysicalMaterialMask() end

---Return a pointer to the physical material from mask map at given index.
---@param Index integer
---@return UPhysicalMaterial
function UMaterialInterface:GetPhysicalMaterialFromMap(Index) end

---Return a pointer to the physical material used by this material instance.
---@return UPhysicalMaterial
function UMaterialInterface:GetPhysicalMaterial() end

---@param Association integer
---@param ParameterName string
---@param LayerFunction UMaterialFunctionInterface
---@return FMaterialParameterInfo
function UMaterialInterface:GetParameterInfo(Association, ParameterName, LayerFunction) end

---Walks up parent chain and finds the base Material that this is an instance of. Just calls the virtual GetMaterial()
---@return UMaterial
function UMaterialInterface:GetBaseMaterial() end

