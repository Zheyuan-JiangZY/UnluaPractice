---Gives owning actor a way to auto-register as perception system's sense stimuli source
---@class UAIPerceptionStimuliSourceComponent : UActorComponent
---@field protected bAutoRegisterAsSource boolean
---@field protected RegisterAsSourceForSenses TArray<TSubclassOf<UAISense>>
local UAIPerceptionStimuliSourceComponent = {}

---Unregisters owning actor from sources list of a specified sense class
---@param SenseClass TSubclassOf_UAISense_
function UAIPerceptionStimuliSourceComponent:UnregisterFromSense(SenseClass) end

---Unregister owning actor from being a source of sense stimuli
function UAIPerceptionStimuliSourceComponent:UnregisterFromPerceptionSystem() end

---Registers owning actor as source of stimuli for senses specified in RegisterAsSourceForSenses.
---    Note that you don't have to do it if bAutoRegisterAsSource == true
function UAIPerceptionStimuliSourceComponent:RegisterWithPerceptionSystem() end

---Registers owning actor as source for specified sense class
---@param SenseClass TSubclassOf_UAISense_
function UAIPerceptionStimuliSourceComponent:RegisterForSense(SenseClass) end

