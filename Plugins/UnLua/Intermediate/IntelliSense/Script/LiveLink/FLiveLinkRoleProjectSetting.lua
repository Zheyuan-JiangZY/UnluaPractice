---Settings for LiveLinkRole.
---@class FLiveLinkRoleProjectSetting
---@field public Role TSubclassOf<ULiveLinkRole> @The role of the current setting.
---@field public SettingClass TSubclassOf<ULiveLinkSubjectSettings> @The settings class to use for the subject. If null, LiveLinkSubjectSettings will be used by default.
---@field public FrameInterpolationProcessor TSubclassOf<ULiveLinkFrameInterpolationProcessor> @The interpolation to use for the subject. If null, no interpolation will be performed.
---@field public FramePreProcessors TArray<TSubclassOf<ULiveLinkFramePreProcessor>> @The pre processors to use for the subject.
local FLiveLinkRoleProjectSetting = {}
