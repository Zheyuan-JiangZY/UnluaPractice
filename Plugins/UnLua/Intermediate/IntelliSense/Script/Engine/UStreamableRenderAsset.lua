---@class UStreamableRenderAsset : UObject
---@field protected ForceMipLevelsToBeResidentTimestamp number @WorldSettings timestamp that tells the streamer to force all miplevels to be resident up until that time.
---@field public NumCinematicMipLevels integer @Number of mip-levels to use for cinematic quality.
---@field protected StreamingIndex integer @FStreamingRenderAsset index used by the texture streaming system.
---@field protected CachedCombinedLODBias integer @Cached combined group and texture LOD bias to use.
---@field public NeverStream boolean
---@field public bGlobalForceMipLevelsToBeResident boolean @Global and serialized version of ForceMiplevelsToBeResident.
---@field public bHasStreamingUpdatePending boolean @Whether some mips might be streamed soon. If false, the texture is not planned resolution will be stable.
---@field public bForceMiplevelsToBeResident boolean @Override whether to fully stream even if texture hasn't been rendered.
---@field public bIgnoreStreamingMipBias boolean @When forced fully resident, ignores the streaming mip bias used to accommodate memory constraints.
---@field protected bUseCinematicMipLevels boolean @Whether to use the extra cinematic quality mip-levels, when we're forcing mip-levels to be resident.
local UStreamableRenderAsset = {}

