---@class UChaosClothingInteractor : UClothingInteractor
local UChaosClothingInteractor = {}

---@param LinearVelocityScale FVector @[opt] 
---@param AngularVelocityScale number @[opt] 
---@param FictitiousAngularScale number @[opt] 
function UChaosClothingInteractor:SetVelocityScale(LinearVelocityScale, AngularVelocityScale, FictitiousAngularScale) end

---@param EdgeStiffness number @[opt] 
---@param BendingStiffness number @[opt] 
---@param AreaStiffness number @[opt] 
function UChaosClothingInteractor:SetMaterialLinear(EdgeStiffness, BendingStiffness, AreaStiffness) end

---@param TetherStiffness number @[opt] 
function UChaosClothingInteractor:SetLongRangeAttachmentLinear(TetherStiffness) end

---@param TetherStiffness FVector2D @[opt] 
function UChaosClothingInteractor:SetLongRangeAttachment(TetherStiffness) end

---@param GravityScale number @[opt] 
---@param bIsGravityOverridden boolean @[opt] 
---@param GravityOverride FVector @[opt] 
function UChaosClothingInteractor:SetGravity(GravityScale, bIsGravityOverridden, GravityOverride) end

---@param DampingCoefficient number @[opt] 
function UChaosClothingInteractor:SetDamping(DampingCoefficient) end

---@param CollisionThickness number @[opt] 
---@param FrictionCoefficient number @[opt] 
---@param bUseCCD boolean @[opt] 
---@param SelfCollisionThickness number @[opt] 
function UChaosClothingInteractor:SetCollision(CollisionThickness, FrictionCoefficient, bUseCCD, SelfCollisionThickness) end

---@param AnimDriveStiffness number @[opt] 
function UChaosClothingInteractor:SetAnimDriveLinear(AnimDriveStiffness) end

---@param AnimDriveStiffness FVector2D @[opt] 
---@param AnimDriveDamping FVector2D @[opt] 
function UChaosClothingInteractor:SetAnimDrive(AnimDriveStiffness, AnimDriveDamping) end

---@param DragCoefficient number @[opt] 
---@param LiftCoefficient number @[opt] 
---@param WindVelocity FVector @[opt] 
function UChaosClothingInteractor:SetAerodynamics(DragCoefficient, LiftCoefficient, WindVelocity) end

---@param bReset boolean @[opt] 
---@param bTeleport boolean @[opt] 
function UChaosClothingInteractor:ResetAndTeleport(bReset, bTeleport) end

