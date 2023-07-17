---VR Editor Mode. Extends editor viewports with functionality for VR controls and object manipulation
---@class UVREditorMode : UEditorWorldExtension
---@field protected AvatarActor AVREditorAvatarActor @Actor with components to represent the VR avatar in the world, including motion controller meshes
---@field protected UISystem UVREditorUISystem @VR UI system
---@field protected TeleportActor AVREditorTeleporter @Teleporter system
---@field protected AutoScalerSystem UVREditorAutoScaler @Automatic scale system
---@field protected WorldInteraction UViewportWorldInteraction @World interaction manager
---@field protected PlacementSystem UVREditorPlacement
---@field protected Interactors TArray<UVREditorInteractor> @Interactors
---@field private AssetContainer UVREditorAssetContainer @Container of assets
local UVREditorMode = {}

---Gets the world scale factor, which can be multiplied by a scale vector to convert to room space
---@return number
function UVREditorMode:GetWorldScaleFactor() end

