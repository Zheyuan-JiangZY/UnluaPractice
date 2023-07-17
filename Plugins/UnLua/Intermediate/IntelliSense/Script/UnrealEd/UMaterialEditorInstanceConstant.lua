---@class UMaterialEditorInstanceConstant : UObject
---@field public PhysMaterial UPhysicalMaterial @Physical material to use for this graphics material. Used for sounds, effects etc.
---@field public Parent UMaterialInterface @since the Parent may point across levels and the property editor needs to import this text, it must be marked lazy so it doesn't set itself to NULL in FindImportedObject
---@field public ParameterGroups TArray<FEditorParameterGroup>
---@field public RefractionDepthBias number @This is the refraction depth bias, larger values offset distortion to prevent closer objects from rendering into the distorted surface at acute viewing angles but increases the disconnect between surface and where the refraction starts.
---@field public SubsurfaceProfile USubsurfaceProfile @SubsurfaceProfile, for Screen Space Subsurface Scattering
---@field public bOverrideSubsurfaceProfile boolean @Defines if SubsurfaceProfile from tis instance is used or it uses the parent one.
---@field public bIsFunctionPreviewMaterial boolean
---@field public bIsFunctionInstanceDirty boolean
---@field public BasePropertyOverrides FMaterialInstanceBasePropertyOverrides
---@field public SourceInstance UMaterialInstanceConstant
---@field public SourceFunction UMaterialFunctionInstance
---@field public VisibleExpressions TArray<FMaterialParameterInfo>
---@field public LightmassSettings FLightmassParameterizedMaterialSettings @The Lightmass override settings for this object.
---@field public bUseOldStyleMICEditorGroups boolean @Should we use old style typed arrays for unassigned parameters instead of a None group (new style)?
---@field public StoredLayerPreviews TArray<UMaterialInstanceConstant>
---@field public StoredBlendPreviews TArray<UMaterialInstanceConstant>
local UMaterialEditorInstanceConstant = {}

