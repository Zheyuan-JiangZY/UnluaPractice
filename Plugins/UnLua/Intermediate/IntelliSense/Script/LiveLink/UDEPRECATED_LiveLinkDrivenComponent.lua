---A component that applies data from Live Link to the owning actor
---@class UDEPRECATED_LiveLinkDrivenComponent : UActorComponent
---@field public SubjectName FLiveLinkSubjectName @The name of the live link subject to take data from
---@field public ActorTransformBone string @The name of the bone to drive the actors transform with (if None then we will take the first bone)
---@field public bModifyActorTransform boolean @Should the actors transform be driven by live link
---@field public bSetRelativeLocation boolean @Should the transform from live link be treated as relative or world space
local UDEPRECATED_LiveLinkDrivenComponent = {}

