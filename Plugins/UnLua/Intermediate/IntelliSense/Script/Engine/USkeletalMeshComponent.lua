---SkeletalMeshComponent is used to create an instance of an animated SkeletalMesh asset.
---@class USkeletalMeshComponent : USkinnedMeshComponent
---@field public AnimBlueprintGeneratedClass TSubclassOf<UObject>
---@field public AnimClass TSubclassOf<UAnimInstance> @The AnimBlueprint class to use. Use 'SetAnimInstanceClass' to change at runtime.
---@field public AnimScriptInstance UAnimInstance @The active animation graph program instance.
---@field public SubInstances TArray<UAnimInstance>
---@field public PostProcessAnimInstance UAnimInstance @An instance created from the PostPhysicsBlueprint property of the skeletal mesh we're using, Runs after (and receives pose from) the main anim instance.
---@field public AnimationData FSingleAnimationPlayData
---@field public RootBoneTranslation FVector @Offset of the root bone from the reference pose. Used to offset bounding box.
---@field public LineCheckBoundsScale FVector @If bEnableLineCheckWithBounds is true, scale the bounds by this value before doing line check.
---@field private LinkedInstances TArray<UAnimInstance> @Any running linked anim instances
---@field private CachedBoneSpaceTransforms TArray<FTransform> @Cached BoneSpaceTransforms for Update Rate optimization.
---@field private CachedComponentSpaceTransforms TArray<FTransform> @Cached SpaceBases for Update Rate optimization.
---@field public GlobalAnimRateScale number @Used to scale speed of all animations on this skeletal mesh.
---@field public KinematicBonesUpdateType integer @If we are running physics, should we update non-simulated bones based on the animation bone positions.
---@field public PhysicsTransformUpdateMode integer @Whether physics simulation updates component transform.
---@field protected AnimationMode integer @Whether to use Animation Blueprint or play Single Animation Asset.
---@field private bDisablePostProcessBlueprint boolean @Controls whether or not this component will evaluate its post process instance. The post-process Instance is dictated by the skeletal mesh so this is used for per-instance control.
---@field public bUpdateOverlapsOnAnimationFinalize boolean @Controls whether blending in physics bones will refresh overlaps on this component, defaults to true but can be disabled in cases where we know anim->physics blending doesn't meaningfully change overlaps
---@field public bHasValidBodies boolean @If true, there is at least one body in the current PhysicsAsset with a valid bone in the current SkeletalMesh
---@field public bBlendPhysics boolean @Enables blending in of physics bodies whether Simulate or not
---@field public bEnablePhysicsOnDedicatedServer boolean @If true, simulate physics for this component on a dedicated server. This should be set if simulating physics and replicating with a dedicated server.     Note: This property cannot be changed at runtime.
---@field public bUpdateJointsFromAnimation boolean @If we should pass joint position to joints each frame, so that they can be used by motorized joints to drive the ragdoll based on the animation.
---@field public bDisableClothSimulation boolean @Disable cloth simulation and play original animation without simulation
---@field private bDisableRigidBodyAnimNode boolean @Disable rigid body animation nodes and play original animation without simulation
---@field private bAllowAnimCurveEvaluation boolean @Disable animation curves for this component. If this is set true, no curves will be processed
---@field public bCollideWithEnvironment boolean @can't collide with part of environment if total collision volumes exceed 16 capsules or 32 planes per convex
---@field public bCollideWithAttachedChildren boolean @can't collide with part of attached children if total collision volumes exceed 16 capsules or 32 planes per convex
---@field public bLocalSpaceSimulation boolean @It's worth trying this option when you feel that the current cloth simulation is unstable. The scale of the actor is maintained during the simulation. It is possible to add the inertia effects to the simulation, through the inertiaScale parameter of the clothing material. So with an inertiaScale of 1.0 there should be no visible difference between local space and global space simulation. Known issues: - Currently there's simulation issues when this feature is used in 3.x (DE4076) So if localSpaceSim is enabled there's no inertia effect when the global pose of the clothing actor changes.
---@field public bResetAfterTeleport boolean @reset the clothing after moving the clothing position (called teleport)
---@field public bDeferKinematicBoneUpdate boolean @Whether animation and world transform updates are deferred. If this is on, the kinematic bodies (scene query data) will not update until the next time the physics simulation is run
---@field public bNoSkeletonUpdate boolean @Skips Ticking and Bone Refresh.
---@field public bPauseAnims boolean @pauses this component's animations (doesn't tick them, but still refreshes bones)
---@field public bUseRefPoseOnInitAnim boolean @On InitAnim should we set to ref pose (if false use first tick of animation data)
---@field public bEnablePerPolyCollision boolean @Uses skinned data for collision data.
---@field public bForceRefpose boolean @If true, force the mesh into the reference pose - is an optimization.
---@field public bOnlyAllowAutonomousTickPose boolean @If true TickPose() will not be called from the Component's TickComponent function. It will instead be called from Autonomous networking updates. See ACharacter.
---@field public bIsAutonomousTickPose boolean @True if calling TickPose() from Autonomous networking updates. See ACharacter.
---@field public bOldForceRefPose boolean @If bForceRefPose was set last tick.
---@field public bShowPrePhysBones boolean @Bool that enables debug drawing of the skeleton before it is passed to the physics. Useful for debugging animation-driven physics.
---@field public bRequiredBonesUpToDate boolean @If false, indicates that on the next call to UpdateSkelPose the RequiredBones array should be recalculated.
---@field public bAnimTreeInitialised boolean @If true, AnimTree has been initialised.
---@field public bIncludeComponentLocationIntoBounds boolean @If true, the Location of this Component will be included into its bounds calculation (this can be useful when using SMU_OnlyTickPoseWhenRendered on a character that moves away from the root and no bones are left near the origin of the component)
---@field public bEnableLineCheckWithBounds boolean @If true, line checks will test against the bounding box of this skeletal mesh component and return a hit if there is a collision.
---@field public bPropagateCurvesToSlaves boolean @If true, propagates calls to ApplyAnimationCurvesToComponent for slave components, only needed if slave components do not tick themselves
---@field public bSkipKinematicUpdateWhenInterpolating boolean @Whether to skip UpdateKinematicBonesToAnim() when interpolating. Kinematic bones are updated to the target interpolation pose only on ticks when they are evaluated.
---@field public bSkipBoundsUpdateWhenInterpolating boolean @Whether to skip bounds update when interpolating. Bounds are updated to the target interpolation pose only on ticks when they are evaluated.
---@field protected bUpdateAnimationInEditor boolean @If true, this will Tick until disabled
---@field protected bUpdateClothInEditor boolean @If true, will play cloth in editor
---@field private bNeedsQueuedAnimEventsDispatched boolean
---@field public CachedAnimCurveUidVersion integer @Cache AnimCurveUidVersion from Skeleton and this will be used to identify if it needs to be updated
---@field public ClothBlendWeight number @weight to blend between simulated results and key-framed positions if weight is 1.0, shows only cloth simulation results and 0.0 will show only skinned results
---@field public bWaitForParallelClothTask boolean @Whether we should stall the Cloth tick task until the cloth simulation is complete. This is required if we want up-to-date cloth data on the game thread, for example if we want to generate particles at cloth vertices.
---@field private DisallowedAnimCurves TArray<string> @You can choose to disable certain curves if you prefer. This is transient curves that will be ignored by animation system if you choose this
---@field public BodySetup UBodySetup @Used for per poly collision. In 99% of cases you will be better off using a Physics Asset. This BodySetup is per instance because all modification of vertices is done in place
---@field public OnConstraintBroken MulticastDelegate @Notification when constraint is broken.
---@field public ClothingSimulationFactory TSubclassOf<UClothingSimulationFactory> @Class of the object responsible for
---@field private TeleportDistanceThreshold number @Conduct teleportation if the character's movement is greater than this threshold in 1 frame. Zero or negative values will skip the check. You can also do force teleport manually using ForceNextUpdateTeleport() / ForceNextUpdateTeleportAndReset().
---@field private TeleportRotationThreshold number @Rotation threshold in degrees, ranging from 0 to 180. Conduct teleportation if the character's rotation is greater than this threshold in 1 frame. Zero or negative values will skip the check.
---@field private LastPoseTickFrame integer @Can't rely on time value, because those may be affected by dilation and whether or not the game is paused. Also can't just rely on a flag as other components (like CharacterMovementComponent) may tick the pose and we can't guarantee tick order.
---@field private ClothingInteractor UClothingSimulationInteractor @Object responsible for interacting with the clothing simulation. Blueprints and code can call/set data on this from the game thread and the next time it is safe to do so the interactor will sync to the simulation context
---@field public OnAnimInitialized MulticastDelegate @Broadcast when the components anim instance is initialized
local USkeletalMeshComponent = {}

---Runs through all layer nodes, attempting to find layer nodes that are currently running the specified class, then resets each to its default value.
---State sharing rules are as with SetLayerOverlay.
---If InClass is null, does nothing.
---@param InClass TSubclassOf_UAnimInstance_
function USkeletalMeshComponent:UnlinkAnimClassLayers(InClass) end

---If this component has a valid MasterPoseComponent and has previously had its cloth bound to the
---MCP, this function will unbind the cloth and resume simulation.
---space, we will restore this setting. This will cause the master component to reset which may be
---undesirable.
---@param bRestoreSimulationSpace boolean @[opt] 
function USkeletalMeshComponent:UnbindClothFromMasterPoseComponent(bRestoreSimulationSpace) end

---Toggles whether the post process blueprint will run for this component
function USkeletalMeshComponent:ToggleDisablePostProcessBlueprint() end

---Terminate physics on all bodies below the named bone, effectively disabling collision forever. If you terminate, you won't be able to re-init later.
---@param ParentBoneName string
function USkeletalMeshComponent:TermBodiesBelow(ParentBoneName) end

---Stops simulating clothing, but does not show clothing ref pose. Keeps the last known simulation state
function USkeletalMeshComponent:SuspendClothingSimulation() end

---Animation play functions
---      *
---      * These changes status of animation instance, which is transient data, which means it won't serialize with this component
---      * Because of that reason, it is not safe to be used during construction script
---      * Please use OverrideAnimationDatat for construction script. That will override AnimationData to be serialized
function USkeletalMeshComponent:Stop() end

---Takes a snapshot of this skeletal mesh component's pose and saves it to the specified snapshot.
---The snapshot is taken at the current LOD, so if for example you took the snapshot at LOD1
---and then used it at LOD0 any bones not in LOD1 will use the reference pose
---@param Snapshot FPoseSnapshot @[out] 
function USkeletalMeshComponent:SnapshotPose(Snapshot) end

---Sets whether or not to animate cloth in the editor. Requires Update Animation In Editor to also be true.
---This is supported only in the editor
---@param NewUpdateState boolean
function USkeletalMeshComponent:SetUpdateClothInEditor(NewUpdateState) end

---Sets whether or not to force tick component in order to update animation and refresh transform for this component
---This is supported only in the editor
---@param NewUpdateState boolean
function USkeletalMeshComponent:SetUpdateAnimationInEditor(NewUpdateState) end

---Sets the teleportation rotation threshold.
---@param Threshold number
function USkeletalMeshComponent:SetTeleportRotationThreshold(Threshold) end

---Sets the teleportation distance threshold.
---@param Threshold number
function USkeletalMeshComponent:SetTeleportDistanceThreshold(Threshold) end

---Animation play functions
---      *
---      * These changes status of animation instance, which is transient data, which means it won't serialize with this component
---      * Because of that reason, it is not safe to be used during construction script
---      * Please use OverrideAnimationDatat for construction script. That will override AnimationData to be serialized
---@param InPos number
---@param bFireNotifies boolean @[opt] 
function USkeletalMeshComponent:SetPosition(InPos, bFireNotifies) end

---Animation play functions
---      *
---      * These changes status of animation instance, which is transient data, which means it won't serialize with this component
---      * Because of that reason, it is not safe to be used during construction script
---      * Please use OverrideAnimationDatat for construction script. That will override AnimationData to be serialized
---@param Rate number
function USkeletalMeshComponent:SetPlayRate(Rate) end

---This is global set up for setting physics blend weight
---This does multiple things automatically
---If PhysicsBlendWeight == 1.f, it will enable Simulation, and if PhysicsBlendWeight == 0.f, it will disable Simulation.
---Also it will respect each body's setup, so if the body is fixed, it won't simulate. Vice versa
---So if you'd like all bodies to change manually, do not use this function, but SetAllBodiesPhysicsBlendWeight
---@param PhysicsBlendWeight number
function USkeletalMeshComponent:SetPhysicsBlendWeight(PhysicsBlendWeight) end

---Changes the value of bNotifyRigidBodyCollision on all bodies below a given bone
---@param bNewNotifyRigidBodyCollision boolean
---@param BoneName string @[opt] 
---@param bIncludeSelf boolean @[opt] 
function USkeletalMeshComponent:SetNotifyRigidBodyCollisionBelow(bNewNotifyRigidBodyCollision, BoneName, bIncludeSelf) end

---Set Morph Target with Name and Value(0-1)
---@param MorphTargetName string
---@param Value number
---@param bRemoveZeroWeight boolean @[opt] 
function USkeletalMeshComponent:SetMorphTarget(MorphTargetName, Value, bRemoveZeroWeight) end

---Disable physics blending of bones *
---@param bNewBlendPhysics boolean
function USkeletalMeshComponent:SetEnablePhysicsBlending(bNewBlendPhysics) end

---Enables or disables gravity to all bodies below the given bone.
---NAME_None indicates all bodies will be edited.
---In that case, consider using UPrimitiveComponent::EnableGravity.
---@param bEnableGravity boolean
---@param BoneName string
---@param bIncludeSelf boolean @[opt] 
function USkeletalMeshComponent:SetEnableGravityOnAllBodiesBelow(bEnableGravity, BoneName, bIncludeSelf) end

---Enables or disables gravity for the given bone.
---NAME_None indicates the root body will be edited.
---If the bone name given is otherwise invalid, nothing happens.
---@param bEnableGravity boolean
---@param BoneName string
function USkeletalMeshComponent:SetEnableBodyGravity(bEnableGravity, BoneName) end

---Sets whether the post process blueprint is currently running for this component.
---If it is not currently running, and is set to run, the instance will be reinitialized
---@param bInDisablePostProcess boolean
function USkeletalMeshComponent:SetDisablePostProcessBlueprint(bInDisablePostProcess) end

---@param bInDisableAnimCurves boolean
function USkeletalMeshComponent:SetDisableAnimCurves(bInDisableAnimCurves) end

---Sets the constraint profile properties (limits, motors, etc...) to match the constraint profile as defined in the physics asset for all constraints. If profile name is not found the joint is set to use the default constraint profile.
---@param ProfileName string
---@param bDefaultIfNotFound boolean @[opt] 
function USkeletalMeshComponent:SetConstraintProfileForAll(ProfileName, bDefaultIfNotFound) end

---Sets the constraint profile properties (limits, motors, etc...) to match the constraint profile as defined in the physics asset. If profile name is not found the joint is set to use the default constraint profile.
---@param JointName string
---@param ProfileName string
---@param bDefaultIfNotFound boolean @[opt] 
function USkeletalMeshComponent:SetConstraintProfile(JointName, ProfileName, bDefaultIfNotFound) end

---@param Scale number
function USkeletalMeshComponent:SetClothMaxDistanceScale(Scale) end

---Changes the value of bNotifyRigidBodyCollision for a given body
---@param bNewNotifyRigidBodyCollision boolean
---@param BoneName string @[opt] 
function USkeletalMeshComponent:SetBodyNotifyRigidBodyCollision(bNewNotifyRigidBodyCollision, BoneName) end

---Set the anim instance class. Clears and re-initializes the anim instance with the new class and sets animation mode to 'AnimationBlueprint'
---@param NewClass TSubclassOf_UObject_
function USkeletalMeshComponent:SetAnimClass(NewClass) end

---Below are the interface to control animation when animation mode, not blueprint mode *
---@param InAnimationMode integer
function USkeletalMeshComponent:SetAnimationMode(InAnimationMode) end

---Animation play functions
---      *
---      * These changes status of animation instance, which is transient data, which means it won't serialize with this component
---      * Because of that reason, it is not safe to be used during construction script
---      * Please use OverrideAnimationDatat for construction script. That will override AnimationData to be serialized
---@param NewAnimToPlay UAnimationAsset
function USkeletalMeshComponent:SetAnimation(NewAnimToPlay) end

---Sets the Angular Motion Ranges for a named bone
---@param InBoneName string
---@param Swing1LimitAngle number
---@param TwistLimitAngle number
---@param Swing2LimitAngle number
function USkeletalMeshComponent:SetAngularLimits(InBoneName, Swing1LimitAngle, TwistLimitAngle, Swing2LimitAngle) end

---Sets whether or not to allow rigid body animation nodes for this component
---@param bInAllow boolean
---@param bReinitAnim boolean @[opt] 
function USkeletalMeshComponent:SetAllowRigidBodyAnimNode(bInAllow, bReinitAnim) end

---resets, and then only allow the following list to be allowed/disallowed
---@param List TArray_string_
---@param bAllow boolean
function USkeletalMeshComponent:SetAllowedAnimCurvesEvaluation(List, bAllow) end

---@param bInAllow boolean
function USkeletalMeshComponent:SetAllowAnimCurveEvaluation(bInAllow) end

---Enable or Disable AngularVelocityDrive. If motor is in SLERP mode it will be turned on if either EnableSwingDrive OR EnableTwistDrive are enabled. In Twist and Swing mode the twist and the swing can be controlled individually.
---@param bEnableSwingDrive boolean
---@param bEnableTwistDrive boolean
---@param bSkipCustomPhysicsType boolean @[opt] 
function USkeletalMeshComponent:SetAllMotorsAngularVelocityDrive(bEnableSwingDrive, bEnableTwistDrive, bSkipCustomPhysicsType) end

---Enable or Disable AngularPositionDrive. If motor is in SLERP mode it will be turned on if either EnableSwingDrive OR EnableTwistDrive are enabled. In Twist and Swing mode the twist and the swing can be controlled individually.
---@param bEnableSwingDrive boolean
---@param bEnableTwistDrive boolean
---@param bSkipCustomPhysicsType boolean @[opt] 
function USkeletalMeshComponent:SetAllMotorsAngularPositionDrive(bEnableSwingDrive, bEnableTwistDrive, bSkipCustomPhysicsType) end

---Set Angular Drive motors params for all constraint instances
---@param InSpring number
---@param InDamping number
---@param InForceLimit number
---@param bSkipCustomPhysicsType boolean @[opt] 
function USkeletalMeshComponent:SetAllMotorsAngularDriveParams(InSpring, InDamping, InForceLimit, bSkipCustomPhysicsType) end

---Set bSimulatePhysics to true for all bone bodies. Does not change the component bSimulatePhysics flag.
---@param bNewSimulate boolean
function USkeletalMeshComponent:SetAllBodiesSimulatePhysics(bNewSimulate) end

---@param PhysicsBlendWeight number
---@param bSkipCustomPhysicsType boolean @[opt] 
function USkeletalMeshComponent:SetAllBodiesPhysicsBlendWeight(PhysicsBlendWeight, bSkipCustomPhysicsType) end

---Set all of the bones below passed in bone to be simulated
---@param InBoneName string
---@param bNewSimulate boolean
---@param bIncludeSelf boolean @[opt] 
function USkeletalMeshComponent:SetAllBodiesBelowSimulatePhysics(InBoneName, bNewSimulate, bIncludeSelf) end

---Set all of the bones below passed in bone to be simulated
---@param InBoneName string
---@param PhysicsBlendWeight number
---@param bSkipCustomPhysicsType boolean @[opt] 
---@param bIncludeSelf boolean @[opt] 
function USkeletalMeshComponent:SetAllBodiesBelowPhysicsBlendWeight(InBoneName, PhysicsBlendWeight, bSkipCustomPhysicsType, bIncludeSelf) end

---Resumes a previously suspended clothing simulation, teleporting the clothing on the next tick
function USkeletalMeshComponent:ResumeClothingSimulation() end

---Reset the teleport mode of a next update to 'Continuous'
function USkeletalMeshComponent:ResetClothTeleportMode() end

---Informs any active anim instances (main instance, linked instances, post instance) that a dynamics reset is required
---for example if a teleport occurs.
---@param InTeleportType ETeleportType @[opt] 
function USkeletalMeshComponent:ResetAnimInstanceDynamics(InTeleportType) end

---By reset, it will allow all the curves to be evaluated
function USkeletalMeshComponent:ResetAllowedAnimCurveEvaluation() end

---Allows you to reset bodies Simulate state based on where bUsePhysics is set to true in the BodySetup.
function USkeletalMeshComponent:ResetAllBodiesSimulatePhysics() end

---Animation play functions
---       *
---       * These changes status of animation instance, which is transient data, which means it won't serialize with this component
---       * Because of that reason, it is not safe to be used during construction script
---       * Please use OverrideAnimationDatat for construction script. That will override AnimationData to be serialized
---@param NewAnimToPlay UAnimationAsset
---@param bLooping boolean
function USkeletalMeshComponent:PlayAnimation(NewAnimToPlay, bLooping) end

---Animation play functions
---      *
---      * These changes status of animation instance, which is transient data, which means it won't serialize with this component
---      * Because of that reason, it is not safe to be used during construction script
---      * Please use OverrideAnimationDatat for construction script. That will override AnimationData to be serialized
---@param bLooping boolean
function USkeletalMeshComponent:Play(bLooping) end

---This overrides current AnimationData parameter in the SkeletalMeshComponent. This will serialize when the component serialize
---so it can be used during construction script. However note that this will override current existing data
---This can be useful if you'd like to make a blueprint with custom default animation per component
---This sets single player mode, which means you can't use AnimBlueprint with it
---@param InAnimToPlay UAnimationAsset
---@param bIsLooping boolean @[opt] 
---@param bIsPlaying boolean @[opt] 
---@param Position number @[opt] 
---@param PlayRate number @[opt] 
function USkeletalMeshComponent:OverrideAnimationData(InAnimToPlay, bIsLooping, bIsPlaying, Position, PlayRate) end

---Runs through all nodes, attempting to find linked instance by name/tag, then sets the class of each node if the tag matches
---@param InTag string
---@param InClass TSubclassOf_UAnimInstance_
function USkeletalMeshComponent:LinkAnimGraphByTag(InTag, InClass) end

---Runs through all layer nodes, attempting to find layer nodes that are implemented by the specified class, then sets up a linked instance of the class for each.
---Allocates one linked instance to run each of the groups specified in the class, so state is shared. If a layer is not grouped (ie. NAME_None), then state is not shared
---and a separate linked instance is allocated for each layer node.
---If InClass is null, then all layers are reset to their defaults.
---@param InClass TSubclassOf_UAnimInstance_
function USkeletalMeshComponent:LinkAnimClassLayers(InClass) end

---Given a world position, find the closest point on the physics asset. Note that this is independent of collision and welding. This is based purely on animation position
---@param WorldPosition FVector
---@param ClosestWorldPosition FVector @[out] 
---@param Normal FVector @[out] 
---@param BoneName string @[out] 
---@param Distance number @[out] 
---@return boolean
function USkeletalMeshComponent:K2_GetClosestPointOnPhysicsAsset(WorldPosition, ClosestWorldPosition, Normal, BoneName, Distance) end

---Animation play functions
---      *
---      * These changes status of animation instance, which is transient data, which means it won't serialize with this component
---      * Because of that reason, it is not safe to be used during construction script
---      * Please use OverrideAnimationDatat for construction script. That will override AnimationData to be serialized
---@return boolean
function USkeletalMeshComponent:IsPlaying() end

---Gets whether or not the clothing simulation is currently suspended
---@return boolean
function USkeletalMeshComponent:IsClothingSimulationSuspended() end

---Checks whether or not gravity is enabled on the given bone.
---NAME_None indicates the root body should be queried.
---If the bone name given is otherwise invalid, false is returned.
---@param BoneName string
---@return boolean
function USkeletalMeshComponent:IsBodyGravityEnabled(BoneName) end

---Returns whether there are any valid instances to run, currently this means whether we have
---have an animation instance or a post process instance available to process.
---@return boolean
function USkeletalMeshComponent:HasValidAnimationInstance() end

---Gets the teleportation rotation threshold.
---@return number
function USkeletalMeshComponent:GetTeleportRotationThreshold() end

---Gets the teleportation distance threshold.
---@return number
function USkeletalMeshComponent:GetTeleportDistanceThreshold() end

---Get string type custom attribute value.
---@param BoneName string
---@param AttributeName string
---@param OutValue string @[out] 
---@param LookupType ECustomBoneAttributeLookup @[opt] 
---@return boolean
function USkeletalMeshComponent:GetStringAttribute_Ref(BoneName, AttributeName, OutValue, LookupType) end

---Get string type custom attribute value.
---@param BoneName string
---@param AttributeName string
---@param DefaultValue string
---@param OutValue string @[out] 
---@param LookupType ECustomBoneAttributeLookup @[opt] 
---@return boolean
function USkeletalMeshComponent:GetStringAttribute(BoneName, AttributeName, DefaultValue, OutValue, LookupType) end

---Returns the center of mass of the skeletal mesh, instead of the root body's location
---@return FVector
function USkeletalMeshComponent:GetSkeletalCenterOfMass() end

---Returns the active post process instance is one is available. This is set on the mesh that this
---component is using, and is evaluated immediately after the main instance.
---@return UAnimInstance
function USkeletalMeshComponent:GetPostProcessInstance() end

---Animation play functions
---      *
---      * These changes status of animation instance, which is transient data, which means it won't serialize with this component
---      * Because of that reason, it is not safe to be used during construction script
---      * Please use OverrideAnimationDatat for construction script. That will override AnimationData to be serialized
---@return number
function USkeletalMeshComponent:GetPosition() end

---Animation play functions
---      *
---      * These changes status of animation instance, which is transient data, which means it won't serialize with this component
---      * Because of that reason, it is not safe to be used during construction script
---      * Please use OverrideAnimationDatat for construction script. That will override AnimationData to be serialized
---@return number
function USkeletalMeshComponent:GetPlayRate() end

---Get Morph target with given name
---@param MorphTargetName string
---@return number
function USkeletalMeshComponent:GetMorphTarget(MorphTargetName) end

---Gets the layer linked instance corresponding to the specified group
---@param InGroup string
---@return UAnimInstance
function USkeletalMeshComponent:GetLinkedAnimLayerInstanceByGroup(InGroup) end

---Gets the first layer linked instance corresponding to the specified class
---@param InClass TSubclassOf_UAnimInstance_
---@return UAnimInstance
function USkeletalMeshComponent:GetLinkedAnimLayerInstanceByClass(InClass) end

---Returns all tagged linked instance nodes that match the tag.
---@param InTag string
---@param OutLinkedInstances TArray_UAnimInstance_ @[out] 
function USkeletalMeshComponent:GetLinkedAnimGraphInstancesByTag(InTag, OutLinkedInstances) end

---Returns the a tagged linked instance node. If no linked instances are found or none are tagged with the
---supplied name, this will return NULL.
---@param InTag string
---@return UAnimInstance
function USkeletalMeshComponent:GetLinkedAnimGraphInstanceByTag(InTag) end

---Get integer type custom attribute value.
---@param BoneName string
---@param AttributeName string
---@param OutValue integer @[out] 
---@param LookupType ECustomBoneAttributeLookup @[opt] 
---@return boolean
function USkeletalMeshComponent:GetIntegerAttribute_Ref(BoneName, AttributeName, OutValue, LookupType) end

---Get integer type custom attribute value.
---@param BoneName string
---@param AttributeName string
---@param DefaultValue integer
---@param OutValue integer @[out] 
---@param LookupType ECustomBoneAttributeLookup @[opt] 
---@return boolean
function USkeletalMeshComponent:GetIntegerAttribute(BoneName, AttributeName, DefaultValue, OutValue, LookupType) end

---Get float type custom attribute value.
---@param BoneName string
---@param AttributeName string
---@param OutValue number @[out] 
---@param LookupType ECustomBoneAttributeLookup @[opt] 
---@return boolean
function USkeletalMeshComponent:GetFloatAttribute_Ref(BoneName, AttributeName, OutValue, LookupType) end

---Get float type custom attribute value.
---@param BoneName string
---@param AttributeName string
---@param DefaultValue number
---@param OutValue number @[out] 
---@param LookupType ECustomBoneAttributeLookup @[opt] 
---@return boolean
function USkeletalMeshComponent:GetFloatAttribute(BoneName, AttributeName, DefaultValue, OutValue, LookupType) end

---Gets whether the post process blueprint is currently disabled for this component
---@return boolean
function USkeletalMeshComponent:GetDisablePostProcessBlueprint() end

---@return boolean
function USkeletalMeshComponent:GetDisableAnimCurves() end

---Gets the current Angular state for a named bone constraint
---@param InBoneName string
---@param Swing1Angle number @[out] 
---@param TwistAngle number @[out] 
---@param Swing2Angle number @[out] 
function USkeletalMeshComponent:GetCurrentJointAngles(InBoneName, Swing1Angle, TwistAngle, Swing2Angle) end

---Get/Set the max distance scale of clothing mesh vertices
---@return number
function USkeletalMeshComponent:GetClothMaxDistanceScale() end

---Get the current interactor for a clothing simulation, if the current simulation supports runtime interaction.
---@return UClothingSimulationInteractor
function USkeletalMeshComponent:GetClothingSimulationInteractor() end

---Returns the mass (in kg) of the given bone
---@param BoneName string @[opt] 
---@param bScaleMass boolean @[opt] 
---@return number
function USkeletalMeshComponent:GetBoneMass(BoneName, bScaleMass) end

---Returns the animation instance that is driving the class (if available). This is typically an instance of
---the class set as AnimBlueprintGeneratedClass (generated by an animation blueprint)
---Since this instance is transient, it is not safe to be used during construction script
---@return UAnimInstance
function USkeletalMeshComponent:GetAnimInstance() end

---Get the anim instance class via getter callable by sequencer.
---@return TSubclassOf_UObject_
function USkeletalMeshComponent:GetAnimClass() end

---@return integer
function USkeletalMeshComponent:GetAnimationMode() end

---@return boolean
function USkeletalMeshComponent:GetAllowRigidBodyAnimNode() end

---@return boolean
function USkeletalMeshComponent:GetAllowedAnimCurveEvaluate() end

---Used to indicate we should force 'teleport and reset' during the next call to UpdateClothState.
---This can be used to reset it from a bad state or by a teleport where the old state is not important anymore.
function USkeletalMeshComponent:ForceClothNextUpdateTeleportAndReset() end

---Used to indicate we should force 'teleport' during the next call to UpdateClothState,
---This will transform positions and velocities and thus keep the simulation state, just translate it to a new pose.
function USkeletalMeshComponent:ForceClothNextUpdateTeleport() end

---Find Constraint Name from index
---@param ConstraintIndex integer
---@return string
function USkeletalMeshComponent:FindConstraintBoneName(ConstraintIndex) end

---Clear all Morph Target that are set to this mesh
function USkeletalMeshComponent:ClearMorphTargets() end

---Break a constraint off a Gore mesh.
---@param Impulse FVector
---@param HitLocation FVector
---@param InBoneName string
function USkeletalMeshComponent:BreakConstraint(Impulse, HitLocation, InBoneName) end

---If this component has a valid MasterPoseComponent then this function makes cloth items on the slave component
---take the transforms of the cloth items on the master component instead of simulating separately.
---The meshes used in the components must be identical for the cloth to bind correctly
function USkeletalMeshComponent:BindClothToMasterPoseComponent() end

---@param NameOfCurve string
---@param bAllow boolean
function USkeletalMeshComponent:AllowAnimCurveEvaluation(NameOfCurve, bAllow) end

---Add impulse to all single rigid bodies below. Good for one time instant burst.
---@param Impulse FVector
---@param BoneName string @[opt] 
---@param bVelChange boolean @[opt] 
---@param bIncludeSelf boolean @[opt] 
function USkeletalMeshComponent:AddImpulseToAllBodiesBelow(Impulse, BoneName, bVelChange, bIncludeSelf) end

---Add a force to all rigid bodies below.
---This is like a 'thruster'. Good for adding a burst over some (non zero) time. Should be called every frame for the duration of the force.
---@param Force FVector
---@param BoneName string @[opt] 
---@param bAccelChange boolean @[opt] 
---@param bIncludeSelf boolean @[opt] 
function USkeletalMeshComponent:AddForceToAllBodiesBelow(Force, BoneName, bAccelChange, bIncludeSelf) end

---Accumulate AddPhysicsBlendWeight to physics blendweight for all of the bones below passed in bone to be simulated
---@param InBoneName string
---@param AddPhysicsBlendWeight number
---@param bSkipCustomPhysicsType boolean @[opt] 
function USkeletalMeshComponent:AccumulateAllBodiesBelowPhysicsBlendWeight(InBoneName, AddPhysicsBlendWeight, bSkipCustomPhysicsType) end

