---@class UVRNotificationsComponent : UActorComponent
---@field public HMDTrackingInitializingAndNeedsHMDToBeTrackedDelegate MulticastDelegate @This will be called on Morpheus if the HMD starts up and is not fully initialized (in NOT_STARTED or CALIBRATING states). The HMD will stay in NOT_STARTED until it is successfully position tracked.  Until it exits NOT_STARTED orientation based reprojection does not happen.  Therefore we do not update rotation at all to avoid user discomfort. Instructions to get the hmd tracked should be shown to the user. Sony may fix this eventually. (PS4 Only)
---@field public HMDTrackingInitializedDelegate MulticastDelegate @This will be called on Morpheus when the HMD is done initializing and therefore reprojection will start functioning. The app can continue now. (PS4 Only)
---@field public HMDRecenteredDelegate MulticastDelegate @This will be called when the application is asked for VR headset recenter.
---@field public HMDLostDelegate MulticastDelegate @This will be called when connection to HMD is lost.
---@field public HMDReconnectedDelegate MulticastDelegate @This will be called when connection to HMD is restored.
---@field public HMDConnectCanceledDelegate MulticastDelegate @This will be called when the user declines to connect the HMD when prompted to do so by a system dialog. (PS4 Only)
---@field public HMDPutOnHeadDelegate MulticastDelegate @This will be called when the HMD detects that it has been put on by a player.
---@field public HMDRemovedFromHeadDelegate MulticastDelegate @This will be called when the HMD detects that it has been taken off by a player (disconnecting the hmd also causes it to register as taken off).
---@field public VRControllerRecenteredDelegate MulticastDelegate @This will be called when the VR system recenters a controller.
local UVRNotificationsComponent = {}

function UVRNotificationsComponent:VRNotificationsDelegate__DelegateSignature() end

