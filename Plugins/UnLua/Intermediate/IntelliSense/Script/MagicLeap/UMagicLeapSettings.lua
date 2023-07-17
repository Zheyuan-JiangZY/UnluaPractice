---Implements the settings for the Magic Leap SDK setup.
---@class UMagicLeapSettings : UObject
---@field public bEnableZI boolean @Enables 'Zero Iteration mode'. Note: Vulkan rendering will be used by default. Set bUseVulkan to false to use OpenGL instead.
---@field public bUseVulkanForZI boolean @Use the editor in Vulkan. If False, OpenGL is used with ZI.
---@field public bUseMLAudioForZI boolean @Use the MagicLeapAudio mixer module when using ZI. This will play audio via the ML device. Otherwise, the audio is played on the host machine itself.
local UMagicLeapSettings = {}

