---Defines how the GBuffer channels are getting manipulated by a decal material pass. Actual index is used to control shader parameters so don't change order.
---@class EDecalBlendMode
---@field public DBM_Translucent integer
---@field public DBM_Stain integer
---@field public DBM_Normal integer
---@field public DBM_Emissive integer
---@field public DBM_DBuffer_ColorNormalRoughness integer
---@field public DBM_DBuffer_Color integer
---@field public DBM_DBuffer_ColorNormal integer
---@field public DBM_DBuffer_ColorRoughness integer
---@field public DBM_DBuffer_Normal integer
---@field public DBM_DBuffer_NormalRoughness integer
---@field public DBM_DBuffer_Roughness integer
---@field public DBM_DBuffer_Emissive integer
---@field public DBM_DBuffer_AlphaComposite integer
---@field public DBM_DBuffer_EmissiveAlphaComposite integer
---@field public DBM_Volumetric_DistanceFunction integer
---@field public DBM_AlphaComposite integer
---@field public DBM_AmbientOcclusion integer
---@field public DBM_MAX integer
local EDecalBlendMode = {}
