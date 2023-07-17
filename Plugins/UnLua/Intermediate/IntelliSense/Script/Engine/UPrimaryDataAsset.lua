---A DataAsset that implements GetPrimaryAssetId and has asset bundle support, which makes it something that can be manually loaded/unloaded from the AssetManager
---Making blueprint subclasses of this is useful because you can make blueprint-only primary asset types
---Blueprint subclasses will end up with a PrimaryAssetType equal to the name of the first native class found going up the hierarchy, or the top level blueprint class that directly subclasses this
---IE, if you have PrimaryDataAsset -> ParentNativeClass -> ChildNativeClass -> BlueprintAsset the type will be ChildNativeClass
---Whereas if you have PrimaryDataAsset -> ParentBlueprintClass -> ChildBlueprintClass the type will be ParentBlueprintClass
---To override this behavior, override GetPrimaryAssetId in your native class
---@class UPrimaryDataAsset : UDataAsset
---@field protected AssetBundleData FAssetBundleData @Asset Bundle data computed at save time. In cooked builds this is accessible from AssetRegistry
local UPrimaryDataAsset = {}

