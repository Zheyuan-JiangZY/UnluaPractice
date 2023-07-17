---@class UBlueprintEditorProjectSettings : UDeveloperSettings
---@field public bForceAllDependenciesToRecompile boolean @Flag to disable faster compiles for individual blueprints if they have no function signature changes. This flag is deprecated! In 4.21 there will be no way to force all dependencies to compile when no changes are detected. Report any issues immediately.
---@field public bValidateUnloadedSoftActorReferences boolean @If enabled, the editor will load packages to look for soft references to actors when deleting/renaming them. This can be slow in large projects so disable this to improve performance but increase the chance of breaking blueprints/sequences that use soft actor references
---@field public bEnableChildActorExpansionInTreeView boolean @Enable the option to expand child actor components within component tree views (experimental).
---@field public DisabledCompilerMessagesExceptEditor TArray<string> @List of compiler messages that have been suppressed outside of full, interactive editor sessions for the current project - useful for silencing warnings that were added to the engine after project inception and are going to be addressed as they are found by content authors
---@field public DisabledCompilerMessages TArray<string> @List of compiler messages that have been suppressed completely - message suppression is only advisable when using blueprints that you cannot update and are raising innocuous warnings. If useless messages are being raised prefer to contact support rather than disabling messages
---@field public NamespacesToAlwaysInclude TArray<string> @The list of namespaces to always expose in any Blueprint (for all users of the game/project)
---@field public DefaultChildActorTreeViewMode EChildActorComponentTreeViewVisualizationMode @Default view mode to use for child actor components in a Blueprint actor's component tree hierarchy (experimental).
local UBlueprintEditorProjectSettings = {}

