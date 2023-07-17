---Simple controller that replaces or adds to the translation/rotation of a single bone.
---@class FAnimNode_ModifyBone : FAnimNode_SkeletalControlBase
---@field public BoneToModify FBoneReference @Name of bone to control. This is the main bone chain to modify from. *
---@field public Translation FVector @New translation of bone to apply.
---@field public Rotation FRotator @New rotation of bone to apply.
---@field public Scale FVector @New Scale of bone to apply. This is only worldspace.
---@field public TranslationMode integer @Whether and how to modify the translation of this bone.
---@field public RotationMode integer @Whether and how to modify the translation of this bone.
---@field public ScaleMode integer @Whether and how to modify the translation of this bone.
---@field public TranslationSpace integer @Reference frame to apply Translation in.
---@field public RotationSpace integer @Reference frame to apply Rotation in.
---@field public ScaleSpace integer @Reference frame to apply Scale in.
local FAnimNode_ModifyBone = {}
