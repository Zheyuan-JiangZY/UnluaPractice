---@class UNiagaraSettings : UDeveloperSettings
---@field public AdditionalParameterTypes TArray<FSoftObjectPath>
---@field public AdditionalPayloadTypes TArray<FSoftObjectPath>
---@field public AdditionalParameterEnums TArray<FSoftObjectPath>
---@field public bSystemViewportInOrbitMode boolean @Sets the default navigation behavior for the system preview viewport.
---@field public DefaultEffectType FSoftObjectPath @Default effect type to use for effects that don't define their own. Can be null.
---@field public QualityLevels TArray<string> @The quality levels Niagara uses.
---@field public ComponentRendererWarningsPerClass TMap<string, string> @Info texts that the component renderer shows the user depending on the selected component class.
---@field public DefaultRenderTargetFormat integer @The default render target format used by all Niagara Render Target Data Interfaces unless overridden.
---@field public DefaultGridFormat ENiagaraGpuBufferFormat @The default buffer format used by all Niagara Grid Data Interfaces unless overridden.
---@field public DefaultRendererMotionVectorSetting ENiagaraDefaultRendererMotionVectorSetting @The default setting for motion vectors in Niagara renderers
---@field public NDISkelMesh_GpuMaxInfluences integer @Controls the maximum number of influences we allow the Skeletal Mesh Data Interface to use on the GPU.  Changing this setting requires restarting the editor.
---@field public NDISkelMesh_GpuUniformSamplingFormat integer @Controls the format used for uniform sampling on the GPU.  Changing this setting requires restarting the editor.
---@field public NDISkelMesh_AdjacencyTriangleIndexFormat integer @Controls the format used for specifying triangle indexes in adjacency buffers.  Changing this setting requires restarting the editor.
---@field private DefaultEffectTypePtr UNiagaraEffectType
local UNiagaraSettings = {}

