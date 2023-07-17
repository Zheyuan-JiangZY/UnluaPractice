---Run Environment Query System Query task node.
---Runs the specified environment query when executed.
---@class UBTTask_RunEQSQuery : UBTTask_BlackboardBase
---@field public QueryTemplate UEnvQuery @query to run
---@field public QueryParams TArray<FEnvNamedValue> @optional parameters for query
---@field public QueryConfig TArray<FAIDynamicParam>
---@field public RunMode integer @determines which item will be stored (All = only first matching)
---@field public EQSQueryBlackboardKey FBlackboardKeySelector @blackboard key storing an EQS query template
---@field public bUseBBKey boolean
---@field public EQSRequest FEQSParametrizedQueryExecutionRequest
local UBTTask_RunEQSQuery = {}

