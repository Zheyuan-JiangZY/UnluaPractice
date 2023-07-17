---Information about how this type should be laid out in an FNiagaraDataSet
---@class FNiagaraTypeLayoutInfo
---@field public FloatComponentByteOffsets TArray<integer> @Byte offset of each float component in a structured layout.
---@field public FloatComponentRegisterOffsets TArray<integer> @Offset into register table for each float component.
---@field public Int32ComponentByteOffsets TArray<integer> @Byte offset of each int32 component in a structured layout.
---@field public Int32ComponentRegisterOffsets TArray<integer> @Offset into register table for each int32 component.
---@field public HalfComponentByteOffsets TArray<integer> @Byte offset of each half component in a structured layout.
---@field public HalfComponentRegisterOffsets TArray<integer> @Offset into register table for each half component.
local FNiagaraTypeLayoutInfo = {}
