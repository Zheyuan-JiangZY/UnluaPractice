---@class AITesting_MoveGoal_C : AActor
---@field public UberGraphFrame FPointerToUberGraphFrame
---@field public MySpriteComponent UBillboardComponent
---@field public CollisionBox UBoxComponent
---@field public ObservedPawn UObject
---@field public CurrentTest AFunctionalTest
---@field public bStartEnabled boolean
local AITesting_MoveGoal_C = {}

---@param bShouldBeEnabled boolean
function AITesting_MoveGoal_C:SetCollisionEnabled(bShouldBeEnabled) end

---Event when play begins for this actor.
function AITesting_MoveGoal_C:ReceiveBeginPlay() end

