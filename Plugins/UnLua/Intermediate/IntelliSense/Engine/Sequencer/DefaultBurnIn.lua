---@class DefaultBurnIn_C : ULevelSequenceBurnIn
---@field public UberGraphFrame FPointerToUberGraphFrame
---@field public Border_0 UBorder
---@field public Border_3 UBorder
---@field public BottomCenter UTextBlock
---@field public BottomLeft UTextBlock
---@field public BottomRight UTextBlock
---@field public TopCenter UTextBlock
---@field public TopLeft UTextBlock
---@field public TopRight UTextBlock
---@field public Watermark UImage
---@field public Foreground Color FLinearColor
---@field public Background Color FLinearColor
---@field public Date string
---@field public Options DefaultBurnInOptions_C
---@field public hh string
---@field public mm string
---@field public ss string
---@field public ff string
---@field public MasterFrame string
---@field public ShotFrame string
---@field public MasterName string
---@field public ShotName string
---@field public FocalLength string
---@field public FocusDistance string
---@field public Aperture string
---@field public SensorWidth string
---@field public SensorHeight string
---@field public SensorAspectRatio string
---@field public Translation FVector
---@field public Rotation FRotator
---@field public bCached boolean
---@field public EngineVersion string
---@field public SourceTimecode string
local DefaultBurnIn_C = {}

function DefaultBurnIn_C:CacheData() end

---@return string
function DefaultBurnIn_C:Get_BottomRight_Text_0() end

---@return string
function DefaultBurnIn_C:Get_BottomCenter_Text_0() end

---@return string
function DefaultBurnIn_C:Get_BottomLeft_Text_0() end

---@return string
function DefaultBurnIn_C:Get_TopRight_Text_0() end

---@return string
function DefaultBurnIn_C:Get_TopCenter_Text_0() end

---@return string
function DefaultBurnIn_C:Get_TopLeft_Text_0() end

---Get the settings class to use for this burn in
---@return TSubclassOf_ULevelSequenceBurnInInitSettings_
function DefaultBurnIn_C:GetSettingsClass() end

---Called after the underlying slate widget is constructed.  Depending on how the slate object is used
---this event may be called multiple times due to adding and removing from the hierarchy.
---If you need a true called-once-when-created event, use OnInitialized.
function DefaultBurnIn_C:Construct() end

---Called when this burn in is receiving its settings
---@param InSettings UObject
function DefaultBurnIn_C:SetSettings(InSettings) end

---Ticks this widget.  Override in derived classes, but always call the parent implementation.
---@param MyGeometry FGeometry
---@param InDeltaTime number
function DefaultBurnIn_C:Tick(MyGeometry, InDeltaTime) end

