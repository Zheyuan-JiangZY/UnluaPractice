---this class is abstract even though it's perfectly functional on its own.
---   The reason is to stop it from showing as valid player pawn type when configuring
---   project's game mode.
---@class AEQSTestingPawn : ACharacter
---@field public QueryTemplate UEnvQuery
---@field public QueryParams TArray<FEnvNamedValue> @optional parameters for query
---@field public QueryConfig TArray<FAIDynamicParam>
---@field public TimeLimitPerStep number
---@field public StepToDebugDraw integer
---@field public HighlightMode EEnvQueryHightlightMode
---@field public bDrawLabels boolean
---@field public bDrawFailedItems boolean
---@field public bReRunQueryOnlyOnFinishedMove boolean
---@field public bShouldBeVisibleInGame boolean
---@field public bTickDuringGame boolean
---@field public QueryingMode integer
---@field public NavAgentProperties FNavAgentProperties
---@field private EdRenderComp UEQSRenderingComponent @Editor Preview
local AEQSTestingPawn = {}

