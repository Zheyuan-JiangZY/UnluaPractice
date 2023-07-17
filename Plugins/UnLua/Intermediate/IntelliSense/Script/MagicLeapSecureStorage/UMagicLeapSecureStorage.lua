---Function library for the Magic Leap Secure Storage API.
---Currently supports bool, uint8, int32, float, FString, FVector, FRotator and FTransform via Blueprints.
---Provides a template function for any non specialized types to be used via C++.
---@class UMagicLeapSecureStorage : UBlueprintFunctionLibrary
local UMagicLeapSecureStorage = {}

---Stores the vector under the specified key. An existing key would be overwritten.
---@param Key string
---@param DataToStore FVector
---@return boolean
function UMagicLeapSecureStorage.PutSecureVector(Key, DataToStore) end

---Stores the transform under the specified key. An existing key would be overwritten.
---@param Key string
---@param DataToStore FTransform
---@return boolean
function UMagicLeapSecureStorage.PutSecureTransform(Key, DataToStore) end

---Stores the string under the specified key. An existing key would be overwritten.
---@param Key string
---@param DataToStore string
---@return boolean
function UMagicLeapSecureStorage.PutSecureString(Key, DataToStore) end

---Stores the USaveGame object under the specified key. An existing key would be overwritten.
---@param Key string
---@param ObjectToStore USaveGame
---@return boolean
function UMagicLeapSecureStorage.PutSecureSaveGame(Key, ObjectToStore) end

---Stores the rotator under the specified key. An existing key would be overwritten.
---@param Key string
---@param DataToStore FRotator
---@return boolean
function UMagicLeapSecureStorage.PutSecureRotator(Key, DataToStore) end

---Stores the 64 bit integer under the specified key. An existing key would be overwritten.
---@param Key string
---@param DataToStore integer
---@return boolean
function UMagicLeapSecureStorage.PutSecureInt64(Key, DataToStore) end

---Stores the integer (int32) under the specified key. An existing key would be overwritten.
---@param Key string
---@param DataToStore integer
---@return boolean
function UMagicLeapSecureStorage.PutSecureInt(Key, DataToStore) end

---Stores the float under the specified key. An existing key would be overwritten.
---@param Key string
---@param DataToStore number
---@return boolean
function UMagicLeapSecureStorage.PutSecureFloat(Key, DataToStore) end

---Stores the byte (uint8) under the specified key. An existing key would be overwritten.
---@param Key string
---@param DataToStore integer
---@return boolean
function UMagicLeapSecureStorage.PutSecureByte(Key, DataToStore) end

---Stores the boolean under the specified key. An existing key would be overwritten.
---@param Key string
---@param DataToStore boolean
---@return boolean
function UMagicLeapSecureStorage.PutSecureBool(Key, DataToStore) end

---Stores the data under the specified key. An existing key would be overwritten.
---@param Key string
---@param DataToStore TArray_integer_
---@return boolean
function UMagicLeapSecureStorage.PutSecureArray(Key, DataToStore) end

---Retrieves the vector associated with the specified key.
---@param Key string
---@param DataToRetrieve FVector @[out] 
---@return boolean
function UMagicLeapSecureStorage.GetSecureVector(Key, DataToRetrieve) end

---Retrieves the transform associated with the specified key.
---@param Key string
---@param DataToRetrieve FTransform @[out] 
---@return boolean
function UMagicLeapSecureStorage.GetSecureTransform(Key, DataToRetrieve) end

---Retrieves the string associated with the specified key.
---@param Key string
---@param DataToRetrieve string @[out] 
---@return boolean
function UMagicLeapSecureStorage.GetSecureString(Key, DataToRetrieve) end

---Retrieves a USaveGame object associated with the specified key.
---@param Key string
---@param ObjectToRetrieve USaveGame @[out] 
---@return boolean
function UMagicLeapSecureStorage.GetSecureSaveGame(Key, ObjectToRetrieve) end

---Retrieves the rotator associated with the specified key.
---@param Key string
---@param DataToRetrieve FRotator @[out] 
---@return boolean
function UMagicLeapSecureStorage.GetSecureRotator(Key, DataToRetrieve) end

---Retrieves the 64 bit integer associated with the specified key.
---@param Key string
---@param DataToRetrieve integer @[out] 
---@return boolean
function UMagicLeapSecureStorage.GetSecureInt64(Key, DataToRetrieve) end

---Retrieves the integer (int32) associated with the specified key.
---@param Key string
---@param DataToRetrieve integer @[out] 
---@return boolean
function UMagicLeapSecureStorage.GetSecureInt(Key, DataToRetrieve) end

---Retrieves the float associated with the specified key.
---@param Key string
---@param DataToRetrieve number @[out] 
---@return boolean
function UMagicLeapSecureStorage.GetSecureFloat(Key, DataToRetrieve) end

---Retrieves the byte (uint8) associated with the specified key.
---@param Key string
---@param DataToRetrieve integer @[out] 
---@return boolean
function UMagicLeapSecureStorage.GetSecureByte(Key, DataToRetrieve) end

---Retrieves the boolean associated with the specified key.
---@param Key string
---@param DataToRetrieve boolean @[out] 
---@return boolean
function UMagicLeapSecureStorage.GetSecureBool(Key, DataToRetrieve) end

---Retrieves an array associated with the specified key.
---@param Key string
---@param DataToRetrieve TArray_integer_ @[out] 
---@return boolean
function UMagicLeapSecureStorage.GetSecureArray(Key, DataToRetrieve) end

---Deletes the data associated with the specified key.
---@param Key string
---@return boolean
function UMagicLeapSecureStorage.DeleteSecureData(Key) end

