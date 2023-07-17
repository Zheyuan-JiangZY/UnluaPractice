---@class UMagicLeapMeshBlockSelectorInterface : UInterface
local UMagicLeapMeshBlockSelectorInterface = {}

---Given the new mesh information, select the blocks you want to keep and the level of detail for each of those blocks.
---@param NewMeshInfo FMagicLeapTrackingMeshInfo
---@param RequestedMesh TArray_FMagicLeapMeshBlockRequest_ @[out] 
function UMagicLeapMeshBlockSelectorInterface:SelectMeshBlocks(NewMeshInfo, RequestedMesh) end

