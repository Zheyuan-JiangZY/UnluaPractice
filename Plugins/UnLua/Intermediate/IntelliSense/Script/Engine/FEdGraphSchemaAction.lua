---This structure represents a context dependent action, with sufficient information for the schema to perform it.
---@class FEdGraphSchemaAction
---@field private MenuDescription string @The menu text that should be displayed for this node in the creation menu.
---@field private TooltipDescription string @The tooltip text that should be displayed for this node in the creation menu.
---@field private Category string @This is the UI centric category the action fits in (e.g., Functions, Variables). Use this instead of the NodeType.NodeCategory because multiple NodeCategories might visually belong together.
---@field private Keywords string @This is just an arbitrary dump of extra text that search will match on, in addition to the description and tooltip, e.g., Add might have the keyword Math.
---@field public Grouping integer @This is a priority number for overriding alphabetical order in the action list (higher value  == higher in the list).
---@field public SectionID integer @Section ID of the action list in which this action belongs.
---@field public MenuDescriptionArray TArray<string>
---@field public FullSearchTitlesArray TArray<string>
---@field public FullSearchKeywordsArray TArray<string>
---@field public FullSearchCategoryArray TArray<string>
---@field public LocalizedMenuDescriptionArray TArray<string>
---@field public LocalizedFullSearchTitlesArray TArray<string>
---@field public LocalizedFullSearchKeywordsArray TArray<string>
---@field public LocalizedFullSearchCategoryArray TArray<string>
---@field public SearchText string
local FEdGraphSchemaAction = {}
