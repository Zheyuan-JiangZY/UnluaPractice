---struct with all the settings we want in USubsurfaceProfile, separate to make it easer to pass this data around in the engine.
---@class FSubsurfaceProfileStruct
---@field public SurfaceAlbedo FLinearColor @It should match The base color of the corresponding material as much as possible.
---@field public MeanFreePathColor FLinearColor @Controls how far light goes into the subsurface in the Red, Green and Blue channel. It is scaled by Mean Free path distance.
---@field public MeanFreePathDistance number @Subsurface mean free path distance in world/unreal units (cm)
---@field public WorldUnitScale number @Control the scale of world/unreal units (cm)
---@field public bEnableBurley boolean @Effective only when Burley subsurface scattering is enabled in cmd.
---@field public ScatterRadius number @in world/unreal units (cm)
---@field public SubsurfaceColor FLinearColor @Specifies the how much of the diffuse light gets into the material, can be seen as a per-channel mix factor between the original image, and the SSS-filtered image (called "strength" in SeparableSSS, default there: 0.48, 0.41, 0.28)
---@field public FalloffColor FLinearColor @defines the per-channel falloff of the gradients produced by the subsurface scattering events, can be used to fine tune the color of the gradients (called "falloff" in SeparableSSS, default there: 1, 0.37, 0.3)
---@field public BoundaryColorBleed FLinearColor
---@field public ExtinctionScale number
---@field public NormalScale number
---@field public ScatteringDistribution number
---@field public IOR number
---@field public Roughness0 number
---@field public Roughness1 number
---@field public LobeMix number
---@field public TransmissionTintColor FLinearColor @Transmission tint control. It is multiplied on the transmission results. Works only when Burley is enabled.
local FSubsurfaceProfileStruct = {}
