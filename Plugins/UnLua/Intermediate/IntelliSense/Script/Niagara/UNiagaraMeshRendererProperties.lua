---@class UNiagaraMeshRendererProperties : UNiagaraRendererProperties
---@field public Meshes TArray<FNiagaraMeshRendererMeshProperties> @The static mesh(es) to be instanced when rendering mesh particles. NOTES: - If "Override Material" is not specified, the mesh's material is used. Override materials must have the Niagara Mesh Particles flag checked. - If "Enable Mesh Flipbook" is specified, this mesh is assumed to be the first frame of the flipbook.
---@field public SourceMode ENiagaraRendererSourceDataMode @Whether or not to draw a single element for the Emitter or to draw the particles.
---@field public SortMode ENiagaraSortMode @Determines how we sort the particles prior to rendering.
---@field public bOverrideMaterials boolean @Whether or not to use the OverrideMaterials array instead of the mesh's existing materials.
---@field public bSortOnlyWhenTranslucent boolean @If true, the particles are only sorted when using a translucent material.
---@field public bGpuLowLatencyTranslucency boolean @If true and a GPU emitter, we will use the current frames data to render with regardless of where the batcher may execute the dispatches. If you have other emitters that are not translucent and using data that forces it to be a frame latent (i.e. view uniform buffer) you may need to disable on renderers with translucent materials if you need the frame they are reading to match exactly.
---@field public bSubImageBlend boolean @If true, blends the sub-image UV lookup with its next adjacent member using the fractional part of the SubImageIndex float value as the linear interpolation factor.
---@field public bEnableFrustumCulling boolean @Enables frustum culling of individual mesh particles
---@field public bEnableCameraDistanceCulling boolean @Enables frustum culling of individual mesh particles
---@field public bEnableMeshFlipbook boolean @When checked, will treat 'ParticleMesh' as the first frame of the flipbook, and will use the other mesh flipbook options to find the other frames
---@field public OverrideMaterials TArray<FNiagaraMeshMaterialOverride> @The materials to be used instead of the StaticMesh's materials. Note that each material must have the Niagara Mesh Particles flag checked. If the ParticleMesh       requires more materials than exist in this array or any entry in this array is set to None, we will use the ParticleMesh's existing Material instead.
---@field public SubImageSize FVector2D @When using SubImage lookups for particles, this variable contains the number of columns in X and the number of rows in Y.
---@field public FacingMode ENiagaraMeshFacingMode @Determines how the mesh orients itself relative to the camera.
---@field public bLockedAxisEnable boolean @If true and in a non-default facing mode, will lock facing direction to an arbitrary plane of rotation
---@field public LockedAxis FVector @Arbitrary axis by which to lock facing rotations
---@field public LockedAxisSpace ENiagaraMeshLockedAxisSpace @Specifies what space the locked axis is in
---@field public MinCameraDistance number
---@field public MaxCameraDistance number
---@field public RendererVisibility integer @If a render visibility tag is present, particles whose tag matches this value will be visible in this renderer.
---@field public PositionBinding FNiagaraVariableAttributeBinding @Which attribute should we use for position when generating instanced meshes?
---@field public ColorBinding FNiagaraVariableAttributeBinding @Which attribute should we use for color when generating instanced meshes?
---@field public VelocityBinding FNiagaraVariableAttributeBinding @Which attribute should we use for velocity when generating instanced meshes?
---@field public MeshOrientationBinding FNiagaraVariableAttributeBinding @Which attribute should we use for orienting meshes when generating instanced meshes?
---@field public ScaleBinding FNiagaraVariableAttributeBinding @Which attribute should we use for scale when generating instanced meshes?
---@field public SubImageIndexBinding FNiagaraVariableAttributeBinding @Which attribute should we use for sprite sub-image indexing when generating sprites?
---@field public DynamicMaterialBinding FNiagaraVariableAttributeBinding @Which attribute should we use for dynamic material parameters when generating instanced meshes?
---@field public DynamicMaterial1Binding FNiagaraVariableAttributeBinding @Which attribute should we use for dynamic material parameters when generating instanced meshes?
---@field public DynamicMaterial2Binding FNiagaraVariableAttributeBinding @Which attribute should we use for dynamic material parameters when generating instanced meshes?
---@field public DynamicMaterial3Binding FNiagaraVariableAttributeBinding @Which attribute should we use for dynamic material parameters when generating instanced meshes?
---@field public MaterialRandomBinding FNiagaraVariableAttributeBinding @Which attribute should we use for material randoms when generating instanced meshes?
---@field public CustomSortingBinding FNiagaraVariableAttributeBinding @Which attribute should we use custom sorting of particles in this emitter.
---@field public NormalizedAgeBinding FNiagaraVariableAttributeBinding @Which attribute should we use for Normalized Age?
---@field public CameraOffsetBinding FNiagaraVariableAttributeBinding @Which attribute should we use for camera offset when rendering meshes?
---@field public RendererVisibilityTagBinding FNiagaraVariableAttributeBinding @Which attribute should we use for the renderer visibility tag?
---@field public MeshIndexBinding FNiagaraVariableAttributeBinding @Which attribute should we use to pick the element in the mesh array on the mesh renderer?
---@field public MaterialParameterBindings TArray<FNiagaraMaterialAttributeBinding> @If this array has entries, we will create a MaterialInstanceDynamic per Emitter instance from Material and set the Material parameters using the Niagara simulation variables listed.
---@field public PrevPositionBinding FNiagaraVariableAttributeBinding @The following bindings are not provided by the user, but are filled based on what other bindings are set to, and the value of bGenerateAccurateMotionVectors
---@field public PrevScaleBinding FNiagaraVariableAttributeBinding
---@field public PrevMeshOrientationBinding FNiagaraVariableAttributeBinding
---@field public PrevCameraOffsetBinding FNiagaraVariableAttributeBinding
---@field public PrevVelocityBinding FNiagaraVariableAttributeBinding
---@field public FirstFlipbookFrame UStaticMesh @The static mesh to use for the first frame of the flipbook. Its name will also be used to find subsequent frames of a similar name. NOTE: The subsequent frames are expected to exist in the same content directory as the first frame of the flipbook, otherwise they will not be found or used.
---@field public FlipbookSuffixFormat string @Provides the format of the suffix of the names of the static meshes when searching for flipbook frames. "{frame_number}" is used to mark where the frame number should appear in the suffix. If "Particle Mesh" contains this suffix, the number in its name will be treated as the starting frame index. Otherwise, it will assume "Particle Mesh" is frame number 0, and that subsequent frames follow this format, starting with frame number 1.
---@field public FlipbookSuffixNumDigits integer @The number of digits to expect in the frame number of the flipbook page. A value of 1 will expect no leading zeros in the package names, and can also be used for names with frame numbers that extend to 10 and beyond (Example: Frame_1, Frame_2, ..., Frame_10, Frame_11, etc.)
---@field public NumFlipbookFrames integer @The number of frames (static meshes) to be included in the flipbook.
local UNiagaraMeshRendererProperties = {}

