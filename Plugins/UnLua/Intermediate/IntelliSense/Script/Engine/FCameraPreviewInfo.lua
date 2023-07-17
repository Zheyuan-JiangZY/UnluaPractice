---Preview APawn class for this track
---@class FCameraPreviewInfo
---@field public PawnClass TSubclassOf<APawn>
---@field public AnimSeq UAnimSequence
---@field public Location FVector @for now this is read-only. It has maintenance issue to be resolved if I enable this.
---@field public Rotation FRotator
---@field public PawnInst APawn @APawn Inst - CameraAnimInst doesn't really exist in editor *
local FCameraPreviewInfo = {}
