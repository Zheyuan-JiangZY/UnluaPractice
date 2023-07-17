---Persistent identifier to a specific object binding within a sequence hierarchy.
---Binding IDs come in 3 flavors with Local and External being preferred as they are reslilient towards sequences being authored in isolation or included in other master sequences:
---    Local: (ResolveParentIndex == 0) SequenceID relates to _this sequence's_ local hierarchy; represents an object binding within the same sequence as the ID is resolved, or inside one of its sub-sequences. Sequence ID must be remapped at runtime.
---    External: (ResolveParentIndex > 0) SequenceID is local to the parent sequence of this one denoted by the parent index (ie, 1 = parent, 2 = grandparent etc). Sequence ID must be remapped at runtime.
---    Fixed: Represents a binding anywhere in the sequence; always resolved from the root sequence.
---Fixed bindings will break if the sequence is evaluated inside a different master sequence.
---@class FMovieSceneObjectBindingID
---@field private Guid FGuid @Identifier for the object binding within the sequence
---@field private SequenceID integer @Sequence ID stored as an int32 so that it can be used in the blueprint VM
---@field private ResolveParentIndex integer @The parent index to resolve the sequence ID from. 0 signifies the sequence this binding ID is serialized within, -1 signifies the master sequence (previously EMovieSceneObjectBindingSpace::Root)
local FMovieSceneObjectBindingID = {}
