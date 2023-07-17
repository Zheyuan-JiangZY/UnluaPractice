---UNiagaraComponent is the primitive component for a Niagara System.
---@class UNiagaraComponent : UFXSystemComponent
---@field private Asset UNiagaraSystem
---@field private TickBehavior ENiagaraTickBehavior @Allows you to control how Niagara selects the tick group, changing this while an instance is active will result in not change as it is cached.
---@field private RandomSeedOffset integer @Offsets the deterministic random seed of all emitters. Used to achieve variety between components, while still achieving determinism. WARNINGS: - If this value is set in a non-deterministic way, it has the potential to break determinism of the entire system. - This value is applied when emitters are activated/reset, and changing them while the emitter is active has no effect.
---@field private OverrideParameters FNiagaraUserRedirectionParameterStore
---@field private TemplateParameterOverrides TMap<FNiagaraVariableBase, FNiagaraVariant>
---@field private InstanceParameterOverrides TMap<FNiagaraVariableBase, FNiagaraVariant>
---@field private bForceSolo boolean @When true, this component's system will be force to update via a slower "solo" path rather than the more optimal batched path with other instances of the same system.
---@field private bEnableGpuComputeDebug boolean @When true the GPU simulation debug display will enabled, allowing information used during simulation to be visualized.
---@field private bAutoDestroy boolean
---@field private bRenderingEnabled boolean
---@field public bAutoManageAttachment boolean @True if we should automatically attach to AutoAttachParent when activated, and detach from our parent when completed. This overrides any current attachment that may be present at the time of activation (deferring initial attachment until activation, if AutoAttachParent is null). When enabled, detachment occurs regardless of whether AutoAttachParent is assigned, and the relative transform from the time of activation is restored. This also disables attachment on dedicated servers, where we don't actually activate even if bAutoActivate is true.
---@field public bAutoAttachWeldSimulatedBodies boolean @Option for how we handle bWeldSimulatedBodies when we attach to the AutoAttachParent, if bAutoManageAttachment is true.
---@field public MaxTimeBeforeForceUpdateTransform number @Time between forced UpdateTransforms for systems that use dynamically calculated bounds, Which is effectively how often the bounds are shrunk.
---@field public EmitterMaterials TArray<FNiagaraMaterialOverride>
---@field public OnSystemFinished MulticastDelegate @Called when the particle system is done
---@field public AutoAttachParent TWeakObjectPtr<USceneComponent> @Component we automatically attach to when activated, if bAutoManageAttachment is true. If null during registration, we assign the existing AttachParent and defer attachment until we activate.
---@field public AutoAttachSocketName string @Socket we automatically attach to on the AutoAttachParent, if bAutoManageAttachment is true.
---@field public AutoAttachLocationRule EAttachmentRule @Options for how we handle our location when we attach to the AutoAttachParent, if bAutoManageAttachment is true.
---@field public AutoAttachRotationRule EAttachmentRule @Options for how we handle our rotation when we attach to the AutoAttachParent, if bAutoManageAttachment is true.
---@field public AutoAttachScaleRule EAttachmentRule @Options for how we handle our scale when we attach to the AutoAttachParent, if bAutoManageAttachment is true.
---@field public bWaitForCompilationOnActivate boolean
local UNiagaraComponent = {}

---Sets a Niagara Vector4 parameter by name, overriding locally if necessary.
---@param InVariableName string
---@param InValue FVector4
function UNiagaraComponent:SetVariableVec4(InVariableName, InValue) end

---Sets a Niagara Vector3 parameter by name, overriding locally if necessary.
---@param InVariableName string
---@param InValue FVector
function UNiagaraComponent:SetVariableVec3(InVariableName, InValue) end

---Sets a Niagara Vector3 parameter by name, overriding locally if necessary.
---@param InVariableName string
---@param InValue FVector2D
function UNiagaraComponent:SetVariableVec2(InVariableName, InValue) end

---@param InVariableName string
---@param TextureRenderTarget UTextureRenderTarget
function UNiagaraComponent:SetVariableTextureRenderTarget(InVariableName, TextureRenderTarget) end

---Sets a Niagara Vector3 parameter by name, overriding locally if necessary.
---@param InVariableName string
---@param InValue FQuat
function UNiagaraComponent:SetVariableQuat(InVariableName, InValue) end

---@param InVariableName string
---@param Object UObject
function UNiagaraComponent:SetVariableObject(InVariableName, Object) end

---@param InVariableName string
---@param Object UMaterialInterface
function UNiagaraComponent:SetVariableMaterial(InVariableName, Object) end

---Sets a Niagara FLinearColor parameter by name, overriding locally if necessary.
---@param InVariableName string
---@param InValue FLinearColor
function UNiagaraComponent:SetVariableLinearColor(InVariableName, InValue) end

---Sets a Niagara int parameter by name, overriding locally if necessary.
---@param InVariableName string
---@param InValue integer
function UNiagaraComponent:SetVariableInt(InVariableName, InValue) end

---Sets a Niagara float parameter by name, overriding locally if necessary.
---@param InVariableName string
---@param InValue number
function UNiagaraComponent:SetVariableFloat(InVariableName, InValue) end

---Sets a Niagara float parameter by name, overriding locally if necessary.
---@param InVariableName string
---@param InValue boolean
function UNiagaraComponent:SetVariableBool(InVariableName, InValue) end

---@param InVariableName string
---@param Actor AActor
function UNiagaraComponent:SetVariableActor(InVariableName, Actor) end

---@param NewTickBehavior ENiagaraTickBehavior
function UNiagaraComponent:SetTickBehavior(NewTickBehavior) end

---Sets the delta value which is used when seeking from the current age, to the desired age.  This is only relevant
---      when using the DesiredAge age update mode.
---@param InSeekDelta number
function UNiagaraComponent:SetSeekDelta(InSeekDelta) end

---Sets whether or not rendering is enabled for this component.
---@param bInRenderingEnabled boolean
function UNiagaraComponent:SetRenderingEnabled(bInRenderingEnabled) end

---@param NewRandomSeedOffset integer
function UNiagaraComponent:SetRandomSeedOffset(NewRandomSeedOffset) end

---@param bEnablePreviewLODDistance boolean
---@param PreviewLODDistance number
function UNiagaraComponent:SetPreviewLODDistance(bEnablePreviewLODDistance, PreviewLODDistance) end

---@param bInPaused boolean
function UNiagaraComponent:SetPaused(bInPaused) end

---Sets a Niagara Vector4 parameter by name, overriding locally if necessary.
---@param InVariableName string
---@param InValue FVector4
function UNiagaraComponent:SetNiagaraVariableVec4(InVariableName, InValue) end

---Sets a Niagara Vector3 parameter by name, overriding locally if necessary.
---@param InVariableName string
---@param InValue FVector
function UNiagaraComponent:SetNiagaraVariableVec3(InVariableName, InValue) end

---Sets a Niagara Vector3 parameter by name, overriding locally if necessary.
---@param InVariableName string
---@param InValue FVector2D
function UNiagaraComponent:SetNiagaraVariableVec2(InVariableName, InValue) end

---Sets a Niagara Vector3 parameter by name, overriding locally if necessary.
---@param InVariableName string
---@param InValue FQuat
function UNiagaraComponent:SetNiagaraVariableQuat(InVariableName, InValue) end

---@param InVariableName string
---@param Object UObject
function UNiagaraComponent:SetNiagaraVariableObject(InVariableName, Object) end

---Sets a Niagara FLinearColor parameter by name, overriding locally if necessary.
---@param InVariableName string
---@param InValue FLinearColor
function UNiagaraComponent:SetNiagaraVariableLinearColor(InVariableName, InValue) end

---Sets a Niagara int parameter by name, overriding locally if necessary.
---@param InVariableName string
---@param InValue integer
function UNiagaraComponent:SetNiagaraVariableInt(InVariableName, InValue) end

---Sets a Niagara float parameter by name, overriding locally if necessary.
---@param InVariableName string
---@param InValue number
function UNiagaraComponent:SetNiagaraVariableFloat(InVariableName, InValue) end

---Sets a Niagara float parameter by name, overriding locally if necessary.
---@param InVariableName string
---@param InValue boolean
function UNiagaraComponent:SetNiagaraVariableBool(InVariableName, InValue) end

---@param InVariableName string
---@param Actor AActor
function UNiagaraComponent:SetNiagaraVariableActor(InVariableName, Actor) end

---Sets the maximum time that you can jump within a tick which is used when seeking from the current age, to the desired age.  This is only relevant
---      when using the DesiredAge age update mode.
---@param InMaxTime number
function UNiagaraComponent:SetMaxSimTime(InMaxTime) end

---Sets whether or not the delta time used to tick the system instance when using desired age is locked to the seek delta.  When true, the system instance
---      will only be ticked when the desired age has changed by more than the seek delta.  When false the system instance will be ticked by the change in desired
---      age when not seeking.
---@param bLock boolean
function UNiagaraComponent:SetLockDesiredAgeDeltaTimeToSeekDelta(bLock) end

---@param bEnableDebug boolean
function UNiagaraComponent:SetGpuComputeDebug(bEnableDebug) end

---@param bInForceSolo boolean
function UNiagaraComponent:SetForceSolo(bInForceSolo) end

---Sets the desired age of the System instance.  This is only relevant when using the DesiredAge age update mode.
---@param InDesiredAge number
function UNiagaraComponent:SetDesiredAge(InDesiredAge) end

---Sets whether or not the system can render while seeking.
---@param bInCanRenderWhileSeeking boolean
function UNiagaraComponent:SetCanRenderWhileSeeking(bInCanRenderWhileSeeking) end

---@param bInAutoDestroy boolean
function UNiagaraComponent:SetAutoDestroy(bInAutoDestroy) end

---Switch which asset the component is using.
---This requires Niagara to wait for concurrent execution and the override parameter store to be synchronized with the new asset.
---By default existing parameters are reset when we call SetAsset, modify bResetExistingOverrideParameters to leave existing parameter data as is.
---@param InAsset UNiagaraSystem
---@param bResetExistingOverrideParameters boolean @[opt] 
function UNiagaraComponent:SetAsset(InAsset, bResetExistingOverrideParameters) end

---Set whether this component is allowed to perform scalability checks and potentially be culled etc. Occasionally it is useful to disable this for specific components. E.g. Effects on the local player.
---@param bAllow boolean
function UNiagaraComponent:SetAllowScalability(bAllow) end

---Sets the age update mode for the System instance.
---@param InAgeUpdateMode ENiagaraAgeUpdateMode
function UNiagaraComponent:SetAgeUpdateMode(InAgeUpdateMode) end

---Sets the desired age of the System instance and designates that this change is a seek.  When seeking to a desired age the
---          The component can optionally prevent rendering.
---@param InDesiredAge number
function UNiagaraComponent:SeekToDesiredAge(InDesiredAge) end

---Resets the System to it's initial pre-simulated state.
function UNiagaraComponent:ResetSystem() end

---Called on when an external object wishes to force this System to reinitialize itself from the System data.
function UNiagaraComponent:ReinitializeSystem() end

---@return boolean
function UNiagaraComponent:IsPaused() end

---Initializes this component for capturing a performance baseline.
---This will do things such as disabling distance culling and setting a LODDistance of 0 to ensure the effect is at it's maximum cost.
function UNiagaraComponent:InitForPerformanceBaseline() end

---@return ENiagaraTickBehavior
function UNiagaraComponent:GetTickBehavior() end

---Gets the delta value which is used when seeking from the current age, to the desired age.  This is only relevant
---      when using the DesiredAge age update mode.
---@return number
function UNiagaraComponent:GetSeekDelta() end

---@return integer
function UNiagaraComponent:GetRandomSeedOffset() end

---@return boolean
function UNiagaraComponent:GetPreviewLODDistanceEnabled() end

---@return number
function UNiagaraComponent:GetPreviewLODDistance() end

---Debug accessors for getting a FVector attribute array in blueprints. The attribute name should be without namespaces. For example for "Particles.Position", send "Position".
---@param InEmitterName string
---@param InValueName string
---@return TArray_FVector_
function UNiagaraComponent:GetNiagaraParticleValueVec3_DebugOnly(InEmitterName, InValueName) end

---Debug accessors for getting a float attribute array in blueprints.  The attribute name should be without namespaces. For example for "Particles.Position", send "Position".
---@param InEmitterName string
---@param InValueName string
---@return TArray_number_
function UNiagaraComponent:GetNiagaraParticleValues_DebugOnly(InEmitterName, InValueName) end

---Debug accessors for getting positions in blueprints.
---@param InEmitterName string
---@return TArray_FVector_
function UNiagaraComponent:GetNiagaraParticlePositions_DebugOnly(InEmitterName) end

---Sets the maximum time that you can jump within a tick which is used when seeking from the current age, to the desired age.  This is only relevant
---      when using the DesiredAge age update mode.
---@return number
function UNiagaraComponent:GetMaxSimTime() end

---Gets whether or not the delta time used to tick the system instance when using desired age is locked to the seek delta.  When true, the system instance
---      will only be ticked when the desired age has changed by more than the seek delta.  When false the system instance will be ticked by the change in desired
---      age when not seeking.
---@return boolean
function UNiagaraComponent:GetLockDesiredAgeDeltaTimeToSeekDelta() end

---@return boolean
function UNiagaraComponent:GetForceSolo() end

---Gets the desired age of the System instance.  This is only relevant when using the DesiredAge age update mode.
---@return number
function UNiagaraComponent:GetDesiredAge() end

---@param Name string
---@return UNiagaraDataInterface
function UNiagaraComponent:GetDataInterface(Name) end

---@return UNiagaraSystem
function UNiagaraComponent:GetAsset() end

---@return ENiagaraAgeUpdateMode
function UNiagaraComponent:GetAgeUpdateMode() end

---Advances this system's simulation by the specified time in seconds and delta time. Advancement is done in whole ticks of TickDeltaSeconds so actual simulated time will be the nearest lower multiple of TickDeltaSeconds.
---@param SimulateTime number
---@param TickDeltaSeconds number
function UNiagaraComponent:AdvanceSimulationByTime(SimulateTime, TickDeltaSeconds) end

---Advances this system's simulation by the specified number of ticks and delta time.
---@param TickCount integer
---@param TickDeltaSeconds number
function UNiagaraComponent:AdvanceSimulation(TickCount, TickDeltaSeconds) end

