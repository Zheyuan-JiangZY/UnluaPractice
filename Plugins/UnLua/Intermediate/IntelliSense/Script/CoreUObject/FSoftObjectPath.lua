---A struct that contains a string reference to an object, either a top level asset or a subobject.
---@class FSoftObjectPath
---@field public AssetPathName string @Asset path, patch to a top level object in a package
---@field public SubPathString string @Optional FString for subobject within an asset
local FSoftObjectPath = {}
