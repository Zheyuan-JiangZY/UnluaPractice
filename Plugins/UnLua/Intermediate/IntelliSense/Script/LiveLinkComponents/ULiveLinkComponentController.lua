---@class ULiveLinkComponentController : UActorComponent
---@field public SubjectRepresentation FLiveLinkSubjectRepresentation
---@field public ControllerMap TMap<TSubclassOf<ULiveLinkRole>, ULiveLinkControllerBase> @Instanced controllers used to control the desired role
---@field public bUpdateInEditor boolean
---@field public OnLiveLinkUpdated MulticastDelegate @This Event is triggered any time new LiveLink data is available, including in the editor
---@field public ComponentToControl FComponentReference
---@field public bDisableEvaluateLiveLinkWhenSpawnable boolean @If true, will not evaluate LiveLink if the attached actor is a spawnable in Sequencer
---@field public bEvaluateLiveLink boolean @If false, will not evaluate live link, effectively pausing.
local ULiveLinkComponentController = {}

