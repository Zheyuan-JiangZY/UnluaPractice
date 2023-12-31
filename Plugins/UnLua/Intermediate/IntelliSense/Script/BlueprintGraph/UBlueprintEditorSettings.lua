---@class UBlueprintEditorSettings : UObject
---@field public bDrawMidpointArrowsInBlueprints boolean @Should arrows indicating data/execution flow be drawn halfway along wires?
---@field public bShowGraphInstructionText boolean @Determines if lightweight tutorial text shows up at the top of empty blueprint graphs
---@field public bHideUnrelatedNodes boolean @If true, fade nodes which are not connected to the selected nodes
---@field public bShowShortTooltips boolean @If true, use short tooltips whenever possible
---@field public bSplitContextTargetSettings boolean @If enabled, we'll save off your chosen target setting based off of the context (allowing you to have different preferences based off what you're operating on).
---@field public bExposeAllMemberComponentFunctions boolean @If enabled, then ALL component functions are exposed to the context menu (when the contextual target is a component owner). Ignores "ExposeFunctionCategories" metadata for components.
---@field public bShowContextualFavorites boolean @If enabled, then a separate section with your Blueprint favorites will be pined to the top of the context menu.
---@field public bExposeDeprecatedFunctions boolean @If enabled, deprecated functions will be visible in the context menu and will be available for override implementation. By default, functions marked as deprecated are not exposed in either case.
---@field public bCompactCallOnMemberNodes boolean @If enabled, then call-on-member actions will be spawned as a single node (instead of a GetMember + FunctionCall node).
---@field public bFlattenFavoritesMenus boolean @If enabled, then your Blueprint favorites will be uncategorized, leaving you with less nested categories to sort through.
---@field public bFavorPureCastNodes boolean @If enabled, then placed cast nodes will default to their "pure" form (meaning: without execution pins).
---@field public bAutoCastObjectConnections boolean @If enabled, then you'll be able to directly connect arbitrary object pins together (a pure cast node will be injected automatically).
---@field public bShowViewportOnSimulate boolean @If true will show the viewport tab when simulate is clicked.
---@field public bShowInheritedVariables boolean @If set we'll show the inherited variables in the My Blueprint view.
---@field public bAlwaysShowInterfacesInOverrides boolean @If set interface functions will always show in the overrides menu, even if they are already shown in the interfaces menu
---@field public bShowParentClassInOverrides boolean @If set then the parent class will be listed next to the override function name in the overrides function menu
---@field public bShowEmptySections boolean @If set we'll show empty sections in the My Blueprint view.
---@field public bShowAccessSpecifier boolean @If set we'll show the access specifier of functions in the My Blueprint view
---@field public bSpawnDefaultBlueprintNodes boolean @If set will spawn default "ghost" event nodes in new Blueprints, modifiable in the [DefaultEventNodes] section of EditorPerProjectUserSettings
---@field public bHideConstructionScriptComponentsInDetailsView boolean @If set will exclude components added in a Blueprint class Construction Script from the component details view
---@field public bHostFindInBlueprintsInGlobalTab boolean @If set, the global Find in Blueprints command (CTRL-SHIFT-F) will be hosted in a standalone tab. This tab can remain open after the Blueprint Editor context is closed.
---@field public bNavigateToNativeFunctionsFromCallNodes boolean @If set, double clicking on a call function node will attempt to navigate an open C++ editor to the native source definition
---@field public Bookmarks TMap<FGuid, FEditedDocumentInfo> @Blueprint bookmark database
---@field public BookmarkNodes TArray<FBPEditorBookmarkNode> @Blueprint bookmark nodes (for display)
---@field public bIncludeCommentNodesInBookmarksTab boolean @If enabled, comment nodes will be included in the tree view display in the Bookmarks tab.
---@field public bShowBookmarksForCurrentDocumentOnlyInTab boolean @If enabled, only the bookmarks for the current document will be shown in the Bookmarks tab.
---@field public GraphEditorQuickJumps TMap<integer, FEditedDocumentInfo> @Blueprint graph editor "Quick Jump" command bindings
---@field public SaveOnCompile integer @Determines when to save Blueprints post-compile
---@field public bJumpToNodeErrors boolean @When enabled, if a blueprint has compiler errors, then the graph will jump and focus on the first node generating an error
---@field public bAllowExplicitImpureNodeDisabling boolean @If enabled, nodes can be explicitly disabled via context menu when right-clicking on impure nodes in the Blueprint editor. Disabled nodes will not be compiled, but also will not break existing connections.
---@field public bShowActionMenuItemSignatures boolean @If enabled, tooltips on action menu items will show the associated action's signature id (can be used to setup custom favorites menus).
---@field public bBlueprintNodeUniqueNames boolean @If enabled, blueprint nodes in the event graph will display with unique names rather than their display name.
---@field public NamespacesToAlwaysInclude TArray<string> @The list of namespaces to always expose in any Blueprint (local per-user)
---@field public bShowDetailedCompileResults boolean @If enabled, additional details will be displayed in the Compiler Results tab after compiling a blueprint.
---@field public CompileEventDisplayThresholdMs integer @Minimum event time threshold used as a filter when additional details are enabled for display in the Compiler Results tab. A value of zero means that all events will be included in the final summary.
---@field public NodeTemplateCacheCapMB number @The node template cache is used to speed up blueprint menuing. This determines the peak data size for that cache.
local UBlueprintEditorSettings = {}

