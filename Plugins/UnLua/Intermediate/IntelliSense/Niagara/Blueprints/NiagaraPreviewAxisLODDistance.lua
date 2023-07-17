---@class NiagaraPreviewAxisLODDistance_C : UNiagaraPreviewAxis
---@field public UberGraphFrame FPointerToUberGraphFrame
---@field public Distances TArray<number>
---@field public bApplyRealDistances boolean
local NiagaraPreviewAxisLODDistance_C = {}

---Applies this axis for the preview at PreviewIndex on this axis.
---@param PreviewComponent UNiagaraComponent
---@param PreviewIndex integer
---@param bIsXAxis boolean
---@param OutLabelText string @[out] 
function NiagaraPreviewAxisLODDistance_C:ApplyToPreview(PreviewComponent, PreviewIndex, bIsXAxis, OutLabelText) end

---Returns the number of previews for this axis.
---@return integer
function NiagaraPreviewAxisLODDistance_C:Num() end

