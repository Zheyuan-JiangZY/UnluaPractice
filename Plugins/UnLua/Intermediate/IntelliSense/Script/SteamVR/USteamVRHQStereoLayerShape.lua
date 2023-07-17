---@class USteamVRHQStereoLayerShape : UStereoLayerShapeQuad
---@field public bCurved boolean
---@field public bAntiAlias boolean
---@field public AutoCurveMinDistance number @For curved layers, sets the minimum distance from the layer used to automatically curve the surface around the viewer.  The minimum distance is when the layer is most curved.
---@field public AutoCurveMaxDistance number @For curved layers, sets the maximum distance from the layer used to automatically curve the surface around the viewer.  The maximum distance is when the layer is the least curved.
local USteamVRHQStereoLayerShape = {}

---@param InCurved boolean
function USteamVRHQStereoLayerShape:SetCurved(InCurved) end

---@param InDistance number
function USteamVRHQStereoLayerShape:SetAutoCurveMinDistance(InDistance) end

---@param InDistance number
function USteamVRHQStereoLayerShape:SetAutoCurveMaxDistance(InDistance) end

---@param InAntiAlias boolean
function USteamVRHQStereoLayerShape:SetAntiAlias(InAntiAlias) end

