---Physical materials are used to define the response of a physical object when interacting dynamically with the world.
---@class UPhysicalMaterial : UObject
---@field public Friction number @Friction value of surface, controls how easily things can slide on this surface (0 is frictionless, higher values increase the amount of friction)
---@field public StaticFriction number @Static Friction value of surface, controls how easily things can slide on this surface (0 is frictionless, higher values increase the amount of friction)
---@field public FrictionCombineMode integer @Friction combine mode, controls how friction is computed for multiple materials.
---@field public bOverrideFrictionCombineMode boolean @If set we will use the FrictionCombineMode of this material, instead of the FrictionCombineMode found in the project settings.
---@field public Restitution number @Restitution or 'bounciness' of this surface, between 0 (no bounce) and 1 (outgoing velocity is same as incoming).
---@field public RestitutionCombineMode integer @Restitution combine mode, controls how restitution is computed for multiple materials.
---@field public bOverrideRestitutionCombineMode boolean @If set we will use the RestitutionCombineMode of this material, instead of the RestitutionCombineMode found in the project settings.
---@field public Density number @Used with the shape of the object to calculate its mass properties. The higher the number, the heavier the object. g per cubic cm.
---@field public SleepLinearVelocityThreshold number @How low the linear velocity can be before solver puts body to sleep.
---@field public SleepAngularVelocityThreshold number @How low the angular velocity can be before solver puts body to sleep.
---@field public SleepCounterThreshold integer @How many ticks we can be under thresholds for before solver puts body to sleep.
---@field public RaiseMassToPower number @Used to adjust the way that mass increases as objects get larger. This is applied to the mass as calculated based on a 'solid' object. In actuality, larger objects do not tend to be solid, and become more like 'shells' (e.g. a car is not a solid piece of metal). Values are clamped to 1 or less.
---@field public DestructibleDamageThresholdScale number @How much to scale the damage threshold by on any destructible we are applied to
---@field public SurfaceType integer @To edit surface type for your project, use ProjectSettings/Physics/PhysicalSurface section
local UPhysicalMaterial = {}

