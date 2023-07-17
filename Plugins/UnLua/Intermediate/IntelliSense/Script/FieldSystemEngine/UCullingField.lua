---Evaluate the input field according to the result of the culling field
---@class UCullingField : UFieldNodeBase
---@field public Culling UFieldNodeBase @Culling field to be used
---@field public Field UFieldNodeBase @Input field that will be evaluated according to the culling field result
---@field public Operation integer @Evaluate the input field if the result of the culling field is equal to 0 (Inside) or different from 0 (Outside)
local UCullingField = {}

---Evaluate the input field according to the result of the culling field
---@param Culling UFieldNodeBase
---@param Field UFieldNodeBase
---@param Operation integer
---@return UCullingField
function UCullingField:SetCullingField(Culling, Field, Operation) end

