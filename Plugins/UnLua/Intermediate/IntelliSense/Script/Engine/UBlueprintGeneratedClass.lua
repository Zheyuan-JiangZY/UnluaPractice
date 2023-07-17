---@class UBlueprintGeneratedClass : UClass
---@field public NumReplicatedProperties integer
---@field public bHasNativizedParent boolean @Flag used to indicate if this class has a nativized parent in a cooked build.
---@field public bHasCookedComponentInstancingData boolean @Flag used to indicate if this class has data to support the component instancing fast path.
---@field public bIsSparseClassDataSerializable boolean @Used to check if this class has sparse data that can be serialized. This will be false when loading the data if it hasn't already been saved out.
---@field public DynamicBindingObjects TArray<UDynamicBlueprintBinding> @Array of objects containing information for dynamically binding delegates to functions in this blueprint
---@field public ComponentTemplates TArray<UActorComponent> @Array of component template objects, used by AddComponent function
---@field public Timelines TArray<UTimelineTemplate> @Array of templates for timelines that should be created
---@field public ComponentClassOverrides TArray<FBPComponentClassOverride> @Array of blueprint overrides of component classes in parent classes
---@field public SimpleConstructionScript USimpleConstructionScript @'Simple' construction script - graph of components to instance
---@field public InheritableComponentHandler UInheritableComponentHandler @Stores data to override (in children classes) components (created by SCS) from parent classes
---@field public UberGraphFunction UFunction
---@field public OverridenArchetypeForCDO UObject
---@field public PropertyGuids TMap<string, FGuid> @Property guid map
---@field public CalledFunctions TArray<UFunction>
---@field public CookedComponentInstancingData TMap<string, FBlueprintCookedComponentInstancingData> @Mapping of changed properties & data to apply when instancing components in a cooked build (one entry per named AddComponent node template for fast lookup at runtime). Note: This is not currently utilized by the editor; it is a runtime optimization for cooked builds only. It assumes that the component class structure does not change.
local UBlueprintGeneratedClass = {}

