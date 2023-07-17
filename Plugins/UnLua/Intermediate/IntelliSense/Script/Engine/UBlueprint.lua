---Blueprints are special assets that provide an intuitive, node-based interface that can be used to create new types of Actors
---and script level events; giving designers and gameplay programmers the tools to quickly create and iterate gameplay from
---within Unreal Editor without ever needing to write a line of code.
---@class UBlueprint : UBlueprintCore
---@field public ParentClass TSubclassOf<UObject> @Pointer to the parent class that the generated class should derive from. This *can* be null under rare circumstances, one such case can be created by creating a blueprint (A) based on another blueprint (B), shutting down the editor, and deleting the parent blueprint. Exported as Alphabetical in GetAssetRegistryTags
---@field public BlueprintType integer @The type of this blueprint
---@field public bRecompileOnLoad boolean @Whether or not this blueprint should recompile itself on load
---@field public bHasBeenRegenerated boolean @When the class generated by this blueprint is loaded, it will be recompiled the first time.  After that initial recompile, subsequent loads will skip the regeneration step
---@field public bIsRegeneratingOnLoad boolean @State flag to indicate whether or not the Blueprint is currently being regenerated on load
---@field public bBeingCompiled boolean @The blueprint is currently compiled
---@field public bIsNewlyCreated boolean @Whether or not this blueprint is newly created, and hasn't been opened in an editor yet
---@field public bForceFullEditor boolean @Whether to force opening the full (non data-only) editor for this blueprint.
---@field public bQueuedForCompilation boolean
---@field public bRunConstructionScriptOnDrag boolean @whether or not you want to continuously rerun the construction script for an actor as you drag it in the editor, or only when the drag operation is complete
---@field public bRunConstructionScriptInSequencer boolean @whether or not you want to continuously rerun the construction script for an actor in sequencer
---@field public bGenerateConstClass boolean @Whether or not this blueprint's class is a const class or not.  Should set CLASS_Const in the KismetCompiler.
---@field public bGenerateAbstractClass boolean @Whether or not this blueprint's class is a abstract class or not.  Should set CLASS_Abstract in the KismetCompiler.
---@field public bDisplayCompilePIEWarning boolean @TRUE to show a warning when attempting to start in PIE and there is a compiler error on this Blueprint
---@field public bDeprecate boolean @Deprecates the Blueprint, marking the generated class with the CLASS_Deprecated flag
---@field public bDuplicatingReadOnly boolean @Flag indicating that a read only duplicate of this blueprint is being created, used to disable logic in ::PostDuplicate, This flag needs to be copied on duplication (because it's the duplicated object that we're disabling on PostDuplicate), but we don't *need* to serialize it for permanent objects. Without setting this flag a blueprint will be marked dirty when it is duplicated and if saved while in this dirty state you will not be able to open the blueprint. More specifically, UClass::Rename (called by DestroyGeneratedClass) sets a dirty flag on the package. Once saved the package will fail to open because some unnamed objects are present in the pacakge. This flag can be used to avoid the package being marked as dirty in the first place. Ideally PostDuplicateObject would not rename classes that are still in use by the original object.
---@field public NativizationFlag EBlueprintNativizationFlag @When exclusive nativization is enabled, then this asset will be nativized. All super classes must be also nativized.
---@field public CompileMode EBlueprintCompileMode @The mode that will be used when compiling this class.
---@field public Status integer @The current status of this blueprint
---@field public BlueprintDisplayName string @Overrides the BP's display name in the editor UI
---@field public BlueprintDescription string @Shows up in the content browser tooltip when the blueprint is hovered
---@field public BlueprintNamespace string @The namespace of this blueprint (if set, the Blueprint will be treated differently for the context menu)
---@field public BlueprintCategory string @The category of the Blueprint, used to organize this Blueprint class when displayed in palette windows
---@field public HideCategories TArray<string> @Additional HideCategories. These are added to HideCategories from parent.
---@field public BlueprintSystemVersion integer @The version of the blueprint system that was used to  create this blueprint
---@field public SimpleConstructionScript USimpleConstructionScript @'Simple' construction script - graph of components to instance
---@field public UbergraphPages TArray<UEdGraph> @Set of pages that combine into a single uber-graph
---@field public FunctionGraphs TArray<UEdGraph> @Set of functions implemented for this class graphically
---@field public DelegateSignatureGraphs TArray<UEdGraph> @Graphs of signatures for delegates
---@field public MacroGraphs TArray<UEdGraph> @Set of macros implemented for this class
---@field public IntermediateGeneratedGraphs TArray<UEdGraph> @Set of functions actually compiled for this class
---@field public EventGraphs TArray<UEdGraph> @Set of functions actually compiled for this class
---@field public PRIVATE_CachedMacroInfo TMap<UEdGraph, FBlueprintMacroCosmeticInfo> @Cached cosmetic information about macro graphs, use GetCosmeticInfoForMacro() to access
---@field public ComponentTemplates TArray<UActorComponent> @Array of component template objects, used by AddComponent function
---@field public Timelines TArray<UTimelineTemplate> @Array of templates for timelines that should be created
---@field public ComponentClassOverrides TArray<FBPComponentClassOverride> @Array of blueprint overrides of component classes in parent classes
---@field public InheritableComponentHandler UInheritableComponentHandler @Stores data to override (in children classes) components (created by SCS) from parent classes
---@field public NewVariables TArray<FBPVariableDescription> @Array of new variables to be added to generated class
---@field public CategorySorting TArray<string> @Array of user sorted categories
---@field public ImplementedInterfaces TArray<FBPInterfaceDescription> @Array of info about the interfaces we implement in this blueprint
---@field public LastEditedDocuments TArray<FEditedDocumentInfo> @Set of documents that were being edited in this blueprint, so we can open them right away
---@field public Bookmarks TMap<FGuid, FEditedDocumentInfo> @Bookmark data
---@field public BookmarkNodes TArray<FBPEditorBookmarkNode> @Bookmark nodes (for display)
---@field public Breakpoints TArray<UBreakpoint> @Persistent debugging options
---@field public WatchedPins TArray<FEdGraphPinReference>
---@field public DeprecatedPinWatches TArray<UEdGraphPin_Deprecated>
---@field public ComponentTemplateNameIndex TMap<string, integer> @Index map for component template names
---@field public OldToNewComponentTemplateNames TMap<string, string> @Maps old to new component template names
---@field public Extensions TArray<UBlueprintExtension> @Array of extensions for this blueprint
---@field public ThumbnailInfo UThumbnailInfo @Information for thumbnail rendering
---@field public CrcLastCompiledCDO integer @CRC for CDO calculated right after the latest compilation used by Reinstancer to check if default values were changed
---@field public CrcLastCompiledSignature integer
---@field public OriginalClass TSubclassOf<UObject> @If this BP is just a duplicate created for a specific compilation, the reference to original GeneratedClass is needed
local UBlueprint = {}

