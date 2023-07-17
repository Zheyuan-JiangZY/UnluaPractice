---@class RenderToTexture_Pawn_C : APawn
---@field public UberGraphFrame FPointerToUberGraphFrame
---@field public Pawncam UCameraComponent
---@field public Root UStaticMeshComponent
---@field public BaseColor boolean
---@field public Specular boolean
---@field public Normal boolean
---@field public Opacity boolean
---@field public Roughness boolean
---@field public AmbientOcclusion boolean
---@field public MaterialAmbientOcclusion boolean
---@field public ResolutionMultiplier integer
---@field public BufferCommands string
---@field public ShotCommand string
---@field public Backface SSS Meshes TArray<AStaticMeshActor>
---@field public MIDArray TArray<UMaterialInstanceDynamic>
---@field public Generator RenderToTexture_LevelBP_C
local RenderToTexture_Pawn_C = {}

function RenderToTexture_Pawn_C:renderimposter() end

---Event when play begins for this actor.
function RenderToTexture_Pawn_C:ReceiveBeginPlay() end

function RenderToTexture_Pawn_C:renderlightmaps() end

function RenderToTexture_Pawn_C:renderdepth() end

function RenderToTexture_Pawn_C:rendertextures() end

function RenderToTexture_Pawn_C:debugdepth() end

