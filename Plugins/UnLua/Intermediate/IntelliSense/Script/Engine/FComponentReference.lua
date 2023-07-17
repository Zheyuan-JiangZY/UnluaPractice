---Struct that allows for different ways to reference a component.
---If just an Actor is specified, will return RootComponent of that Actor.
---@class FComponentReference
---@field public OtherActor AActor @Pointer to a different Actor that owns the Component. If this is not provided the reference refers to a component on this / the same actor.
---@field public ComponentProperty string @Name of component to use. If this is not specified the reference refers to the root component.
---@field public PathToComponent string @Path to the component from its owner actor
local FComponentReference = {}
