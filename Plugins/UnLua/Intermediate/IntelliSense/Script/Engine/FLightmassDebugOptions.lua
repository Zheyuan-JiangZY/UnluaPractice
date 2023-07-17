---Debug options for Lightmass
---@class FLightmassDebugOptions
---@field public bDebugMode boolean @If false, UnrealLightmass.exe is launched automatically (default) If true, it must be launched manually (e.g. through a debugger) with the -debug command line parameter.
---@field public bStatsEnabled boolean @If true, all participating Lightmass agents will report back detailed stats to the log.
---@field public bGatherBSPSurfacesAcrossComponents boolean @If true, BSP surfaces split across model components are joined into 1 mapping
---@field public CoplanarTolerance number @The tolerance level used when gathering BSP surfaces.
---@field public bUseImmediateImport boolean @If true, Lightmass will import mappings immediately as they complete. It will not process them, however.
---@field public bImmediateProcessMappings boolean @If true, Lightmass will process appropriate mappings as they are imported. NOTE: Requires ImmediateMode be enabled to actually work.
---@field public bSortMappings boolean @If true, Lightmass will sort mappings by texel cost.
---@field public bDumpBinaryFiles boolean @If true, the generate coefficients will be dumped to binary files.
---@field public bDebugMaterials boolean @If true, Lightmass will write out BMPs for each generated material property sample to <GAME>\ScreenShots\Materials.
---@field public bPadMappings boolean @If true, Lightmass will pad the calculated mappings to reduce/eliminate seams.
---@field public bDebugPaddings boolean @If true, will fill padding of mappings with a color rather than the sampled edges. Means nothing if bPadMappings is not enabled...
---@field public bOnlyCalcDebugTexelMappings boolean @If true, only the mapping containing a debug texel will be calculated, all others will be set to white
---@field public bUseRandomColors boolean @If true, color lightmaps a random color
---@field public bColorBordersGreen boolean @If true, a green border will be placed around the edges of mappings
---@field public bColorByExecutionTime boolean @If true, Lightmass will overwrite lightmap data with a shade of red relating to how long it took to calculate the mapping (Red = Time / ExecutionTimeDivisor)
---@field public ExecutionTimeDivisor number @The amount of time that will be count as full red when bColorByExecutionTime is enabled
local FLightmassDebugOptions = {}
