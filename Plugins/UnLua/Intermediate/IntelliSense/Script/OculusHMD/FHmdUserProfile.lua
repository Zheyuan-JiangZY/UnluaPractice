---@class FHmdUserProfile
---@field public Name string @Name of the user's profile.
---@field public Gender string @Gender of the user ("male", "female", etc).
---@field public PlayerHeight number @Height of the player, in meters
---@field public EyeHeight number @Height of the player, in meters
---@field public IPD number @Interpupillary distance of the player, in meters
---@field public NeckToEyeDistance FVector2D @Neck-to-eye distance, in meters. X - horizontal, Y - vertical.
---@field public ExtraFields TArray<FHmdUserProfileField>
local FHmdUserProfile = {}
