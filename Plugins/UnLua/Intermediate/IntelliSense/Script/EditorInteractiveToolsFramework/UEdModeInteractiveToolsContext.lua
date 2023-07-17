---EdModeInteractiveToolsContext is an extension/adapter of an InteractiveToolsContext which
---allows it to be easily embedded inside an FEdMode. A set of functions are provided which can be
---called from the FEdMode functions of the same name. These will handle the data type
---conversions and forwarding calls necessary to operate the ToolsContext
---@class UEdModeInteractiveToolsContext : UInteractiveToolsContext
---@field public StandardVertexColorMaterial UMaterialInterface
local UEdModeInteractiveToolsContext = {}

