---Axis Gizmo handle for rotation
---@class UPivotRotationGizmoHandleGroup : UAxisGizmoHandleGroup
---@field private RootFullRotationHandleComponent USceneComponent @Root component of all the mesh components that are used to visualize the rotation when dragging
---@field private FullRotationHandleMeshComponent UGizmoHandleMeshComponent @When dragging a rotation handle the full rotation circle appears
---@field private StartRotationIndicatorMeshComponent UGizmoHandleMeshComponent @The mesh that indicated the start rotation
---@field private RootStartRotationIdicatorComponent USceneComponent @The root component of the start rotation indicator
---@field private DeltaRotationIndicatorMeshComponent UGizmoHandleMeshComponent @The mesh that indicated the delta rotation
---@field private RootDeltaRotationIndicatorComponent USceneComponent @The root component of the delta rotation indicator
local UPivotRotationGizmoHandleGroup = {}

