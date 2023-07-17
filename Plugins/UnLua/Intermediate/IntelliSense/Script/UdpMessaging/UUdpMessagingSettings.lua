---@class UUdpMessagingSettings : UObject
---@field public EnabledByDefault boolean @Whether UDP messaging is enabled by default. If false -messaging will need to be added to the commandline when running non-editor builds. (Note - in Shipping builds ALLOW_UDP_MESSAGING_SHIPPING=1 must also be defined in TargetRules for messaging to be available with or without this setting)
---@field public EnableTransport boolean @Whether the UDP transport channel is enabled. Can be specified on the command line with `-UDPMESSAGING_TRANSPORT_ENABLE=`
---@field public bAutoRepair boolean @Whether the UDP transport channel should try to auto repair when in error.
---@field public MaxSendRate number @Maximum sustained transmission rate in Gbit / s. The default value is 1 Gbit/s. This is to control transmission of larger packages over the network. Without a limit, it is possible for packet data loss to occur because more data may be sent then may be supported by your network card. Adjust this value higher or lower depending on your network capacity.
---@field public AutoRepairAttemptLimit integer @The number of consecutive attempt the auto repair routine will try to repair.
---@field public bStopServiceWhenAppDeactivates boolean @Whether to stop the transport service when the application deactivates, and restart it when the application is reactivated
---@field public UnicastEndpoint string @The IP endpoint to listen to and send packets from. The format is IP_ADDRESS:PORT_NUMBER. 0.0.0.0:0 will bind to the default network adapter on Windows, and all available network adapters on other operating systems. Specifying an interface IP here, will use that interface for multicasting and static endpoint *might* also reach this client through <unicast ip:multicast port> Specifying both the IP and Port will allow usage of static endpoint to reach this client Can be specified on the command line with `-UDPMESSAGING_TRANSPORT_UNICAST=`
---@field public MulticastEndpoint string @The IP endpoint to send multicast packets to. The format is IP_ADDRESS:PORT_NUMBER. The multicast IP address must be in the range 224.0.0.0 to 239.255.255.255. Can be specified on the command line with `-UDPMESSAGING_TRANSPORT_MULTICAST=`
---@field public MessageFormat EUdpMessageFormat @The format used to serialize the UDP message payload.
---@field public MulticastTimeToLive integer @The time-to-live (TTL) for sent multicast packets.
---@field public StaticEndpoints TArray<string> @The IP endpoints of static devices. Use this setting to reach devices on other subnets, such as mobile phones on a WiFi network. The format is IP_ADDRESS:PORT_NUMBER.
---@field public EnableTunnel boolean @Whether the UDP tunnel is enabled.
---@field public TunnelUnicastEndpoint string @The local IP endpoint to listen to and send packets from. The format is IP_ADDRESS:PORT_NUMBER.
---@field public TunnelMulticastEndpoint string @The IP endpoint to send multicast packets to. The format is IP_ADDRESS:PORT_NUMBER. The multicast IP address must be in the range 224.0.0.0 to 239.255.255.255.
---@field public RemoteTunnelEndpoints TArray<string> @The IP endpoints of remote tunnel nodes. Use this setting to connect to remote tunnel services. The format is IP_ADDRESS:PORT_NUMBER.
local UUdpMessagingSettings = {}

