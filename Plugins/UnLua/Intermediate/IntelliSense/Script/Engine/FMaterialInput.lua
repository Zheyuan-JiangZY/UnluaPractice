---Material input structs.
---@class FMaterialInput
---@field public Expression UMaterialExpression @Material expression that this input is connected to, or NULL if not connected.
---@field public OutputIndex integer @Index into Expression's outputs array that this input is connected to.
---@field public InputName string @Optional name of the input. Note that this is the only member which is not derived from the output currently connected.
---@field public Mask integer
---@field public MaskR integer
---@field public MaskG integer
---@field public MaskB integer
---@field public MaskA integer
---@field public ExpressionName string @Material expression name that this input is connected to, or None if not connected. Used only in cooked builds
local FMaterialInput = {}
