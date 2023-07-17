---The widget blueprint generated class allows us to create blueprint-able widgets for UMG at runtime.
---All WBPGC's are of UUserWidget classes, and they perform special post initialization using this class
---to give themselves many of the same capabilities as AActor blueprints, like dynamic delegate binding for
---widgets.
---@class UWidgetBlueprintGeneratedClass : UBlueprintGeneratedClass
---@field private WidgetTree UWidgetTree @A tree of the widget templates to be created
---@field public bCanCallPreConstruct boolean
---@field private bClassRequiresNativeTick boolean @The classes native parent requires a native tick
---@field public Bindings TArray<FDelegateRuntimeBinding>
---@field public Animations TArray<UWidgetAnimation>
---@field public NamedSlots TArray<string>
local UWidgetBlueprintGeneratedClass = {}

