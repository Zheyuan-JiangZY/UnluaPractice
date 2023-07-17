---@class UInterpTrackFloatAnimBPParam : UInterpTrackFloatBase
---@field public AnimBlueprintClass TSubclassOf<UObject>
---@field public AnimClass TSubclassOf<UAnimInstance> @Materials whose parameters we want to change and the references to those materials.
---@field public ParamName string @Name of parameter in the MaterialInstance which this track will modify over time.
local UInterpTrackFloatAnimBPParam = {}

