---Compute an operation between 2 incoming fields
---@class UOperatorField : UFieldNodeBase
---@field public Magnitude number @Magnitude of the operator field
---@field public RightField UFieldNodeBase @Right field to be processed
---@field public LeftField UFieldNodeBase @Left field to be processed
---@field public Operation integer @Type of operation you want to perform between the 2 fields
local UOperatorField = {}

---Compute an operation between 2 incoming fields
---@param Magnitude number
---@param LeftField UFieldNodeBase
---@param RightField UFieldNodeBase
---@param Operation integer
---@return UOperatorField
function UOperatorField:SetOperatorField(Magnitude, LeftField, RightField, Operation) end

