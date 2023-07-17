---Custom data wrapper for clothing assets.
---If writing a new clothing asset importer, creating a new derived custom data
---is how to store importer (and possibly simulation) data that importer will
---create. This needs to be set to the \c CustomData member on the asset your
---factory creates.
---Testing whether a UClothingAssetCommon was made from a custom plugin can be
---achieved with:
---\code if(AssetPtr->CustomData->IsA(UMyCustomData::StaticClass())) \endcode
---@class UClothingAssetCustomData : UObject
local UClothingAssetCustomData = {}

