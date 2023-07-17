---An asset that points to an object to be detected in a scene
---@class UARCandidateObject : UDataAsset
---@field private CandidateObjectData TArray<integer> @The object to detect in scenes
---@field private FriendlyName string @The friendly name to report back when the object is detected in scenes
---@field private BoundingBox FBox @The physical bounds in centimeters of the object that this candidate object represents
local UARCandidateObject = {}

---@param NewName string
function UARCandidateObject:SetFriendlyName(NewName) end

---@param InCandidateObject TArray_integer_
function UARCandidateObject:SetCandidateObjectData(InCandidateObject) end

---@param InBoundingBox FBox
function UARCandidateObject:SetBoundingBox(InBoundingBox) end

---
---@return string
function UARCandidateObject:GetFriendlyName() end

---
---@return TArray_integer_
function UARCandidateObject:GetCandidateObjectData() end

---
---@return FBox
function UARCandidateObject:GetBoundingBox() end

