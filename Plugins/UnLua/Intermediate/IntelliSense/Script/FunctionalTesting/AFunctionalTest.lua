---@class AFunctionalTest : AActor
---@field private SpriteComponent UBillboardComponent
---@field protected bIsEnabled boolean @Allows a test to be disabled.  If a test is disabled, it will not appear in the set of runnable tests (after saving the map).
---@field protected LogErrorHandling EFunctionalTestLogHandling @Determines how LogErrors are handled during this test.
---@field protected LogWarningHandling EFunctionalTestLogHandling @Determines how LogWarnings are handled during this test.
---@field protected Author string @The author is the group or person responsible for the test.  Generally you should use a group name like 'Editor Team' or 'Rendering Team'.  When a test fails it may not be obvious who should investigate so this provides a associate responsible groups with tests.
---@field protected Description string @A description of the test, like what is this test trying to determine.
---@field protected ObservationPoint AActor @Allows you to specify another actor to view the test from.  Usually this is a camera you place in the map to observe the test.  Not useful when running on a build farm, but provides a handy way to observe the test from a different location than you place the functional test actor.
---@field protected RandomNumbersStream FRandomStream @A random number stream that you can use during testing.  This number stream will be consistent every time the test is run.
---@field public Result EFunctionalTestResult
---@field public PreparationTimeLimit number @The Test's time limit for preparation, this is the time it has to return true when checking IsReady(). '0' means no limit.
---@field public TimeLimit number @Test's time limit. '0' means no limit
---@field public TimesUpMessage string
---@field public TimesUpResult EFunctionalTestResult @If test is limited by time this is the result that will be returned when time runs out
---@field public OnTestPrepare MulticastDelegate @Called when the test is ready to prepare
---@field public OnTestStart MulticastDelegate @Called when the test is started
---@field public OnTestFinished MulticastDelegate @Called when the test is finished. Use it to clean up
---@field public AutoDestroyActors TArray<AActor>
---@field public RenderComp UFuncTestRenderingComponent
---@field public TestName UTextRenderComponent
---@field public bIsRunning boolean @AG TEMP - solving a compile issue in a temp way to unblock the bui.d
---@field public TotalTime number
local AFunctionalTest = {}

---@param NewTimeLimit number
---@param ResultWhenTimeRunsOut EFunctionalTestResult
function AFunctionalTest:SetTimeLimit(NewTimeLimit, ResultWhenTimeRunsOut) end

---ACtors registered this way will be automatically destroyed (by limiting their lifespan)
---    on test finish
---@param ActorToAutoDestroy AActor
function AFunctionalTest:RegisterAutoDestroyActor(ActorToAutoDestroy) end

---Called once the IsReady() check for the test returns true.  After that happens the test has Officially started,
---and it will begin receiving Ticks in the blueprint.
function AFunctionalTest:ReceiveStartTest() end

---Prepare Test is fired once the test starts up, before the test IsReady() and thus before Start Test is called.
---So if there's some initial conditions or setup that you might need for your IsReady() check, you might want
---to do that here.
function AFunctionalTest:ReceivePrepareTest() end

---retrieves information whether test wants to have another run just after finishing
---@return boolean
function AFunctionalTest:OnWantsReRunCheck() end

---@param TestResult EFunctionalTestResult
---@return string
function AFunctionalTest:OnAdditionalTestFinishedMessageRequest(TestResult) end

---@param Message string
function AFunctionalTest:LogMessage(Message) end

---AActor interface end
---@return boolean
function AFunctionalTest:IsRunning() end

---IsReady() is called once per frame after a test is run, until it returns true.  You should use this function to
---delay Start being called on the test until preconditions are met.
---@return boolean
function AFunctionalTest:IsReady() end

---@return boolean
function AFunctionalTest:IsEnabled() end

---Returns the current re-run reason if we're in a named re-run.
---@return string
function AFunctionalTest:GetCurrentRerunReason() end

---@param TestResult EFunctionalTestResult
---@param Message string
function AFunctionalTest:FinishTest(TestResult, Message) end

---Used by debug drawing to gather actors this test is using and point at them on the level to better understand test's setup
---@return TArray_AActor_
function AFunctionalTest:DebugGatherRelevantActors() end

---Assert on a relationship between two integers.
---@param Actual integer
---@param ShouldBe EComparisonMethod
---@param Expected integer
---@param What string
---@param ContextObject UObject @[opt] 
---@return boolean
function AFunctionalTest:AssertValue_Int(Actual, ShouldBe, Expected, What, ContextObject) end

---Assert on a relationship between two floats.
---@param Actual number
---@param ShouldBe EComparisonMethod
---@param Expected number
---@param What string
---@param ContextObject UObject @[opt] 
---@return boolean
function AFunctionalTest:AssertValue_Float(Actual, ShouldBe, Expected, What, ContextObject) end

---Assert on a relationship between two DateTimes.
---@param Actual FDateTime
---@param ShouldBe EComparisonMethod
---@param Expected FDateTime
---@param What string
---@param ContextObject UObject @[opt] 
---@return boolean
function AFunctionalTest:AssertValue_DateTime(Actual, ShouldBe, Expected, What, ContextObject) end

---Assert that a boolean value is true.
---@param Condition boolean
---@param Message string
---@param ContextObject UObject @[opt] 
---@return boolean
function AFunctionalTest:AssertTrue(Condition, Message, ContextObject) end

---Assert that two vectors are (memberwise) not equal within a small tolerance.
---@param Actual FVector
---@param NotExpected FVector
---@param What string
---@param ContextObject UObject @[opt] 
---@return boolean
function AFunctionalTest:AssertNotEqual_Vector(Actual, NotExpected, What, ContextObject) end

---Assert that two transforms are (components memberwise - translation, rotation, scale) not equal within a small tolerance.
---@param Actual FTransform
---@param NotExpected FTransform
---@param What string
---@param ContextObject UObject @[opt] 
---@return boolean
function AFunctionalTest:AssertNotEqual_Transform(Actual, NotExpected, What, ContextObject) end

---Assert that two Strings are not equal.
---@param Actual string
---@param NotExpected string
---@param What string
---@param ContextObject UObject @[opt] 
---@return boolean
function AFunctionalTest:AssertNotEqual_String(Actual, NotExpected, What, ContextObject) end

---Assert that the component angles of two rotators are all not equal within a small tolerance.
---@param Actual FRotator
---@param NotExpected FRotator
---@param What string
---@param ContextObject UObject @[opt] 
---@return boolean
function AFunctionalTest:AssertNotEqual_Rotator(Actual, NotExpected, What, ContextObject) end

---Assert that a UObject is valid
---@param Object UObject
---@param Message string
---@param ContextObject UObject @[opt] 
---@return boolean
function AFunctionalTest:AssertIsValid(Object, Message, ContextObject) end

---Assert that a boolean value is false.
---@param Condition boolean
---@param Message string
---@param ContextObject UObject @[opt] 
---@return boolean
function AFunctionalTest:AssertFalse(Condition, Message, ContextObject) end

---Assert that two vectors are (memberwise) equal within a small tolerance.
---@param Actual FVector
---@param Expected FVector
---@param What string
---@param Tolerance number @[opt] 
---@param ContextObject UObject @[opt] 
---@return boolean
function AFunctionalTest:AssertEqual_Vector(Actual, Expected, What, Tolerance, ContextObject) end

---Assert that two transforms are (components memberwise - translation, rotation, scale) equal within a small tolerance.
---@param Actual FTransform
---@param Expected FTransform
---@param What string
---@param Tolerance number @[opt] 
---@param ContextObject UObject @[opt] 
---@return boolean
function AFunctionalTest:AssertEqual_Transform(Actual, Expected, What, Tolerance, ContextObject) end

---Assert that two TraceQueryResults are equal.
---@param Actual UTraceQueryTestResults
---@param Expected UTraceQueryTestResults
---@param What string
---@param ContextObject UObject @[opt] 
---@return boolean
function AFunctionalTest:AssertEqual_TraceQueryResults(Actual, Expected, What, ContextObject) end

---Assert that two Strings are equal.
---@param Actual string
---@param Expected string
---@param What string
---@param ContextObject UObject @[opt] 
---@return boolean
function AFunctionalTest:AssertEqual_String(Actual, Expected, What, ContextObject) end

---Assert that the component angles of two rotators are all equal within a small tolerance.
---@param Actual FRotator
---@param Expected FRotator
---@param What string
---@param Tolerance number @[opt] 
---@param ContextObject UObject @[opt] 
---@return boolean
function AFunctionalTest:AssertEqual_Rotator(Actual, Expected, What, Tolerance, ContextObject) end

---Assert that two Objects are equal
---@param Actual UObject
---@param Expected UObject
---@param What string
---@param ContextObject UObject @[opt] 
---@return boolean
function AFunctionalTest:AssertEqual_Object(Actual, Expected, What, ContextObject) end

---Assert that two FNames are equal
---@param Actual string
---@param Expected string
---@param What string
---@param ContextObject UObject @[opt] 
---@return boolean
function AFunctionalTest:AssertEqual_Name(Actual, Expected, What, ContextObject) end

---Assert that two ints are equal
---@param Actual integer
---@param Expected integer
---@param What string
---@param ContextObject UObject @[opt] 
---@return boolean
function AFunctionalTest:AssertEqual_Int(Actual, Expected, What, ContextObject) end

---Assert that two floats are equal within tolerance between two floats.
---@param Actual number
---@param Expected number
---@param What string
---@param Tolerance number @[opt] 
---@param ContextObject UObject @[opt] 
---@return boolean
function AFunctionalTest:AssertEqual_Float(Actual, Expected, What, Tolerance, ContextObject) end

---Assert that two bools are equal
---@param Actual boolean
---@param Expected boolean
---@param What string
---@param ContextObject UObject @[opt] 
---@return boolean
function AFunctionalTest:AssertEqual_Bool(Actual, Expected, What, ContextObject) end

---@param Message string
function AFunctionalTest:AddWarning(Message) end

---Causes the test to be rerun for a specific named reason.
---@param Reason string
function AFunctionalTest:AddRerun(Reason) end

---@param Message string
function AFunctionalTest:AddError(Message) end

