---@class UInterpTrackInstVectorMaterialParam : UInterpTrackInst
---@field public MaterialInstances TArray<UMaterialInstanceDynamic> @MIDs we're using to set the desired parameter.
---@field public ResetVectors TArray<FVector> @Saved values for restoring state when exiting Matinee.
---@field public PrimitiveMaterialRefs TArray<FPrimitiveMaterialRef> @Primitive components on which materials have been overridden.
---@field public InstancedTrack UInterpTrackVectorMaterialParam @Track we are an instance of - used in the editor to propagate changes to the track's Materials array immediately.
local UInterpTrackInstVectorMaterialParam = {}

