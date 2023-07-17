---PawnMovementComponent can be used to update movement for an associated Pawn.
---It also provides ways to accumulate and read directional input in a generic way (with AddInputVector(), ConsumeInputVector(), etc).
---@class UPawnMovementComponent : UNavMovementComponent
---@field protected PawnOwner APawn @Pawn that owns this component.
local UPawnMovementComponent = {}

---@return FVector
function UPawnMovementComponent:K2_GetInputVector() end

---Helper to see if move input is ignored. If there is no Pawn or UpdatedComponent, returns true, otherwise defers to the Pawn's implementation of IsMoveInputIgnored().
---@return boolean
function UPawnMovementComponent:IsMoveInputIgnored() end

---Return the pending input vector in world space. This is the most up-to-date value of the input vector, pending ConsumeMovementInputVector() which clears it.
---PawnMovementComponents implementing movement usually want to use either this or ConsumeInputVector() as these functions represent the most recent state of input.
---@return FVector
function UPawnMovementComponent:GetPendingInputVector() end

---Return the Pawn that owns UpdatedComponent.
---@return APawn
function UPawnMovementComponent:GetPawnOwner() end

---Return the last input vector in world space that was processed by ConsumeInputVector(), which is usually done by the Pawn or PawnMovementComponent.
---Any user that needs to know about the input that last affected movement should use this function.
---@return FVector
function UPawnMovementComponent:GetLastInputVector() end

---Returns the pending input vector and resets it to zero.
---       * This should be used during a movement update (by the Pawn or PawnMovementComponent) to prevent accumulation of control input between frames.
---       * Copies the pending input vector to the saved input vector (GetLastMovementInputVector()).
---       * @@return The pending input vector.
---@return FVector
function UPawnMovementComponent:ConsumeInputVector() end

---Adds the given vector to the accumulated input in world space. Input vectors are usually between 0 and 1 in magnitude.
---They are accumulated during a frame then applied as acceleration during the movement update.
---@param WorldVector FVector
---@param bForce boolean @[opt] 
function UPawnMovementComponent:AddInputVector(WorldVector, bForce) end

