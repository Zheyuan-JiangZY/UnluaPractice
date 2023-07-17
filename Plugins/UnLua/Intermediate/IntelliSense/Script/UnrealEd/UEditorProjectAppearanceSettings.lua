---Editor project appearance settings. Stored in default config, per-project
---@class UEditorProjectAppearanceSettings : UDeveloperSettings
---@field public bDisplayUnits boolean @Whether to display units on editor properties where the property has units set.
---@field public bDisplayUnitsOnComponentTransforms boolean @Whether to display units on component transform properties
---@field public DistanceUnits TArray<EUnit> @Choose a set of units in which to display distance/length values.
---@field public MassUnits TArray<EUnit> @Choose a set of units in which to display masses.
---@field public TimeUnits TArray<EUnit> @Choose the units in which to display time.
---@field public AngleUnits EUnit @Choose the units in which to display angles.
---@field public SpeedUnits EUnit @Choose the units in which to display speeds and velocities.
---@field public TemperatureUnits EUnit @Choose the units in which to display temperatures.
---@field public ForceUnits EUnit @Choose the units in which to display forces.
local UEditorProjectAppearanceSettings = {}

