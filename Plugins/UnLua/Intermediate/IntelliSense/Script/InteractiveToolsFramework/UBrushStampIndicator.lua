---* UBrushStampIndicator is a simple 3D brush indicator.
---@class UBrushStampIndicator : UInteractiveGizmo
---@field public BrushRadius number
---@field public BrushFalloff number
---@field public BrushPosition FVector
---@field public BrushNormal FVector
---@field public bDrawIndicatorLines boolean
---@field public bDrawRadiusCircle boolean
---@field public SampleStepCount integer
---@field public LineColor FLinearColor
---@field public LineThickness number
---@field public bDepthTested boolean
---@field public bDrawSecondaryLines boolean
---@field public SecondaryLineThickness number
---@field public SecondaryLineColor FLinearColor
---@field public AttachedComponent UPrimitiveComponent @Optional Component that will be transformed such that it tracks the Radius/Position/Normal
local UBrushStampIndicator = {}

