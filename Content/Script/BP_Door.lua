--
-- DESCRIPTION
--
-- @COMPANY **
-- @AUTHOR **
-- @DATE ${date} ${time}
--

---@type BP_Door_C
local M = UnLua.Class()
local Screen = require("Screen")

-- function M:Initialize(Initializer)
-- end

-- function M:UserConstructionScript()
-- end

function M:OpenDoor()
    self.Door:K2_SetRelativeRotation(UE.FRotator(0,90,0),false,nil,nil)
    Screen.Print("OpenTheDoor")
end

function M:CloseDoor()
    self.Door:K2_SetRelativeRotation(UE.FRotator(0,0,0),false,nil,nil)
    Screen.Print("CloseTheDoor")
end

function M:ReceiveBeginPlay()
    local __actor = UE.TArray(UE.AActor)
	UE.UGameplayStatics.GetAllActorsOfClass(
		self:GetWorld(),
		UE.UClass.Load("/Game/TestFile/BluePrint/BP_BossDied.BP_BossDied_C"),
		__actor
	)
	self.BossDied = __actor:GetRef(1)
    self.BossDied.OpenDoor:Add(self,self.OpenDoor)
    self.BossDied.CloseDoor:Add(self,self.CloseDoor)
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
