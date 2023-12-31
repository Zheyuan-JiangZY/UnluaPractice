---List of possible errors when calling the Identity functions.
---@class EMagicLeapIdentityError
---@field public Ok integer
---@field public InvalidParam integer
---@field public AllocFailed integer
---@field public PrivilegeDenied integer
---@field public FailedToConnectToLocalService integer
---@field public FailedToConnectToCloudService integer
---@field public CloudAuthentication integer
---@field public InvalidInformationFromCloud integer
---@field public NotLoggedIn integer
---@field public ExpiredCredentials integer
---@field public FailedToGetUserProfile integer
---@field public Unauthorized integer
---@field public CertificateError integer
---@field public RejectedByCloud integer
---@field public AlreadyLoggedIn integer
---@field public ModifyIsNotSupported integer
---@field public NetworkError integer
---@field public UnspecifiedFailure integer
---@field public EMagicLeapIdentityError_MAX integer
local EMagicLeapIdentityError = {}
