---@class UFractureRadialSettings : UFractureToolSettings
---@field public Center FVector @Center of generated pattern
---@field public Normal FVector @Normal to plane in which sites are generated
---@field public Radius number @Pattern radius
---@field public AngularSteps integer @Number of angular steps
---@field public RadialSteps integer @Number of radial steps
---@field public AngleOffset number @Angle offset at each radial step
---@field public Variability number @Randomness of sites distribution
local UFractureRadialSettings = {}

