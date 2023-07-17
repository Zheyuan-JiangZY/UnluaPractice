---@class UInterpGroup : UObject
---@field public InterpTracks TArray<UInterpTrack>
---@field public GroupName string @Within an InterpData, all GroupNames must be unique. Used for naming Variable connectors on the Action in Kismet and finding each groups object.
---@field public GroupColor FColor @Colour used for drawing tracks etc. related to this group.
---@field public bCollapsed boolean @Whether or not this group is folded away in the editor.
---@field public bVisible boolean @Whether or not this group is visible in the editor.
---@field public bIsFolder boolean @When enabled, this group is treated like a folder in the editor, which should only be used for organization.  Folders are never associated with actors and don't have a presence in the Kismet graph.
---@field public bIsParented boolean @When true, this group is considered a 'visual child' of another group.  This doesn't at all affect the behavior of the group, it's only for visual organization.  Also, it's implied that the parent is the next prior group in the array that doesn't have a parent.
---@field private bIsSelected boolean @When enabled, this group will be selected in the interp editor.
local UInterpGroup = {}

