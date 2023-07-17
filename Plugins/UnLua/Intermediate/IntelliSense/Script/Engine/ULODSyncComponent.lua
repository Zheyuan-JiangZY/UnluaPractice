---Implement an Actor component for LOD Sync of different components
---This is a component that allows multiple different components to sync together of their LOD
---This allows to find the highest LOD of all the parts, and sync to that LOD
---@class ULODSyncComponent : UActorComponent
---@field public NumLODs integer @if -1, it's default and it will calculate the max number of LODs from all sub components if not, it is a number of LODs (not the max index of LODs)
---@field public ForcedLOD integer @if -1, it's automatically switching
---@field public ComponentsToSync TArray<FComponentSync> @Array of components whose LOD may drive or be driven by this component. Components that are flagged as 'Drive' are treated as being in priority order, with the last component having highest priority. The highest priority visible component will set the LOD for all other components. If no components are visible, then the highest priority non-visible component will set LOD.
---@field public CustomLODMapping TMap<string, FLODMappingData> @by default, the mapping will be one to one but if you want custom, add here.
---@field private CurrentLOD integer
---@field private CurrentNumLODs integer @num of LODs
---@field private DriveComponents TArray<UPrimitiveComponent> @component that drives the LOD
---@field private SubComponents TArray<UPrimitiveComponent> @all the components that ticks
local ULODSyncComponent = {}

---Returns a string detailing
---@return string
function ULODSyncComponent:GetLODSyncDebugText() end

