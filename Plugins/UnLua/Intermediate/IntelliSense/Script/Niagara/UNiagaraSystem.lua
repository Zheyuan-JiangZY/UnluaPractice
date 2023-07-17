---Container for multiple emitters that combine together to create a particle system effect.
---@class UNiagaraSystem : UFXSystemAsset
---@field public ThumbnailImage UTexture2D @Internal: The thumbnail image.
---@field public ThumbnailImageOutOfDate boolean @Internal: Indicates the thumbnail image is out of date.
---@field public bExposeToLibrary boolean @If this system is exposed to the library.
---@field public TemplateSpecification ENiagaraScriptTemplateSpecification
---@field public TemplateAssetDescription string
---@field public ScratchPadScripts TArray<UNiagaraScript>
---@field public EditorOnlyAddedParameters FNiagaraParameterStore
---@field public UpdateContext FNiagaraSystemUpdateContext
---@field public bBakeOutRapidIteration boolean @Experimental feature that allows us to bake out rapid iteration parameters during the normal compile process.
---@field public bBakeOutRapidIterationOnCook boolean @If true bBakeOutRapidIteration will be made to be true during cooks
---@field public bCompressAttributes boolean @Toggles whether or not emitters within this system will try and compress their particle attributes.       In some cases, this precision change can lead to perceivable differences, but memory costs and or performance (especially true for GPU emitters) can improve.
---@field public bTrimAttributes boolean @If true Particle attributes will be removed from the DataSet if they are unnecessary (are never read by ParameterMap)
---@field public bTrimAttributesOnCook boolean @If true bTrimAttributes will be made to be true during cooks
---@field public bDisableAllDebugSwitches boolean @If true, forcefully disables all debug switches
---@field public ParameterDefinitionsSubscriptions TArray<FParameterDefinitionsSubscription> @Subscriptions to definitions of parameters.
---@field public bDumpDebugSystemInfo boolean
---@field public bDumpDebugEmitterInfo boolean
---@field public bRequireCurrentFrameData boolean @When enabled, we follow the settings on the UNiagaraComponent for tick order. When this option is disabled, we ignore any dependencies from data interfaces or other variables and instead fire off the simulation as early in the frame as possible. This greatly       reduces overhead and allows the game thread to run faster, but comes at a tradeoff if the dependencies might leave gaps or other visual artifacts.
---@field public bFixedBounds boolean @Whether or not fixed bounds are enabled.
---@field protected EffectType UNiagaraEffectType
---@field protected bOverrideScalabilitySettings boolean
---@field protected SystemScalabilityOverrides FNiagaraSystemScalabilityOverrides
---@field protected EmitterHandles TArray<FNiagaraEmitterHandle> @Handles to the emitter this System will simulate.
---@field protected ParameterCollectionOverrides TArray<UNiagaraParameterCollectionInstance>
---@field protected ActiveCompilations TArray<FNiagaraSystemCompileRequest>
---@field protected SystemSpawnScript UNiagaraScript @The script which defines the System parameters, and which generates the bindings from System               parameter to emitter parameter.
---@field protected SystemUpdateScript UNiagaraScript @The script which defines the System parameters, and which generates the bindings from System       parameter to emitter parameter.
---@field protected SystemCompiledData FNiagaraSystemCompiledData @/ Post compile generated data used for initializing System Instances during runtime.
---@field protected ExposedParameters FNiagaraUserRedirectionParameterStore @Variables exposed to the outside work for tweaking
---@field protected EditorData UNiagaraEditorDataBase @Data used by the editor to maintain UI state etc..
---@field protected EditorParameters UNiagaraEditorParametersAdapterBase @Wrapper for editor only parameters.
---@field protected FixedBounds FBox @The fixed bounding box value. bFixedBounds is the condition whether the fixed bounds can be edited.
---@field protected bAutoDeactivate boolean @Auto-deactivate system if all emitters are determined to not spawn particles again, regardless of lifetime.
---@field protected WarmupTime number @Warm up time in seconds. Used to calculate WarmupTickCount. Rounds down to the nearest multiple of WarmupTickDelta.
---@field protected WarmupTickCount integer @Number of ticks to process for warmup. You can set by this or by time via WarmupTime.
---@field protected WarmupTickDelta number @Delta time to use for warmup ticks.
---@field protected BakerSettings UNiagaraBakerSettings @Settings used inside the baker
---@field protected BakerGeneratedSettings UNiagaraBakerSettings @Generated data baker settings, will be null until we have generated at least once.
---@field protected bHasSystemScriptDIsWithPerInstanceData boolean
---@field protected bNeedsGPUContextInitForDataInterfaces boolean
---@field protected UserDINamesReadInSystemScripts TArray<string>
---@field protected MessageKeyToMessageMap TMap<FGuid, UNiagaraMessageDataBase> @Messages associated with the System asset.
local UNiagaraSystem = {}

