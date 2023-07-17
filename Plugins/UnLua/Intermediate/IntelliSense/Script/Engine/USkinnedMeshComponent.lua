---Skinned mesh component that supports bone skinned mesh rendering.
---This class does not support animation.
---@class USkinnedMeshComponent : UMeshComponent
---@field public SkeletalMesh USkeletalMesh @The skeletal mesh used by this component.
---@field public MasterPoseComponent TWeakObjectPtr<USkinnedMeshComponent> @If set, this SkeletalMeshComponent will not use its SpaceBase for bone transform, but will use the component space transforms from the MasterPoseComponent. This is used when constructing a character using multiple skeletal meshes sharing the same skeleton within the same Actor.
---@field public SkinCacheUsage TArray<ESkinCacheUsage> @How this Component's LOD uses the skin cache feature. Auto will defer to the asset's (SkeletalMesh) option. If Ray Tracing is enabled, will imply Enabled
---@field public VertexOffsetUsage TArray<FVertexOffsetUsage>
---@field public PhysicsAssetOverride UPhysicsAsset @PhysicsAsset is set in SkeletalMesh by default, but you can override with this value
---@field public ForcedLodModel integer
---@field public MinLodModel integer @This is the min LOD that this component will use.  (e.g. if set to 2 then only 2+ LOD Models will be used.) This is useful to set on meshes which are known to be a certain distance away and still want to have better LODs when zoomed in on them.
---@field public StreamingDistanceMultiplier number @Allows adjusting the desired streaming distance of streaming textures that uses UV 0. 1.0 is the default, whereas a higher value makes the textures stream in sooner from far away. A lower value (0.0-1.0) makes the textures stream in later (you have to be closer). Value can be < 0 (from legcay content, or code changes)
---@field public LODInfo TArray<FSkelMeshComponentLODInfo> @LOD array info. Each index will correspond to the LOD index *
---@field public VisibilityBasedAnimTickOption EVisibilityBasedAnimTickOption @* This is tick animation frequency option based on this component rendered or not or using montage *  You can change this default value in the INI file * Mostly related with performance
---@field public bOverrideMinLod boolean @Whether we should use the min lod specified in MinLodModel for this component instead of the min lod in the mesh
---@field public bUseBoundsFromMasterPoseComponent boolean @When true, we will just using the bounds from our MasterPoseComponent.  This is useful for when we have a Mesh Parented to the main SkelMesh (e.g. outline mesh or a full body overdraw effect that is toggled) that is always going to be the same bounds as parent.  We want to do no calculations in that case.
---@field public bForceWireframe boolean @Forces the mesh to draw in wireframe mode.
---@field public bDisableMorphTarget boolean @Disable Morphtarget for this component.
---@field public bHideSkin boolean @Don't bother rendering the skin.
---@field public bPerBoneMotionBlur boolean @If true, use per-bone motion blur on this skeletal mesh (requires additional rendering, can be disabled to save performance).
---@field public bComponentUseFixedSkelBounds boolean @When true, skip using the physics asset etc. and always use the fixed bounds defined in the SkeletalMesh.
---@field public bConsiderAllBodiesForBounds boolean @If true, when updating bounds from a PhysicsAsset, consider _all_ BodySetups, not just those flagged with bConsiderForBounds.
---@field public bSyncAttachParentLOD boolean @If true, this component uses its parents LOD when attached if available ForcedLOD can override this change. By default, it will use parent LOD.
---@field public bCanHighlightSelectedSections boolean @Whether or not we can highlight selected sections - this should really only be done in the editor
---@field public bRecentlyRendered boolean @true if mesh has been recently rendered, false otherwise
---@field public bCastCapsuleDirectShadow boolean @Whether to use the capsule representation (when present) from a skeletal mesh's ShadowPhysicsAsset for direct shadowing from lights. This type of shadowing is approximate but handles extremely wide area shadowing well.  The softness of the shadow depends on the light's LightSourceAngle / SourceRadius. This flag will force bCastInsetShadow to be enabled.
---@field public bCastCapsuleIndirectShadow boolean @Whether to use the capsule representation (when present) from a skeletal mesh's ShadowPhysicsAsset for shadowing indirect lighting (from lightmaps or skylight).
---@field public bCPUSkinning boolean
---@field public bEnableUpdateRateOptimizations boolean @if TRUE, Owner will determine how often animation will be updated and evaluated. See AnimUpdateRateTick() This allows to skip frames for performance. (For example based on visibility and size on screen).
---@field public bDisplayDebugUpdateRateOptimizations boolean @Enable on screen debugging of update rate optimization. Red = Skipping 0 frames, Green = skipping 1 frame, Blue = skipping 2 frames, black = skipping more than 2 frames.
---@field public bRenderStatic boolean @If true, render as static in reference pose.
---@field public bIgnoreMasterPoseComponentLOD boolean @Flag that when set will ensure UpdateLODStatus will not take the MasterPoseComponent's current LOD in consideration when determining the correct LOD level (this requires MasterPoseComponent's LOD to always be >= determined LOD otherwise bone transforms could be missing
---@field protected bCachedLocalBoundsUpToDate boolean @true when CachedLocalBounds is up to date.
---@field private bForceMeshObjectUpdate boolean @If true, UpdateTransform will always result in a call to MeshObject->Update.
---@field public CapsuleIndirectShadowMinVisibility number @Controls how dark the capsule indirect shadow can be.
---@field protected CachedWorldSpaceBounds FBoxSphereBounds @Bounds cached, so they're computed just once.
---@field protected CachedWorldToLocalTransform FMatrix
local USkinnedMeshComponent = {}

---Unload a Skin Weight Profile's skin weight buffer (if created)
---@param InProfileName string
function USkinnedMeshComponent:UnloadSkinWeightProfile(InProfileName) end

---UnHide the specified bone with name.  Currently this just enforces a scale of 0 for the hidden bones.
---Compared to HideBone By Index - This keeps track of list of bones and update when LOD changes
---@param BoneName string
function USkinnedMeshComponent:UnHideBoneByName(BoneName) end

---Transform a location/rotation from world space to bone relative space.
---This is handy if you know the location in world space for a bone attachment, as AttachComponent takes location/rotation in bone-relative space.
---@param BoneName string
---@param InPosition FVector
---@param InRotation FRotator
---@param OutPosition FVector @[out] 
---@param OutRotation FRotator @[out] 
function USkinnedMeshComponent:TransformToBoneSpace(BoneName, InPosition, InRotation, OutPosition, OutRotation) end

---Transform a location/rotation in bone relative space to world space.
---@param BoneName string
---@param InPosition FVector
---@param InRotation FRotator
---@param OutPosition FVector @[out] 
---@param OutRotation FRotator @[out] 
function USkinnedMeshComponent:TransformFromBoneSpace(BoneName, InPosition, InRotation, OutPosition, OutRotation) end

---Allows hiding of a particular material (by ID) on this instance of a SkeletalMesh.
---@param MaterialID integer
---@param SectionIndex integer
---@param bShow boolean
---@param LODIndex integer
function USkinnedMeshComponent:ShowMaterialSection(MaterialID, SectionIndex, bShow, LODIndex) end

---Clear any material visibility modifications made by ShowMaterialSection
---@param LODIndex integer
function USkinnedMeshComponent:ShowAllMaterialSections(LODIndex) end

---@param LODIndex integer
---@param Usage integer
function USkinnedMeshComponent:SetVertexOffsetUsage(LODIndex, Usage) end

---Allow override of vertex colors on a per-component basis, taking array of Blueprint-friendly LinearColors.
---@param LODIndex integer
---@param VertexColors TArray_FLinearColor_
function USkinnedMeshComponent:SetVertexColorOverride_LinearColor(LODIndex, VertexColors) end

---Setup an override Skin Weight Profile for this component
---@param InProfileName string
---@return boolean
function USkinnedMeshComponent:SetSkinWeightProfile(InProfileName) end

---Allow override of skin weights on a per-component basis.
---@param LODIndex integer
---@param SkinWeights TArray_FSkelMeshSkinWeightInfo_
function USkinnedMeshComponent:SetSkinWeightOverride(LODIndex, SkinWeights) end

---Change the SkeletalMesh that is rendered for this Component. Will re-initialize the animation tree etc.
---@param NewMesh USkeletalMesh
---@param bReinitPose boolean @[opt] 
function USkinnedMeshComponent:SetSkeletalMesh(NewMesh, bReinitPose) end

---Set whether this skinned mesh should be rendered as static mesh in a reference pose
---@param bNewValue boolean
function USkinnedMeshComponent:SetRenderStatic(bNewValue) end

---@param LODIndex integer
---@param Offsets TArray_FVector_
function USkinnedMeshComponent:SetPreSkinningOffsets(LODIndex, Offsets) end

---@param LODIndex integer
---@param Offsets TArray_FVector_
function USkinnedMeshComponent:SetPostSkinningOffsets(LODIndex, Offsets) end

---Override the Physics Asset of the mesh. It uses SkeletalMesh.PhysicsAsset, but if you'd like to override use this function
---@param NewPhysicsAsset UPhysicsAsset
---@param bForceReInit boolean @[opt] 
function USkinnedMeshComponent:SetPhysicsAsset(NewPhysicsAsset, bForceReInit) end

---Set MinLodModel of the mesh component
---@param InNewMinLOD integer
function USkinnedMeshComponent:SetMinLOD(InNewMinLOD) end

---Set MasterPoseComponent for this component
---@param NewMasterBoneComponent USkinnedMeshComponent
---@param bForceUpdate boolean @[opt] 
function USkinnedMeshComponent:SetMasterPoseComponent(NewMasterBoneComponent, bForceUpdate) end

---Set ForcedLodModel of the mesh component
---@param InNewForcedLOD integer
function USkinnedMeshComponent:SetForcedLOD(InNewForcedLOD) end

---@param bNewValue boolean
function USkinnedMeshComponent:SetCastCapsuleIndirectShadow(bNewValue) end

---@param bNewValue boolean
function USkinnedMeshComponent:SetCastCapsuleDirectShadow(bNewValue) end

---@param NewValue number
function USkinnedMeshComponent:SetCapsuleIndirectShadowMinVisibility(NewValue) end

---Check whether or not a Skin Weight Profile is currently set
---@return boolean
function USkinnedMeshComponent:IsUsingSkinWeightProfile() end

---Returns whether a specific material section is currently hidden on this component (by using ShowMaterialSection)
---@param MaterialID integer
---@param LODIndex integer
---@return boolean
function USkinnedMeshComponent:IsMaterialSectionShown(MaterialID, LODIndex) end

---Determines if the specified bone is hidden.
---@param BoneName string
---@return boolean
function USkinnedMeshComponent:IsBoneHiddenByName(BoneName) end

---Hides the specified bone with name.  Currently this just enforces a scale of 0 for the hidden bones.
---Compared to HideBone By Index - This keeps track of list of bones and update when LOD changes
---@param BoneName string
---@param PhysBodyOption integer
function USkinnedMeshComponent:HideBoneByName(BoneName, PhysBodyOption) end

---@param LODIndex integer
---@return integer
function USkinnedMeshComponent:GetVertexOffsetUsage(LODIndex) end

---Get Twist and Swing Angle in Degree of Delta Rotation from Reference Pose in Local space
---First this function gets rotation of current, and rotation of ref pose in local space, and
---And gets twist/swing angle value from refpose aligned.
---@param BoneName string
---@param OutTwistAngle number @[out] 
---@param OutSwingAngle number @[out] 
---@return boolean
function USkinnedMeshComponent:GetTwistAndSwingAngleOfDeltaRotationFromRefPose(BoneName, OutTwistAngle, OutSwingAngle) end

---Returns bone name linked to a given named socket on the skeletal mesh component.
---If you're unsure to deal with sockets or bones names, you can use this function to filter through, and always return the bone name.
---@param InSocketName string
---@return string
function USkinnedMeshComponent:GetSocketBoneName(InSocketName) end

---Gets the local-space position of a bone in the reference pose.
---@param BoneIndex integer
---@return FVector
function USkinnedMeshComponent:GetRefPosePosition(BoneIndex) end

---Get Parent Bone of the input bone
---@param BoneName string
---@return string
function USkinnedMeshComponent:GetParentBone(BoneName) end

---Get the number of LODs on this component
---@return integer
function USkinnedMeshComponent:GetNumLODs() end

---Returns the number of bones in the skeleton.
---@return integer
function USkinnedMeshComponent:GetNumBones() end

---Get ForcedLodModel of the mesh component. Note that the actual forced LOD level is the return value minus one and zero means no forced LOD
---@return integer
function USkinnedMeshComponent:GetForcedLOD() end

---Get delta transform from reference pose based on BaseNode.
---This uses last frame up-to-date transform, so it will have a frame delay if you use this info in the AnimGraph
---@param BoneName string
---@param BaseName string @[opt] 
---@return FTransform
function USkinnedMeshComponent:GetDeltaTransformFromRefPose(BoneName, BaseName) end

---Return the name of the Skin Weight Profile that is currently set otherwise returns 'None'
---@return string
function USkinnedMeshComponent:GetCurrentSkinWeightProfileName() end

---Get Bone Name from index
---@param BoneIndex integer
---@return string
function USkinnedMeshComponent:GetBoneName(BoneIndex) end

---Find the index of bone by name. Looks in the current SkeletalMesh being used by this SkeletalMeshComponent.
---@param BoneName string
---@return integer
function USkinnedMeshComponent:GetBoneIndex(BoneName) end

---finds the closest bone to the given location
---@param TestLocation FVector
---@param BoneLocation FVector @[out] 
---@param IgnoreScale number @[opt] 
---@param bRequirePhysicsAsset boolean @[opt] 
---@return string
function USkinnedMeshComponent:FindClosestBone_K2(TestLocation, BoneLocation, IgnoreScale, bRequirePhysicsAsset) end

---Clear any applied vertex color override
---@param LODIndex integer
function USkinnedMeshComponent:ClearVertexColorOverride(LODIndex) end

---Clear the Skin Weight Profile from this component, in case it is set
function USkinnedMeshComponent:ClearSkinWeightProfile() end

---Clear any applied skin weight override
---@param LODIndex integer
function USkinnedMeshComponent:ClearSkinWeightOverride(LODIndex) end

---Tests if BoneName is child of (or equal to) ParentBoneName.
---Note - will return false if ChildBoneIndex is the same as ParentBoneIndex ie. must be strictly a child.
---@param BoneName string
---@param ParentBoneName string
---@return boolean
function USkinnedMeshComponent:BoneIsChildOf(BoneName, ParentBoneName) end

