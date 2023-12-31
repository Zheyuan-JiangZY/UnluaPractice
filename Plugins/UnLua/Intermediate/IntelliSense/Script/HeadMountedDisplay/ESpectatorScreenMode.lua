---The Spectator Screen Mode controls what the non-vr video device displays on platforms that support one.
---Not all modes are universal.
---Modes SingleEyeCroppedToFill, Texture, and MirrorPlusTexture are supported on all.
---Disabled is supported on all except PSVR.
---@class ESpectatorScreenMode
---@field public Disabled integer
---@field public SingleEyeLetterboxed integer
---@field public Undistorted integer
---@field public Distorted integer
---@field public SingleEye integer
---@field public SingleEyeCroppedToFill integer
---@field public Texture integer
---@field public TexturePlusEye integer
---@field public ESpectatorScreenMode_MAX integer
local ESpectatorScreenMode = {}
