---Component to handle receiving notifications from the OS about platform events.
---@class UPlatformEventsComponent : UActorComponent
---@field public PlatformChangedToLaptopModeDelegate MulticastDelegate @This is called when a convertible laptop changed into laptop mode.
---@field public PlatformChangedToTabletModeDelegate MulticastDelegate @This is called when a convertible laptop changed into tablet mode.
local UPlatformEventsComponent = {}

function UPlatformEventsComponent:PlatformEventDelegate__DelegateSignature() end

