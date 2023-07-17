---@class DefaultRecordingOverlay_C : UTakeRecorderOverlayWidget
---@field public UberGraphFrame FPointerToUberGraphFrame
---@field public CanvasPanel_0 UCanvasPanel
---@field public Circles UImage
---@field public CountdownBorder UBorder
---@field public CountdownText UTextBlock
---@field public Crosshair_H UImage
---@field public Crosshair_V UImage
---@field public MID_Countdown UMaterialInstanceDynamic
local DefaultRecordingOverlay_C = {}

---@return ESlateVisibility
function DefaultRecordingOverlay_C:GetCountdownVisibility() end

---@return string
function DefaultRecordingOverlay_C:GetCountdownText() end

---Called by both the game and the editor.  Allows users to run initial setup for their widgets to better preview
---the setup in the designer and since generally that same setup code is required at runtime, it's called there
---as well.
---**WARNING**
---This is intended purely for cosmetic updates using locally owned data, you can not safely access any game related
---state, if you call something that doesn't expect to be run at editor time, you may crash the editor.
---In the event you save the asset with blueprint code that causes a crash on evaluation.  You can turn off
---PreConstruct evaluation in the Widget Designer settings in the Editor Preferences.
---@param IsDesignTime boolean
function DefaultRecordingOverlay_C:PreConstruct(IsDesignTime) end

---Ticks this widget.  Override in derived classes, but always call the parent implementation.
---@param MyGeometry FGeometry
---@param InDeltaTime number
function DefaultRecordingOverlay_C:Tick(MyGeometry, InDeltaTime) end

