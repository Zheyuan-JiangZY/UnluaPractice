---Data Interface allowing sampling of static meshes.
---@class UNiagaraDataInterfaceStaticMesh : UNiagaraDataInterface
---@field public SourceMode ENDIStaticMesh_SourceMode @Controls how to retrieve the Static Mesh Component to attach to.
---@field public PreviewMesh TSoftObjectPtr<UStaticMesh> @Mesh used to sample from when not overridden by a source actor from the scene. Only available in editor for previewing. This is removed in cooked builds.
---@field public DefaultMesh UStaticMesh @Mesh used to sample from when not overridden by a source actor from the scene. This mesh is NOT removed from cooked builds.
---@field public Source AActor @The source actor from which to sample. Takes precedence over the direct mesh. Note that this can only be set when used as a user variable on a component in the world.
---@field public SourceComponent UStaticMeshComponent @The source component from which to sample. Takes precedence over the direct mesh. Not exposed to the user, only indirectly accessible from blueprints.
---@field public SectionFilter FNDIStaticMeshSectionFilter @Array of filters the can be used to limit sampling to certain sections of the mesh.
---@field public bUsePhysicsBodyVelocity boolean @If true then the mesh velocity is taken from the mesh component's physics data. Otherwise it will be calculated by diffing the component transforms between ticks, which is more reliable but won't work on the first frame.
---@field public FilteredSockets TArray<string> @List of filtered sockets to use.
local UNiagaraDataInterfaceStaticMesh = {}

