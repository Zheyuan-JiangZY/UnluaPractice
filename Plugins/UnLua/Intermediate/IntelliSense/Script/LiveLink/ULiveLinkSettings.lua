---Settings for LiveLink.
---@class ULiveLinkSettings : UObject
---@field protected DefaultRoleSettings TArray<FLiveLinkRoleProjectSetting>
---@field public FrameInterpolationProcessor TSubclassOf<ULiveLinkFrameInterpolationProcessor> @The interpolation class to use for new Subjects if no specific settings we set for the Subject's role.
---@field public DefaultLiveLinkPreset TSoftObjectPtr<ULiveLinkPreset> @The default preset that should be applied
---@field public PresetSaveDir FDirectoryPath @The default location in which to save take presets
---@field public ClockOffsetCorrectionStep number @Continuous clock offset correction step
---@field public DefaultMessageBusSourceMode ELiveLinkSourceMode @The default evaluation mode a source connected via the message bus should start with.
---@field public MessageBusPingRequestFrequency number @The refresh frequency of the list of message bus provider (when discovery is requested).
---@field public MessageBusHeartbeatFrequency number @The refresh frequency of the heartbeat when a provider didn't send us an updated.
---@field public MessageBusHeartbeatTimeout number @How long we should wait before a provider become unresponsive.
---@field public MessageBusTimeBeforeRemovingInactiveSource number @Subjects will be removed when their source has been unresponsive for this long.
---@field public TimeWithoutFrameToBeConsiderAsInvalid number @A source may still exist but does not send frames for a subject. Time before considering the subject as "invalid". The subject still exists and can still be evaluated. An invalid subject is shown as yellow in the LiveLink UI.
---@field public ValidColor FLinearColor @Color for active Subjects receiving data from their Source.
---@field public InvalidColor FLinearColor @Color for Subjects that have not received data from their Source for TimeWithoutFrameToBeConsiderAsInvalid.
---@field public TextSizeSource integer @Font size of Source names shown in LiveLink Debug View.
---@field public TextSizeSubject integer @Font size of Subject names shown in LiveLink Debug View.
local ULiveLinkSettings = {}

