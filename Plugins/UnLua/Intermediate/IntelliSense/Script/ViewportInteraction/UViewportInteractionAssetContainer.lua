---Asset container for viewport interaction.
---@class UViewportInteractionAssetContainer : UDataAsset
---@field public GizmoHandleSelectedSound USoundBase @Sound
---@field public GizmoHandleDropSound USoundBase
---@field public SelectionChangeSound USoundBase
---@field public SelectionDropSound USoundBase
---@field public SelectionStartDragSound USoundBase
---@field public GridSnapSound USoundBase
---@field public ActorSnapSound USoundBase
---@field public UndoSound USoundBase
---@field public RedoSound USoundBase
---@field public GridMesh UStaticMesh @Meshes
---@field public TranslationHandleMesh UStaticMesh
---@field public UniformScaleHandleMesh UStaticMesh
---@field public ScaleHandleMesh UStaticMesh
---@field public PlaneTranslationHandleMesh UStaticMesh
---@field public RotationHandleMesh UStaticMesh
---@field public RotationHandleSelectedMesh UStaticMesh
---@field public StartRotationIndicatorMesh UStaticMesh
---@field public CurrentRotationIndicatorMesh UStaticMesh
---@field public FreeRotationHandleMesh UStaticMesh
---@field public GridMaterial UMaterialInterface @Materials
---@field public TransformGizmoMaterial UMaterialInterface
---@field public TranslucentTransformGizmoMaterial UMaterialInterface
local UViewportInteractionAssetContainer = {}

