---@class RenderToTexture_LevelBP_C : APawn
---@field public UberGraphFrame FPointerToUberGraphFrame
---@field public BottomCollision-LargeMeshesOnly UBoxComponent
---@field public SceneCapture Motion Position 1 USceneCaptureComponent2D
---@field public TopOutline UBoxComponent
---@field public PreviewMesh UStaticMeshComponent
---@field public TilingPreviewCapture USceneCaptureComponent2D
---@field public BottomCollision UBoxComponent
---@field public Box5 UBoxComponent
---@field public Box4 UBoxComponent
---@field public Box3 UBoxComponent
---@field public Box2 UBoxComponent
---@field public PlaneMesh UStaticMeshComponent
---@field public Debug UTextRenderComponent
---@field public Camera1 UCameraComponent
---@field public Root UStaticMeshComponent
---@field public RotationArray TArray<FRotator>
---@field public Render Type integer @This option decides what mode the blueprint tool will use. Find additional settings for each mode under the matching grouped categories below.
---@field public Viewport size (see Tooltip) integer @Due to a current codebug this option does not function. It is recommended that you click the play drop down button -> advanced settings and set window size to 512x512.
---@field public ResolutionMultiplier integer @Resolution Multiplier for capturing high res shots.
---@field public BaseColor boolean
---@field public Specular boolean
---@field public Metallic boolean
---@field public Normal boolean
---@field public Opacity boolean
---@field public Roughness boolean
---@field public AmbientOcclusion boolean
---@field public MaterialAmbientOcclusion boolean
---@field public Decal Mask boolean
---@field public Lighting Only boolean
---@field public Subsurface Color boolean
---@field public Imposter Static Mesh UStaticMesh @Which static mesh to render Imposters for.
---@field public BufferCommands string @This is the string that the blueprint enters to specify which buffer targets to export.
---@field public ResCommand string
---@field public SheetSize number @Can be used to modify size of the render sheet. In most cases there is no need to change this.
---@field public ShotCommand string
---@field public MeshScale number @Only change this if for some reason the mesh has innaccurate bounds. Always watch the preview for edge artifacts when adjusting scale.
---@field public Imposter MaterialInstanceArray TArray<UMaterialInstance> @You can specify material overrides for each index by adding to this array.
---@field public MaterialColor2 FLinearColor
---@field public SectorSize number
---@field public InitialOffset FVector
---@field public initialscale number
---@field public Internalscalefactor number
---@field public StaticMeshComponent UStaticMeshComponent
---@field public LevelStaticMeshActorArray TArray<AActor>
---@field public Render to Texture Mesh AStaticMeshActor @Specify a static mesh in the world to unwrap.
---@field public Use Level Meshes for Depth boolean @When true, the blueprint will not spawn a mesh since it will be assumed the user will place the mesh in the correct location/orientation.
---@field public LightVector FVector @Only used when no directional light is specified. This lets you set which light vector to capture depths from.
---@field public Directional Light ADirectionalLight @You can specify a directional light actor to guarentee depths will match the correct lighting direction.
---@field public Opacity Mask Textures TArray<UTexture> @Used during depth pass to make a masked material. Index corresponds to static mesh material index.
---@field public Opacity Mask Channels TArray<FLinearColor> @Index Corresponds with Opacity Textures. Used to tell which channel(s) to use.
---@field public Frames around Z rotation integer @This is the number of X frames, which stores the Z rotation.
---@field public Aspect Ratio 1 by integer @Generally leaf this at 1. This sets divisor for the Y frame count. 
---@field public Use Level Placed Meshes boolean @Use this when capturing imposeters that have been shifted into place using the 'ke * adjust' PIE command. Useful for static lighting hacks.
---@field public Lightmap Mesh AStaticMeshActor @Specify a static mesh in the world to unwrap.
---@field public Lightmap Mesh 2-sided, Side 1 AStaticMeshActor @Rendering 2-sided lightmaps is a very special case that requires importing a second static mesh that has flipped faces for the backfaces. The UVs must be exactly the same. Specify side1 here.
---@field public Lightmap Mesh 2-sided, Side 2 AStaticMeshActor @Rendering 2-sided lightmaps is a very special case that requires importing a second static mesh that has flipped faces for the backfaces. The UVs must be exactly the same. Specify side2 here.
---@field public Depth Map Static Mesh UStaticMesh @Which static mesh to capture depths for.
---@field public Unwrap boolean @When this box is checked the mesh will unwrap. Requires the "UnwrapUVsforRender" material function be hooked up to worldpositionoffset.
---@field public Depth Material Mask Textures TArray<UTexture2D> @This lets you specify any necessary texture masks.
---@field public Flipbook Start Rotation FRotator @Use this setting to modify the starting rotation at frame 0.
---@field public Flipbook Rotation Axis 1 FVector @The primary axis of rotation
---@field public Flipbook Rotation Axis 2 FVector @A second flipbook rotation can be used to create more chaotic motion.
---@field public Axis 1 Rotations integer @More than one rotation does not serve many useful purposes since generally frames will repeat.
---@field public Axis 2 Rotations integer @A second flipbook rotation can be used to create more chaotic motion.
---@field public Flipbook Columns (X) integer @Number of horizontal columns, or the X count.
---@field public Flipbook Rows (Y) integer @Number of vertical rows, or the Y count.
---@field public Flipbook MaterialInstance List TArray<UMaterialInstance> @You can specify material overrides for each index by adding to this array.
---@field public Opacity MaskTextures TArray<UTexture> @Used during Motion Vector pass to make a masked material. Index corresponds to static mesh material index.
---@field public Opacity MaskChannels TArray<FLinearColor> @Index Corresponds with Opacity Textures. Used to tell which channel(s) to use.
---@field public Flipbook Static Mesh UStaticMesh @Which static mesh to use.
---@field public Flipbook Mesh scale number @Useful if you need to use vertex animation and want to give some extra space around the mesh border for that.
---@field public Preview Speed number @How many seconds to complete a simulated flipbook.
---@field public ImposterEnum integer @3D imposters store every camera angle and require lots of frames. Single axis imposters are great for distant geometry LODs where you don't need to view them from above.
---@field public Single Rotation Axis FVector @The axis around which to rotate in the world, based on object Z.
---@field public Unwrap Lightmap 2sided boolean @When this is checked, the mesh will be unwrapped.
---@field public Unwrap2sidedMIDlistA TArray<UMaterialInstanceDynamic>
---@field public Unwrap2sidedMIDListB TArray<UMaterialInstanceDynamic>
---@field public Lightmap Unwrap Material UMaterialInstanceConstant @Currently you must configure the lightmap rendering material. This is to allow flexibility in setting up masked materials. The material function "UnwrapUVsforRender" is required to be hooked up to world position offset.
---@field public Unwrap Lightmap boolean @When this box is checked the mesh will unwrap. Requires the "UnwrapUVsforRender" material function be hooked up to worldpositionoffset.
---@field public Mask Channel TArray<FLinearColor> @Each Mask texture will determine which channel to use by looking at the corresponding index of this array.
---@field public DepthMeshInitialSize FVector
---@field public DepthMID UMaterialInstanceDynamic
---@field public Scale XY number @Lets you scale the mesh. If this value is changed from 1, the same value needs to be used in the final material when looking up the depths.
---@field public Scale Z number @How much of the Bounding Sphere the current depth pass needs.
---@field public Fit Vector and scale info onto texture boolean @When true, text components will be created showing Vector and Scale info, locations specified by below settings.
---@field public TextSize number @How large the vector/size info text is.
---@field public Text Locations TArray<FVector> @The location of the vector/size info text.
---@field public ParticleSystem UParticleSystem
---@field public SavedPhysMeshList TArray<FPhysMesh__pf3832487194> @After simulating, if you select the blueprint and press 'K', the meshes will be saved and added to this list so that the meshes can persist after simulation is stopped. To clear saved meshes, use the Trash button on this array.
---@field public Simulate Physics boolean @Only disable this if you want to disable the blueprint from running any simulation when simulating in the editor. 
---@field public Keep Tiling Hand Placed Meshes boolean @When true, the meshes you place by hand under "Tiling Hand Placed Meshes" will be kept for the physics 
---@field public Simple Random Placement boolean @When true, physics will be disabled and meshes will simply be spawned randomly. Useful for making quick mesh-fill textures such as tiling grass.
---@field public PhysGround Mat UMaterialInstanceConstant @The material to use on the floor plane. Remember you can be creative here and use something that is designed to work with the simulation.
---@field public Mesh List TArray<UStaticMesh> @Meshes from this list will be randomly chosen and spawned.
---@field public Mesh Size Min number @Smallest mesh size.
---@field public Mesh Size Max number @Largest mesh size.
---@field public Size Curve number @When 1, the distribution of large to small meshes will be linear. When greater than 1, there will be more small rocks. Less than one causes more big rocks.
---@field public Spawn by Size boolean @When true, large meshes will spawn first. This is an optimization behavior since small rocks covered by large rocks will have little impact on the final texture.
---@field public PhysGround Density m^2 number
---@field public Count integer
---@field public Number of Meshes integer @How many meshes to spawn.
---@field public PhysStaticMeshes TArray<UStaticMeshComponent>
---@field public Debug Displacement Depth boolean @When this is enabled, all meshes will be rendered with the displacement material so you can adjust the min/max values to get the best precision. The color will clip to red if white or black are exceeded so that you can get very close to the full range in your displacement texture.
---@field public Displacement Min number @The min world height to capture in the displacement. To preview, use the above "Debug Displacement Depths" checkbox after saving a simulation by pressing K and stopping simulation mode.
---@field public Displacement Max number @The max world height to capture in the displacement. To preview, use the above "Debug Displacement Depths" checkbox after saving a simulation by pressing K and stopping simulation mode.
---@field public Kill Above Z Min number @If the very bottom of a mesh settles above this height, it will be respawned.
---@field public Kill Above Z Max number @If any part of a mesh settles above this height, it  will be respawned.
---@field public Copied Mesh Array TArray<UStaticMeshComponent>
---@field public Current Component UStaticMeshComponent
---@field public StaticMobilityMeshes TArray<UStaticMeshComponent>
---@field public SavedMeshComponents TArray<UStaticMeshComponent>
---@field public Material Instance UMaterialInstance @Specify a simple material instance to bake to its component G-buffer textures.
---@field public Stadium Offsetting boolean @Only needed when attempting to bake lighting info billboards. This removes shadow interference.
---@field public TilingMesh List TArray<FTilingMesh__pf3832487194> @Add to this List to add meshes. You can specify settings for each mesh. It may be useful to use 'duplicate' rather than make each mesh from scratch.
---@field public SceneDepthWorldUnits boolean
---@field public DisplacementMin number @The min world value to use for displacement.
---@field public DisplacementMax number @The max world value to use for displacement.
---@field public DebugDisplacementDepth boolean @When this is enabled, all meshes will be rendered with the displacement material so you can adjust the min/max values to get the best precision. The color will clip to red if white or black are exceeded so that you can get very close to the full range in your displacement texture.
---@field public Custom Depth boolean
---@field public Displacement Texture Height number @You can specify a displacement texture for each mesh in the list. This value controls how much those displacement textures contribute to the captured world positions.
---@field public Preview Tiling boolean
---@field public Tiling Amount number @Tiling amount for the preview tiling material
---@field public ImposterArray TArray<FTransform>
---@field public PreviewLocation FVector @This setting has a 3d widget that you can drag around the world. It lets you move the preview location around.
---@field public Output Depth Maps boolean @Exports scenecolor as image for depth. Used with Pixel Depth Offset in materials to give billboards accurate self shadowing with distance field shadows. Requires inputing any mask textures and channels.
---@field public ImposterMeshComponents TArray<UStaticMeshComponent>
---@field public BackgroundSheetMID UMaterialInstanceDynamic
---@field public Debug Depth boolean @Useful to set up the masked materials for depth capture
---@field public Max Pitch/Roll number @You can limit the pitch/roll. Most useful when not using physics so that grass etc spawns mostly upwards.
---@field public Render Motion Vectors boolean @Renders two extra Buffers using WorldPosition and an offset frame. Motion vectors need to be calculated externally by getting the difference in the two images. Note that this option hi-jacks the "SceneDepth World Units" buffer!
---@field public SceneColor boolean @Scene Color will automatically be output when rendering motion vectors, depths or lightmaps.
---@field public Sheet height number @Z value for background sheet. Some modes use the sheet for collision.
---@field public Background Sheet Color FLinearColor @Ths background card only shows up in some buffers since it is a translucent material. This is so that an accurate "decal mask" can be exported easily without the background sheet filling in the black space.
---@field public FlipbookMeshes TArray<UStaticMeshComponent>
---@field public UV Layout Dilation Amount number @How much to dilate the UVs by.
---@field public OffsetVectors TArray<FVector>
---@field public Empty Spacer boolean @This does nothing but provide nice visual break after relevant options.
---@field public CurrentRenderLoc FVector
---@field public UV Dilation Steps integer @How many UV dilation steps to perform. More steps will usually result in cleaner edge at the cost of taking longer to render.
---@field public MaterialChoice UMaterialInstance
---@field public MVFloors TArray<UStaticMeshComponent>
---@field public FlipbookMID UMaterialInstanceDynamic
---@field public Motion Dilation Steps integer @Motion Dilation superimposes the positions of the next frame using the current frame's motion vectors underneath all cells. Doing this helps pixels maintain their motion to their destinations when the pixels leave the silhouette of the shape in the current frame. More steps results in less artifacts at the cost of slower rendering.
---@field public UnwrappedMotionVectorMeshes TArray<UStaticMeshComponent>
---@field public MotionVectorIntensityBoost number @Useful to get better precision when the motion vectors are small. Remember to apply the inverse of this number as the vector strength in the flipbook material.
---@field public sRGB boolean
---@field public Render MotionVectors boolean @Motion Vectors are used to morph between frames to smooth motion popping.
---@field public Large Mesh Sink Height number @How far below the main ground large meshes should sink.
---@field public Large Mesh Size Threshold number @Meshes larger than this will 'sink' below the main ground up to the 'Large Mesh Sink Height" distance.
---@field public UV DilationPass boolean
---@field public MotionVector Pass boolean
---@field public MotionVectorMaterial UMaterialInstanceConstant
---@field public MotionVectorsApplied UMaterialInstanceConstant
---@field public UV Layout DilationAmount number @Only used during Motion Vector pass. UV Dilation is used to fix seams along polygon borders. Slowly increase while observing edge artifacts.
---@field public UV DilationSteps integer @More UV Dilation steps can result in much cleaner edges in the motion vector image. Excessive passes can make the blueprint slow to update.
---@field public Motion DilationSteps integer @Motion Dilation Helps capture pixels that move beyond the silhouette of the current frame that have different motion vectors than what the current frame can show. Using at least 1 step vastly improves quality.
---@field public Motion Vector IntensityBoost number @Increasing the intensity of the motion vectors will increase the precision when the texture is sampled as 8-bit. Generally try increasing this until you see red clipping and then back off until the clipping is gone. The inverse (1/x) of this number needs to be input in the material instance.
---@field public MotionVectorsApplied_Imposter UMaterialInstanceConstant
---@field public Flipbook Preview Mat UMaterialInstanceConstant
---@field public Imposter-SingleAxis Preview Mat UMaterialInstanceConstant
---@field public Imposter-3D Preview Mat UMaterialInstanceConstant
---@field public MIDList TArray<UMaterialInstanceDynamic>
---@field public PolyCenter FVector
---@field public Offst Phase number
---@field public Dilation Phase number
---@field public Ortho FOV number @Can be useful to fake a certain amount of FOV depending on how close your imposters are intended to be rendered.
---@field public Indicies to Delete TArray<integer>
---@field public TilingAmount number @Tiling amount for the preview image
---@field public UVIndex number @Which UV index to use for rendering motion vectors. Needs to be uniquely unwrapped with appropriate padding.
---@field public UV Index number
---@field public NewVar UMaterialInstanceDynamic
---@field public Export images as EXR boolean @EXR uses floating point data. EXR is a better way to get accurate texture gamma. When converting back to 8-bit in photoshop, make sure to choose "Do Not Merge" in order to get accurate sRGB curves.
local RenderToTexture_LevelBP_C = {}

RenderToTexture_LevelBP_C["Set up MPC"] = function(self) end

---@param Mesh UStaticMesh
---@param WorldPos FVector
---@param Material UMaterialInterface
---@param Scale3d FVector
---@param Mesh_Comp UStaticMeshComponent @[out] 
RenderToTexture_LevelBP_C["New Mesh"] = function(self, Mesh, WorldPos, Material, Scale3d, Mesh_Comp) end

---@param Visible boolean
RenderToTexture_LevelBP_C["Setup Collision"] = function(self, Visible) end

RenderToTexture_LevelBP_C["Render Tiling Material from Meshes"] = function(self) end

RenderToTexture_LevelBP_C["Render Tiling Material"] = function(self) end

---@param Mesh_Component UStaticMeshComponent
---@param Offset_Vector FVector
---@param Array_to_Place_Meshes_in TArray_UStaticMeshComponent_ @[out] 
RenderToTexture_LevelBP_C["Copy a mesh"] = function(self, Mesh_Component, Offset_Vector, Array_to_Place_Meshes_in) end

---@param Meshes TArray_UStaticMeshComponent_ @[out] 
---@param Min number @[out] 
---@param Max number @[out] 
RenderToTexture_LevelBP_C["Find Z Bounds"] = function(self, Meshes, Min, Max) end

RenderToTexture_LevelBP_C["Render Random Tiling Physics Drop"] = function(self) end

RenderToTexture_LevelBP_C["Particle System Frame Dump"] = function(self) end

RenderToTexture_LevelBP_C["Render LIghtmap 2-sided"] = function(self) end

RenderToTexture_LevelBP_C["Render Lightmap"] = function(self) end

RenderToTexture_LevelBP_C["Render Unwrapped Mesh To Textures"] = function(self) end

---@param MID UMaterialInstanceDynamic @[out] 
RenderToTexture_LevelBP_C["Render Depth Map"] = function(self, MID) end

RenderToTexture_LevelBP_C["Imposter Sprites"] = function(self) end

function RenderToTexture_LevelBP_C:FlipBook() end

RenderToTexture_LevelBP_C["Set Buffer Commands"] = function(self) end

---Construction script, the place to spawn components and do other setup.
function RenderToTexture_LevelBP_C:UserConstructionScript() end

RenderToTexture_LevelBP_C["Match Level Actors to Imposter Array"] = function(self) end

---Event when play begins for this actor.
function RenderToTexture_LevelBP_C:ReceiveBeginPlay() end

