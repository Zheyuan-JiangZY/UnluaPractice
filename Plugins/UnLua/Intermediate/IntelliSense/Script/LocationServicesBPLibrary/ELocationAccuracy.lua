---Enum used to determine what accuracy the Location Services should be run with. Based off the iOS kCLLocationAccuracy
---enums since those were the most restrictive (but convienently also had descriptive names)
---@class ELocationAccuracy
---@field public LA_ThreeKilometers integer
---@field public LA_OneKilometer integer
---@field public LA_HundredMeters integer
---@field public LA_TenMeters integer
---@field public LA_Best integer
---@field public LA_Navigation integer
---@field public LA_MAX integer
local ELocationAccuracy = {}
