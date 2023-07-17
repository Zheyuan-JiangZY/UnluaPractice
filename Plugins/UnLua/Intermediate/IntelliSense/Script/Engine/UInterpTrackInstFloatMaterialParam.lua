---@class UInterpTrackInstFloatMaterialParam : UInterpTrackInst
---@field public MaterialInstances TArray<UMaterialInstanceDynamic> @MIDs we're using to set the desired parameter.
---@field public ResetFloats TArray<number> @Saved values for restoring state when exiting Matinee.
---@field public PrimitiveMaterialRefs TArray<FPrimitiveMaterialRef> @Primitive components on which materials have been overridden.
---@field public InstancedTrack UInterpTrackFloatMaterialParam @track we are an instance of - used in the editor to propagate changes to the track's Materials array immediately
local UInterpTrackInstFloatMaterialParam = {}

