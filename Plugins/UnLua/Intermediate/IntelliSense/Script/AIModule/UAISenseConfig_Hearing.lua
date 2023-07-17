---@class UAISenseConfig_Hearing : UAISenseConfig
---@field public Implementation TSubclassOf<UAISense_Hearing>
---@field public HearingRange number
---@field public LoSHearingRange number
---@field public bUseLoSHearing boolean @Warning: has significant runtime cost
---@field public DetectionByAffiliation FAISenseAffiliationFilter
local UAISenseConfig_Hearing = {}

