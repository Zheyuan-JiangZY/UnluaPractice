---Asset for finding available Message Bus Sources.
---@class ULiveLinkMessageBusFinder : UObject
local ULiveLinkMessageBusFinder = {}

---* Broadcasts a message to the network and returns a list of all providers who replied within a set amount of time.
---*
---* @@param AvailableProviders Will contain the collection of found Message Bus Providers.
---* @@param Duration The amount of time to wait for replies in seconds
---@param WorldContextObject UObject
---@param Duration number
---@param AvailableProviders TArray_FProviderPollResult_ @[out] 
function ULiveLinkMessageBusFinder:GetAvailableProviders(WorldContextObject, Duration, AvailableProviders) end

---* Constructs a new Message Bus Finder which enables you to detect available Message Bus Providers on the network
---*
---* @@return The newly constructed Message Bus Finder
---@return ULiveLinkMessageBusFinder
function ULiveLinkMessageBusFinder.ConstructMessageBusFinder() end

---* Connects to a given Message Bus Provider and returns a handle to the created LiveLink Source
---*
---* @@param Provider The provider to connect to.
---* @@param SourceHandle A handle to the created LiveLink Source, lets you query information about the created source and request a shutdown
---@param Provider FProviderPollResult @[out] 
---@param SourceHandle FLiveLinkSourceHandle @[out] 
function ULiveLinkMessageBusFinder.ConnectToProvider(Provider, SourceHandle) end

