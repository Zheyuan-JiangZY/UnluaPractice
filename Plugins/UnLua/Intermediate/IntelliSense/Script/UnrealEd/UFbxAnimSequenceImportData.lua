---Import data and options used when importing any mesh from FBX
---@class UFbxAnimSequenceImportData : UFbxAssetImportData
---@field public bImportMeshesInBoneHierarchy boolean @If checked, meshes nested in bone hierarchies will be imported instead of being converted to bones.
---@field public AnimationLength integer @Which animation range to import. The one defined at Exported, at Animated time or define a range manually
---@field public FrameImportRange FInt32Interval @Frame range used when Set Range is used in Animation Length
---@field public bUseDefaultSampleRate boolean @If enabled, samples all animation curves to 30 FPS
---@field public CustomSampleRate integer @Sample fbx animation data at the specified sample rate, 0 find automaticaly the best sample rate
---@field public SourceAnimationName string @Name of source animation that was imported, used to reimport correct animation from the FBX file
---@field public bImportCustomAttribute boolean @Import if custom attribute as a curve within the animation
---@field public bDeleteExistingCustomAttributeCurves boolean @If true, all previous custom attribute curves will be deleted when doing a re-import.
---@field public bDeleteExistingNonCurveCustomAttributes boolean @If true, all previous non-curve custom attributes will be deleted when doing a re-import.
---@field public bImportBoneTracks boolean @Import bone transform tracks. If false, this will discard any bone transform tracks. (useful for curves only animations)
---@field public bSetMaterialDriveParameterOnCustomAttribute boolean @Set Material Curve Type for all custom attributes that exists
---@field public MaterialCurveSuffixes TArray<string> @Set Material Curve Type for the custom attribute with the following suffixes. This doesn't matter if Set Material Curve Type is true
---@field public bRemoveRedundantKeys boolean @When importing custom attribute as curve, remove redundant keys
---@field public bDeleteExistingMorphTargetCurves boolean @If enabled, this will delete this type of asset from the FBX
---@field public bDoNotImportCurveWithZero boolean @When importing custom attribute or morphtarget as curve, do not import if it doens't have any value other than zero. This is to avoid adding extra curves to evaluate
---@field public bPreserveLocalTransform boolean @If enabled, this will import a curve within the animation
local UFbxAnimSequenceImportData = {}

