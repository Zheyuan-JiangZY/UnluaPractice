---Renders the ID and state of a MagicLeapARPin
---@class MagicLeapARPinInfoActor_C : AMagicLeapARPinInfoActorBase
---@field public UberGraphFrame FPointerToUberGraphFrame
---@field public Right UStaticMeshComponent
---@field public Forward UStaticMeshComponent
---@field public Up UStaticMeshComponent
---@field public ValidRadiusVisualizer USphereComponent
---@field public AxisRoot USceneComponent
---@field public VisualizerRoot USceneComponent
---@field public TypeValue UTextRenderComponent
---@field public TransErrValue UTextRenderComponent
---@field public RotErrValue UTextRenderComponent
---@field public ConfidenceValue UTextRenderComponent
---@field public TransErrLabel UTextRenderComponent
---@field public RotErrLabel UTextRenderComponent
---@field public ConfidenceLabel UTextRenderComponent
---@field public PinIDValue UTextRenderComponent
---@field public InfoRoot USceneComponent
---@field public Root USceneComponent
---@field public RotationSmoothSpeed number
local MagicLeapARPinInfoActor_C = {}

function MagicLeapARPinInfoActor_C:UpdatePinState() end

---Construction script, the place to spawn components and do other setup.
function MagicLeapARPinInfoActor_C:UserConstructionScript() end

function MagicLeapARPinInfoActor_C:OnUpdateARPinState() end

---Event called every frame, if ticking is enabled
---@param DeltaSeconds number
function MagicLeapARPinInfoActor_C:ReceiveTick(DeltaSeconds) end

