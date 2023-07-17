---@class UViewport : UContentWidget
---@field public BackgroundColor FLinearColor
local UViewport = {}

---@param ActorClass TSubclassOf_AActor_
---@return AActor
function UViewport:Spawn(ActorClass) end

---@param Rotation FRotator
function UViewport:SetViewRotation(Rotation) end

---@param Location FVector
function UViewport:SetViewLocation(Location) end

---@return FRotator
function UViewport:GetViewRotation() end

---@return UWorld
function UViewport:GetViewportWorld() end

---@return FVector
function UViewport:GetViewLocation() end

