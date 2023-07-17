---UBaseBrushTool implements standard brush-style functionality for an InteractiveTool.
---This includes:
---  1) brush radius property set with dimension-relative brush sizing and default brush radius hotkeys
---  2) brush indicator visualization
---  3) tracking of last brush stamp location via .LastBrushStamp FProperty
---  4) status of brush stroke via .bInBrushStroke FProperty
---@class UBaseBrushTool : UMeshSurfacePointTool
---@field public BrushProperties UBrushBaseProperties @Properties that control brush size/etc
---@field public bInBrushStroke boolean @Set to true by Tool if user is currently in an active brush stroke
---@field public WorldToLocalScale number @Uniform scale factor that scales from world space (where brush usually exists) to local space
---@field public LastBrushStamp FBrushStampData @Position of brush at last update (both during stroke and during Hover)
---@field protected PropertyClass TSoftClassPtr<UBrushBaseProperties>
---@field protected BrushStampIndicator UBrushStampIndicator
local UBaseBrushTool = {}

