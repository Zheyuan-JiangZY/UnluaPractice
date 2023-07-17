---@class UNetDriver : UObject
---@field public NetConnectionClassName string @Used to specify the class to use for connections
---@field public ReplicationDriverClassName string
---@field public MaxDownloadSize integer @
---@field public bClampListenServerTickRate boolean @
---@field public NetServerMaxTickRate integer @
---@field public MaxNetTickRate integer @Limit tick rate of replication to allow very high frame rates to still replicate data. A value less or equal to zero means use the engine tick rate. A value greater than zero will clamp the net tick rate to this value.
---@field public MaxInternetClientRate integer @
---@field public MaxClientRate integer @
---@field public ServerTravelPause number @Amount of time a server will wait before traveling to next map, gives clients time to receive final RPCs on existing level @@see NextSwitchCountdown
---@field public SpawnPrioritySeconds number @
---@field public RelevantTimeout number @
---@field public KeepAliveTime number @
---@field public InitialConnectTimeout number @Amount of time to wait for a new net connection to be established before destroying the connection
---@field public ConnectionTimeout number @Amount of time to wait before considering an established connection timed out. Typically shorter than the time to wait on a new connection because this connection should already have been setup and any interruption should be trapped quicker.
---@field public TimeoutMultiplierForUnoptimizedBuilds number @A multiplier that is applied to the above values when we are running with unoptimized builds (debug) or data (uncooked). This allows us to retain normal timeout behavior while debugging without resorting to the nuclear 'notimeouts' option or bumping the values above. If ==0 multiplier = 1
---@field public bNoTimeouts boolean @If true, ignore timeouts completely.  Should be used only in development
---@field public bNeverApplyNetworkEmulationSettings boolean @If true this NetDriver will not apply the network emulation settings that simulate latency and packet loss in non-shippable builds
---@field public ServerConnection UNetConnection @Connection to the server (this net driver is a client)
---@field public ClientConnections TArray<UNetConnection> @Array of connections to clients (this net driver is a host) - unsorted, and ordering changes depending on actor replication
---@field public RecentlyDisconnectedTrackingTime integer @The amount of time, in seconds, that recently disconnected clients should be tracked
---@field public World UWorld @World this net driver is associated with
---@field public WorldPackage UPackage
---@field public NetConnectionClass TSubclassOf<UObject> @The loaded UClass of the net connection type to use
---@field public ReplicationDriverClass TSubclassOf<UObject>
---@field public NetDriverName string @Used to specify the net driver to filter actors with (NAME_None || NAME_GameNetDriver is the default net driver)
---@field public ChannelDefinitions TArray<FChannelDefinition> @Used to specify available channel types and their associated UClass
---@field public ChannelDefinitionMap TMap<string, FChannelDefinition> @Used for faster lookup of channel definitions by name.
---@field private ActorChannelPool TArray<UChannel> @List of channels that were previously used and can be used again
---@field public Time number
---@field private ReplicationDriver UReplicationDriver
local UNetDriver = {}

