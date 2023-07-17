---@class ULogVisualizerSettings : UObject
---@field public bIgnoreTrivialLogs boolean @Whether to show trivial logs, i.e. the ones with only one entry.
---@field public TrivialLogsThreshold integer @Threshold for trivial Logs
---@field public bStickToRecentData boolean @Whether to show the recent data or not. Property disabled for now.
---@field public bResetDataWithNewSession boolean @Whether to reset current data or not for each new session.
---@field public bShowHistogramLabelsOutside boolean @Whether to show histogram labels inside graph or outside. Property disabled for now.
---@field public DefaultCameraDistance number @Camera distance used to setup location during reaction on log item double click
---@field public bSearchInsideLogs boolean @Whether to search/filter categories or to get text vlogs into account too
---@field public GraphsBackgroundColor FColor @Background color for 2d graphs visualization
---@field public bPresistentFilters boolean @Whether to store all filter settings on exit
---@field public bDrawExtremesOnGraphs boolean @Whether to extreme values on graph (data has to be provided for extreme values)
---@field public bConstrainGraphToLocalMinMax boolean @Graphs will be scaled around local Min/Max values (values being displayed) rather than all historic data
---@field public bUsePlayersOnlyForPause boolean @Whether to use PlayersOnly during Pause or not
---@field public bLogNavOctreeOnStop boolean @Whether to dump Navigation Octree on Stop recording or not
---@field public bForceUniqueLogNames boolean @controls how we generate log names. When set to TRUE there's a lot lower     chance of name conflict, but it's more expensive
---@field protected PresistentFilters FVisualLoggerFiltersData
---@field protected DebugMeshMaterialFakeLight UMaterial @A material used to render debug meshes with kind of flat shading, mostly used by Visual Logger tool.
---@field protected DebugMeshMaterialFakeLightName string @
local ULogVisualizerSettings = {}

