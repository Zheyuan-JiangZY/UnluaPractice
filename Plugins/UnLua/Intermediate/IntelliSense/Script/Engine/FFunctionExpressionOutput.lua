---Struct that stores information about a function output which is needed to maintain connections and implement the function call.
---@class FFunctionExpressionOutput
---@field public ExpressionOutput UMaterialExpressionFunctionOutput @Reference to the FunctionOutput in the material function. This is a reference to a private object so it can't be saved, and must be generated by UpdateFromFunctionResource or SetMaterialFunction.
---@field public ExpressionOutputId FGuid @Id of the FunctionOutput, used to link ExpressionOutput.
---@field public Output FExpressionOutput @Actual output struct which stores information about how this output is connected in the material.
local FFunctionExpressionOutput = {}
