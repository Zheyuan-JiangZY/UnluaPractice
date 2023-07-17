---Used to pass argument/value pairs into FText::Format.
---The full C++ struct is located here: Engine\Source\Runtime\Core\Public\Internationalization\Text.h
---@class FFormatArgumentData
---@field public ArgumentName string
---@field public ArgumentValueType integer
---@field public ArgumentValue string
---@field public ArgumentValueInt integer
---@field public ArgumentValueFloat number
---@field public ArgumentValueGender ETextGender
local FFormatArgumentData = {}
