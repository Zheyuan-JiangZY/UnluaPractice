---@class ThirdPerson_AnimBP_C : UAnimInstance
---@field public UberGraphFrame FPointerToUberGraphFrame
---@field public AnimGraphNode_Root FAnimNode_Root
---@field public AnimGraphNode_TransitionResult_3 FAnimNode_TransitionResult
---@field public AnimGraphNode_TransitionResult_2 FAnimNode_TransitionResult
---@field public AnimGraphNode_TransitionResult_1 FAnimNode_TransitionResult
---@field public AnimGraphNode_TransitionResult FAnimNode_TransitionResult
---@field public AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field public AnimGraphNode_StateResult_3 FAnimNode_StateResult
---@field public AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field public AnimGraphNode_StateResult_2 FAnimNode_StateResult
---@field public AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field public AnimGraphNode_StateResult_1 FAnimNode_StateResult
---@field public AnimGraphNode_BlendSpacePlayer FAnimNode_BlendSpacePlayer
---@field public AnimGraphNode_StateResult FAnimNode_StateResult
---@field public AnimGraphNode_StateMachine FAnimNode_StateMachine
---@field public IsInAir? boolean
---@field public Speed number
local ThirdPerson_AnimBP_C = {}

---@param AnimGraph FPoseLink @[out] 
function ThirdPerson_AnimBP_C:AnimGraph(AnimGraph) end

function ThirdPerson_AnimBP_C:EvaluateGraphExposedInputs_ExecuteUbergraph_ThirdPerson_AnimBP_AnimGraphNode_TransitionResult_F867B5374C7EFB9ED9010FA7431019DF() end

function ThirdPerson_AnimBP_C:EvaluateGraphExposedInputs_ExecuteUbergraph_ThirdPerson_AnimBP_AnimGraphNode_TransitionResult_175FFF54400CA0EC412B7083B0989D7E() end

---Executed when the Animation is updated
---@param DeltaTimeX number
function ThirdPerson_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end

