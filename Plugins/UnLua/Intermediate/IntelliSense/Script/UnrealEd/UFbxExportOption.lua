---@class UFbxExportOption : UObject
---@field public FbxExportCompatibility EFbxExportCompatibility @This will set the fbx sdk compatibility when exporting to fbx file. The default value is 2013
---@field public bASCII boolean @If enabled, save as ascii instead of binary
---@field public bForceFrontXAxis boolean @If enabled, export with X axis as the front axis instead of default -Y
---@field public VertexColor boolean @If enabled, export vertex color
---@field public LevelOfDetail boolean @If enabled, export the level of detail
---@field public Collision boolean @If enabled, export collision
---@field public bExportMorphTargets boolean @If enabled, export the morph targets
---@field public bExportPreviewMesh boolean @If enable, the preview mesh link to the exported animations will be also exported.
---@field public MapSkeletalMotionToRoot boolean @If enable, Map skeletal actor motion to the root bone of the skeleton.
---@field public bExportLocalTime boolean @If enabled, export sequencer animation in its local time, relative to its master sequence.
local UFbxExportOption = {}

