---An asset that points to an image to be detected in a scene and provides the size of the object in real life
---@class UARCandidateImage : UDataAsset
---@field protected CandidateTexture UTexture2D @The image to detect in scenes
---@field protected FriendlyName string @The friendly name to report back when the image is detected in scenes
---@field protected Width number @The physical width in centimeters of the object that this candidate image represents
---@field protected Height number @The physical height in centimeters of the object that this candidate image represents. Ignored in ARCore
---@field protected Orientation EARCandidateImageOrientation @The orientation to treat the candidate image as. Ignored in ARCore
local UARCandidateImage = {}

---
---@return number
function UARCandidateImage:GetPhysicalWidth() end

---
---@return number
function UARCandidateImage:GetPhysicalHeight() end

---
---@return EARCandidateImageOrientation
function UARCandidateImage:GetOrientation() end

---
---@return string
function UARCandidateImage:GetFriendlyName() end

---
---@return UTexture2D
function UARCandidateImage:GetCandidateTexture() end

