---Implements a message that is sent in response to FAutomationWorkerRunTests.
---@class FAutomationWorkerRunTestsReply
---@field public TestName string
---@field public Entries TArray<FAutomationExecutionEntry>
---@field public WarningTotal integer
---@field public ErrorTotal integer
---@field public Duration number
---@field public ExecutionCount integer
---@field public Success boolean
local FAutomationWorkerRunTestsReply = {}
