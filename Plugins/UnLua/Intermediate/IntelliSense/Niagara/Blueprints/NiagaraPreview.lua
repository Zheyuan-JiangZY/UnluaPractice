---@class NiagaraPreview_C : ANiagaraPreviewBase
---@field public UberGraphFrame FPointerToUberGraphFrame
---@field public YLabel UTextRenderComponent
---@field public XLabel UTextRenderComponent
---@field public TextBoard UStaticMeshComponent
---@field public Effect UNiagaraComponent
---@field public Plinth UStaticMeshComponent
---@field public Scene USceneComponent
---@field public NewVar_0 UTextRenderComponent
local NiagaraPreview_C = {}

---Event when play begins for this actor.
function NiagaraPreview_C:ReceiveBeginPlay() end

---AActor Interface End
---@param InSystem UNiagaraSystem
function NiagaraPreview_C:SetSystem(InSystem) end

---@param InXAxisText string
---@param InYAxisText string
function NiagaraPreview_C:SetLabelText(InXAxisText, InYAxisText) end

