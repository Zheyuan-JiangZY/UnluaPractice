---Transforms to be used by all clients to align their coordinate spaces.
---These transforms are sent by either an authoritative or pseudo-authoritative ("chosen one")
---client to the server via AMagicLeapSharedWorldPlayerController::ServerSetAlignmentTransforms()
---which redirects it to the AMagicLeapSharedWorldGameState instance from where these transforms
---are replicated to all clients to use locally for alignment.
---These transforms can also be set by the server, if they are saved from a previous session.
---@class FMagicLeapSharedWorldAlignmentTransforms
---@field public AlignmentTransforms TArray<FTransform>
local FMagicLeapSharedWorldAlignmentTransforms = {}
