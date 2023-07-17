---Implements a message to request the running of automation tests on a worker.
---@class FAutomationWorkerRunTests
---@field public ExecutionCount integer
---@field public RoleIndex integer
---@field public TestName string @Holds the name of the test to run.
---@field public BeautifiedTestName string @Holds the name of the test to run.
---@field public bSendAnalytics boolean @If true, send results to analytics when complete
local FAutomationWorkerRunTests = {}
