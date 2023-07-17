---Bare-bones base class to make creating custom UListView widgets easier.
---Child classes should also inherit from ITypedUMGListView<T> to get a basic public ListView API for free.
---Child classes will own the actual SListView<T> widgets, but this provides some boilerplate functionality for generating entries.
---To generate a row for the child list, use GenerateTypedRow with the appropriate SObjectTableRow<T> type for your list
---Additionally, the entry widget class can be filtered for a particular class and interface with the EntryClass and EntryInterface metadata arguments
---This can be specified either on the class directly (see below) or on any BindWidget FProperty
---Example:
---class UMyUserWidget : public UUserWidget
---{
---            UPROPERTY(BindWidget, meta = (EntryClass = MyListEntryWidget))
---            UListView* ListView_InventoryItems;
---}
---@class UListViewBase : UWidget
---@field protected EntryWidgetClass TSubclassOf<UUserWidget> @The type of widget to create for each entry displayed in the list.
---@field protected WheelScrollMultiplier number @The multiplier to apply when wheel scrolling
---@field protected bEnableScrollAnimation boolean @True to enable lerped animation when scrolling through the list
---@field protected bEnableFixedLineOffset boolean
---@field protected FixedLineScrollOffset number @Optional fixed offset (in lines) to always apply to the top/left (depending on orientation) of the list. If provided, all non-inertial means of scrolling will settle with exactly this offset of the topmost entry. Ex: A value of 0.25 would cause the topmost full entry to be offset down by a quarter length of the preceeding entry.
---@field private BP_OnEntryGenerated MulticastDelegate @Called when a row widget is generated for a list item
---@field private BP_OnEntryReleased MulticastDelegate @Called when a row widget is released by the list (i.e. when it no longer represents a list item)
---@field private NumDesignerPreviewEntries integer @The number of dummy item entry widgets to preview in the widget designer
---@field private EntryWidgetPool FUserWidgetPool
local UListViewBase = {}

---@param NewWheelScrollMultiplier number
function UListViewBase:SetWheelScrollMultiplier(NewWheelScrollMultiplier) end

---Set the scroll offset of this view (in items)
---@param InScrollOffset number
function UListViewBase:SetScrollOffset(InScrollOffset) end

---@param InVisibility ESlateVisibility
function UListViewBase:SetScrollbarVisibility(InVisibility) end

---Scroll the entire list up to the first item
function UListViewBase:ScrollToTop() end

---Scroll the entire list down to the bottom-most item
function UListViewBase:ScrollToBottom() end

---Sets the list to refresh on the next tick.
---Note that refreshing, from a list perspective, is limited to accounting for discrepancies between items and entries.
---In other words, it will only release entries that no longer have items and generate entries for new items (or newly visible items).
---It does NOT account for changes within existing items - that is up to the item to announce and an entry to listen to as needed.
---This can be onerous to set up for simple cases, so it's also reasonable (though not ideal) to call RegenerateAllEntries when changes within N list items need to be reflected.
function UListViewBase:RequestRefresh() end

---Full regeneration of all entries in the list. Note that the entry UWidget instances will not be destroyed, but they will be released and re-generated.
---In other words, entry widgets will not receive Destruct/Construct events. They will receive OnEntryReleased and IUserObjectListEntry implementations will receive OnListItemObjectSet.
function UListViewBase:RegenerateAllEntries() end

---Gets all of the list entry widgets currently being displayed by the list
---@return TArray_UUserWidget_
function UListViewBase:GetDisplayedEntryWidgets() end

