---@class UAISense : UObject
---@field protected DefaultExpirationAge number @age past which stimulus of this sense are "forgotten". (DEPRECATED: This property will be removed in future versions. Use AISenseConfig::MaxAge instead.)
---@field protected NotifyType EAISenseNotifyType
---@field protected bWantsNewPawnNotification boolean @whether this sense is interested in getting notified about new Pawns being spawned     this can be used for example for automated sense sources registration
---@field protected bAutoRegisterAllPawnsAsSources boolean @If true all newly spawned pawns will get auto registered as source for this sense.
---@field private PerceptionSystemInstance UAIPerceptionSystem
local UAISense = {}

