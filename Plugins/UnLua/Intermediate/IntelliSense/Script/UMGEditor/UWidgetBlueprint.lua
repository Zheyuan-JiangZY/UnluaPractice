---The widget blueprint enables extending UUserWidget the user extensible UWidget.
---@class UWidgetBlueprint : UBaseWidgetBlueprint
---@field public Bindings TArray<FDelegateEditorBinding>
---@field public Animations TArray<UWidgetAnimation>
---@field public PaletteCategory string @Don't directly modify this property to change the palette category.  The actual value is stored in the CDO of the UUserWidget, but a copy is stored here so that it's available in the serialized Tag data in the asset header for access in the FAssetData.
---@field private TickFrequency EWidgetTickFrequency @The desired tick frequency set by the user on the UserWidget's CDO.
---@field private TickPrediction EWidgetCompileTimeTickPrediction @The computed frequency that the widget will need to be ticked at.  You can find the reasons for this decision by looking at TickPredictionReason.
---@field private TickPredictionReason string @The reasons we may need to tick this widget.
---@field public PropertyBindings integer @The total number of property bindings.  Consider this as a performance warning.
local UWidgetBlueprint = {}

