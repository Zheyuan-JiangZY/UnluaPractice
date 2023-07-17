---A ParticleSystem is a complete particle effect that contains any number of ParticleEmitters. By allowing multiple emitters
---in a system, the designer can create elaborate particle effects that are held in a single system. Once created using
---Cascade, a ParticleSystem can then be inserted into a level or created in script.
---@class UParticleSystem : UFXSystemAsset
---@field public UpdateTime_FPS number @UpdateTime_FPS - the frame per second to update at in FixedTime mode
---@field public UpdateTime_Delta number @UpdateTime_Delta       - internal
---@field public WarmupTime number @WarmupTime - the time to warm-up the particle system when first rendered Warning: WarmupTime is implemented by simulating the particle system for the time requested upon activation. This is extremely prone to cause hitches, especially with large particle counts - use with caution.
---@field public WarmupTickRate number @WarmupTickRate - the time step for each tick during warm up.        Increasing this improves performance. Decreasing, improves accuracy.        Set to 0 to use the default tick time.
---@field public Emitters TArray<UParticleEmitter> @Emitters       - internal - the array of emitters in the system
---@field public PreviewComponent UParticleSystemComponent @The component used to preview the particle system in Cascade
---@field public ThumbnailAngle FRotator @The angle to use when rendering the thumbnail image
---@field public ThumbnailDistance number @The distance to place the system when rendering the thumbnail image
---@field public ThumbnailWarmup number @The time to warm-up the system for the thumbnail image
---@field public CurveEdSetup UInterpCurveEdSetup @Used for curve editor to remember curve-editing setup.
---@field public LODDistanceCheckTime number @How often (in seconds) the system should perform the LOD distance check.
---@field public MacroUVRadius number @World space radius that UVs generated with the ParticleMacroUV material node will tile based on.
---@field public LODDistances TArray<number> @The array of distances for each LOD level in the system. Used when LODMethod is set to PARTICLESYSTEMLODMETHOD_Automatic. Example: System with 3 LOD levels         LODDistances(0) = 0.0         LODDistances(1) = 2500.0         LODDistances(2) = 5000.0         In this case, when the system is [   0.0 ..   2499.9] from the camera, LOD level 0 will be used.                                                                          [2500.0 ..   4999.9] from the camera, LOD level 1 will be used.                                                                          [5000.0 .. INFINITY] from the camera, LOD level 2 will be used.
---@field public EditorLODSetting integer @LOD setting for intepolation (set by Cascade) Range [0..100]
---@field public LODSettings TArray<FParticleSystemLOD>
---@field public FixedRelativeBoundingBox FBox @Fixed relative bounding box for particle system.
---@field public SecondsBeforeInactive number @Number of seconds of emitter not being rendered that need to pass before it no longer gets ticked/ becomes inactive.
---@field public FloorMesh string @Cascade 'floor' mesh information.
---@field public FloorPosition FVector
---@field public FloorRotation FRotator
---@field public FloorScale number
---@field public FloorScale3D FVector
---@field public BackgroundColor FColor @The background color to display in Cascade
---@field public Delay number @How long this Particle system should delay when ActivateSystem is called on it.
---@field public DelayLow number @The low end of the emitter delay if using a range.
---@field public bOrientZAxisTowardCamera boolean @If true, the system's Z axis will be oriented toward the camera
---@field public bUseFixedRelativeBoundingBox boolean @Whether to use the fixed relative bounding box or calculate it every frame.
---@field public bShouldResetPeakCounts boolean @EDITOR ONLY: Indicates that Cascade would like to have the PeakActiveParticles count reset
---@field public bHasPhysics boolean @Set during load time to indicate that physics is used...
---@field public bUseRealtimeThumbnail boolean @Inidicates the old 'real-time' thumbnail rendering should be used
---@field public ThumbnailImageOutOfDate boolean @Internal: Indicates the PSys thumbnail image is out of date
---@field public ThumbnailImage UTexture2D @Internal: The PSys thumbnail image
---@field public bUseDelayRange boolean @If true, select the emitter delay from the range         [DelayLow..Delay]
---@field public bAllowManagedTicking boolean @Whether or not to allow instances of this system to have their ticks managed.
---@field public bAutoDeactivate boolean @Auto-deactivate system if all emitters are determined to not spawn particles again, regardless of lifetime.
---@field public bRegenerateLODDuplicate boolean @Internal value that tracks the regenerate LOD levels preference. If true, when autoregenerating LOD levels in code, the low level will be a duplicate of the high.
---@field public SystemUpdateMode integer
---@field public LODMethod integer @The method of LOD level determination to utilize for this particle system   PARTICLESYSTEMLODMETHOD_Automatic - Automatically set the LOD level, checking every LODDistanceCheckTime seconds. PARTICLESYSTEMLODMETHOD_DirectSet - LOD level is directly set by the game code. PARTICLESYSTEMLODMETHOD_ActivateAutomatic - LOD level is determined at Activation time, then left alone unless directly set by game code.
---@field public InsignificantReaction EParticleSystemInsignificanceReaction @The reaction this system takes when all emitters are insignificant.
---@field public OcclusionBoundsMethod integer @Which occlusion bounds method to use for this particle system. EPSOBM_None - Don't determine occlusion for this system. EPSOBM_ParticleBounds - Use the bounds of the component when determining occlusion.
---@field public MaxSignificanceLevel EParticleSignificanceLevel @The maximum level of significance for emitters in this system. Any emitters with a higher significance will be capped at this significance level.
---@field public MinTimeBetweenTicks integer @Minimum duration between ticks; 33=tick at max. 30FPS, 16=60FPS, 8=120FPS
---@field public InsignificanceDelay number @Time delay between all emitters becoming insignificant and the systems insignificant reaction.
---@field public MacroUVPosition FVector @Local space position that UVs generated with the ParticleMacroUV material node will be centered on.
---@field public CustomOcclusionBounds FBox @The occlusion bounds to use if OcclusionBoundsMethod is set to EPSOBM_CustomBounds
---@field public SoloTracking TArray<FLODSoloTrack>
---@field public NamedMaterialSlots TArray<FNamedEmitterMaterial> @Array of named material slots for use by emitters of this system. Emitters can use these instead of their own materials by providing the name to the NamedMaterialOverrides property of their required module. These materials can be overridden using CreateNamedDynamicMaterialInstance() on a ParticleSystemComponent.
local UParticleSystem = {}

---Returns true if this system contains an emitter of the pasesd type.
---@param TypeData TSubclassOf_UObject_
---@return boolean
function UParticleSystem:ContainsEmitterType(TypeData) end

