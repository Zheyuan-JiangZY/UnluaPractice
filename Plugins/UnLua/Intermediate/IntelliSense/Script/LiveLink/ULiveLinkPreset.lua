---@class ULiveLinkPreset : UObject
---@field private Sources TArray<FLiveLinkSourcePreset>
---@field private Subjects TArray<FLiveLinkSubjectPreset>
local ULiveLinkPreset = {}

---Reset this preset and build the list of sources and subjects from the client.
function ULiveLinkPreset:BuildFromClient() end

---Remove all previous sources and subjects and add the sources and subjects from this preset.
---@return boolean
function ULiveLinkPreset:ApplyToClient() end

---Add the sources and subjects from this preset, but leave any existing sources and subjects connected.
---@param bRecreatePresets boolean @[opt] 
---@return boolean
function ULiveLinkPreset:AddToClient(bRecreatePresets) end

