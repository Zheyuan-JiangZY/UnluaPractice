---@class FARFilter
---@field public PackageNames TArray<string> @The filter component for package names
---@field public PackagePaths TArray<string> @The filter component for package paths
---@field public ObjectPaths TArray<string> @The filter component containing specific object paths
---@field public ClassNames TArray<string> @The filter component for class names. Instances of the specified classes, but not subclasses (by default), will be included. Derived classes will be included only if bRecursiveClasses is true.
---@field public RecursiveClassesExclusionSet TSet<string> @Only if bRecursiveClasses is true, the results will exclude classes (and subclasses) in this list
---@field public bRecursivePaths boolean @If true, PackagePath components will be recursive
---@field public bRecursiveClasses boolean @If true, subclasses of ClassNames will also be included and RecursiveClassesExclusionSet will be excluded.
---@field public bIncludeOnlyOnDiskAssets boolean @If true, only on-disk assets will be returned. Be warned that this is rarely what you want and should only be used for performance reasons
local FARFilter = {}
