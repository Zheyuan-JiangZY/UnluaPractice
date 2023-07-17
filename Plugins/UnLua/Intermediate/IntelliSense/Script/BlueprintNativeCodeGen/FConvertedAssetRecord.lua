---FCodeGenAssetRecord
---@class FConvertedAssetRecord
---@field public AssetType TSubclassOf<UObject>
---@field public TargetObjPath string @cannot use a FSoftObjectPath, as the json serializer has problems with some asset paths (for example, I had a folder named 'Folder()')
---@field public GeneratedHeaderPath string
---@field public GeneratedCppPath string
local FConvertedAssetRecord = {}
