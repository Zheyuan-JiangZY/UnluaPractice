---@class UCurveEditorCopyableCurveKeys : UObject
---@field public KeyPositions TArray<FKeyPosition>
---@field public KeyAttributes TArray<FKeyAttributes>
---@field public ShortDisplayName string @This curve's short display name. Used in situations where other mechanisms provide enough context about what the curve is (such as "X")
---@field public LongDisplayName string @This curve's long display name. Used in situations where the UI doesn't provide enough context about what the curve is otherwise (such as "Floor.Transform.X")
---@field public IntentionName string @This curve's intention (such as Transform.X or Scale.X). Used internally to match up curves when saving/restoring curves between different objects.
local UCurveEditorCopyableCurveKeys = {}

