--
-- DESCRIPTION
--
-- @COMPANY **
-- @AUTHOR **
-- @DATE ${date} ${time}
--

---@type ThirdPersonCharacter_C
local M = UnLua.Class()
local Screen = require("Screen")

-- function M:Initialize(Initializer)
-- end

-- function M:UserConstructionScript()
-- end

-- A custom event named Pick
function M:Pick()
    self.item:K2_DestroyActor()
    Screen.Print("Pick Up Actor")
end

function M:ReceiveBeginPlay()
    local __actor = UE.TArray(UE.AActor)
	UE.UGameplayStatics.GetAllActorsOfClass(
		self:GetWorld(),
		UE.UClass.Load("/Game/TestFile/BluePrint/BP_Pickup.BP_Pickup_C"),
		__actor
	)
	self.item = __actor:GetRef(1)
    -- bind event to PickUp
    self.item.PickUp:Add(self,self.Pick)
end

-- function M:ReceiveEndPlay()
-- end

-- function M:ReceiveTick(DeltaSeconds)
-- end

-- function M:ReceiveAnyDamage(Damage, DamageType, InstigatedBy, DamageCauser)
-- end

-- function M:ReceiveActorBeginOverlap(OtherActor)
-- end

-- function M:ReceiveActorEndOverlap(OtherActor)
-- end

return M
