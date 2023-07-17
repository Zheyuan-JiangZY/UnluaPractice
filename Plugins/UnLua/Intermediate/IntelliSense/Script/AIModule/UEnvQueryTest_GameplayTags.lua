---@class UEnvQueryTest_GameplayTags : UEnvQueryTest
---@field protected TagQueryToMatch FGameplayTagQuery
---@field protected bUpdatedToUseQuery boolean @Used to determine whether the file format needs to be updated to move data into TagQueryToMatch or not.
---@field protected TagsToMatch EGameplayContainerMatchType @Deprecated property.  Used only to load old data into TagQueryToMatch.
---@field protected GameplayTags FGameplayTagContainer @Deprecated property.  Used only to load old data into TagQueryToMatch.
local UEnvQueryTest_GameplayTags = {}

