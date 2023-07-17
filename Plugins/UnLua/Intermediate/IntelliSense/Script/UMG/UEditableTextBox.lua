---Allows the user to type in custom text.  Only permits a single line of text to be entered.
---* No Children
---* Text Entry
---@class UEditableTextBox : UWidget
---@field public Text string @The text content for this editable text box widget
---@field public TextDelegate Delegate @A bindable delegate to allow logic to drive the text of the widget
---@field public WidgetStyle FEditableTextBoxStyle @The style
---@field public HintText string @Hint text that appears when there is no text in the text box
---@field public HintTextDelegate Delegate @A bindable delegate to allow logic to drive the hint text of the widget
---@field public IsReadOnly boolean @Sets whether this text box can actually be modified interactively by the user
---@field public IsPassword boolean @Sets whether this text box is for storing a password
---@field public MinimumDesiredWidth number @Minimum width that a text block should be
---@field public IsCaretMovedWhenGainFocus boolean @Workaround as we lose focus when the auto completion closes.
---@field public SelectAllTextWhenFocused boolean @Whether to select all text when the user clicks to give focus on the widget
---@field public RevertTextOnEscape boolean @Whether to allow the user to back out of changes when they press the escape key
---@field public ClearKeyboardFocusOnCommit boolean @Whether to clear keyboard focus when pressing enter to commit changes
---@field public SelectAllTextOnCommit boolean @Whether to select all text when pressing enter to commit changes
---@field public AllowContextMenu boolean @Whether the context menu can be opened
---@field public KeyboardType integer @If we're on a platform that requires a virtual keyboard, what kind of keyboard should this widget use?
---@field public VirtualKeyboardOptions FVirtualKeyboardOptions @Additional options to use for the virtual keyboard summoned by this widget
---@field public VirtualKeyboardTrigger EVirtualKeyboardTrigger @The type of event that will trigger the display of the virtual keyboard
---@field public VirtualKeyboardDismissAction EVirtualKeyboardDismissAction @What action should be taken when the virtual keyboard is dismissed?
---@field public Justification integer @How the text should be aligned with the margin.
---@field public ShapedTextOptions FShapedTextOptions @Controls how the text within this widget should be shaped.
---@field public OnTextChanged MulticastDelegate @Called whenever the text is changed programmatically or interactively by the user
---@field public OnTextCommitted MulticastDelegate @Called whenever the text is committed.  This happens when the user presses enter or the text box loses focus.
local UEditableTextBox = {}

---@param InText string
function UEditableTextBox:SetText(InText) end

---@param InJustification integer
function UEditableTextBox:SetJustification(InJustification) end

---@param bReadOnly boolean
function UEditableTextBox:SetIsReadOnly(bReadOnly) end

---@param bIsPassword boolean
function UEditableTextBox:SetIsPassword(bIsPassword) end

---@param InText string
function UEditableTextBox:SetHintText(InText) end

---@param InError string
function UEditableTextBox:SetError(InError) end

---@param Text string
---@param CommitMethod integer
function UEditableTextBox:OnEditableTextBoxCommittedEvent__DelegateSignature(Text, CommitMethod) end

---@param Text string
function UEditableTextBox:OnEditableTextBoxChangedEvent__DelegateSignature(Text) end

---@return boolean
function UEditableTextBox:HasError() end

---@return string
function UEditableTextBox:GetText() end

function UEditableTextBox:ClearError() end

