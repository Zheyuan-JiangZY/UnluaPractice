---Base class for gizmo handles
---@class UGizmoHandleGroup : USceneComponent
---@field protected GizmoMaterial UMaterialInterface @Gizmo material (opaque)
---@field protected TranslucentGizmoMaterial UMaterialInterface @Gizmo material (translucent)
---@field protected Handles TArray<FGizmoHandle> @All the StaticMeshes for this handle type
---@field protected OwningTransformGizmoActor ABaseTransformGizmo @The actor transform gizmo owning this handlegroup
---@field protected DragOperationComponent UViewportDragOperationComponent
local UGizmoHandleGroup = {}

