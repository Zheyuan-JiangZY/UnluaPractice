---@class FParticleEvent_GenerateInfo
---@field public Type integer @The type of event.
---@field public Frequency integer @How often to trigger the event (<= 1 means EVERY time).
---@field public ParticleFrequency integer @Only fire the first time (collision only).
---@field public FirstTimeOnly boolean @Only fire the first time (collision only).
---@field public LastTimeOnly boolean @Only fire the last time (collision only).
---@field public UseReflectedImpactVector boolean @Use the impact FVector not the hit normal (collision only).
---@field public bUseOrbitOffset boolean @Use the orbit offset when computing the position at which the event occurred.
---@field public CustomName string @Should the event tag with a custom name? Leave blank for the default.
---@field public ParticleModuleEventsToSendToGame TArray<UParticleModuleEventSendToGame> @The events we want to fire off when this event has been generated
local FParticleEvent_GenerateInfo = {}
