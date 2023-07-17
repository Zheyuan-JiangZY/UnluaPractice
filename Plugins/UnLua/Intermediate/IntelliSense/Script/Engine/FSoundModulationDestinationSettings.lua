---Parameter destination settings allowing modulation control override for parameter destinations opting in to the Modulation System.
---@class FSoundModulationDestinationSettings
---@field public Value number @Base value of parameter
---@field public bEnableModulation boolean @Base value of parameter
---@field public Modulator USoundModulatorBase @Modulation source, which provides value to mix with base value.
local FSoundModulationDestinationSettings = {}
