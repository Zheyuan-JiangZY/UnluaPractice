---A property access path. References a string of property access segments.
---These are resolved at load time to create corresponding FPropertyAccess entries
---@class FPropertyAccessPath
---@field private PathSegmentStartIndex integer @Index into the library's path segments. Used to provide a starting point for a path resolve
---@field private PathSegmentCount integer @The count of the path segments.
---@field private bHasEvents boolean @Whether this access has events in its path
local FPropertyAccessPath = {}
