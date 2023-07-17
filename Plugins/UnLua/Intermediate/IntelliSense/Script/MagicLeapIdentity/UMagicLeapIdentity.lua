---Class which provides functions to read and update the user's Magic Leap profile.
---@class UMagicLeapIdentity : UObject
local UMagicLeapIdentity = {}

---Delegate for the result of attribute values for the user's Magic Leap profile.
---@param ResultCode EMagicLeapIdentityError
---@param AttributeValue TArray_FMagicLeapIdentityAttribute_
function UMagicLeapIdentity:RequestIdentityAttributeValueDelegate__DelegateSignature(ResultCode, AttributeValue) end

---Asynchronous call to get the values for the attributes of the user's Magic Leap profile.
---@param RequestedAttributeList TArray_EMagicLeapIdentityKey_
---@param ResultDelegate Delegate
---@return EMagicLeapIdentityError
function UMagicLeapIdentity:RequestAttributeValueAsync(RequestedAttributeList, ResultDelegate) end

---Get the values for the attributes of the user's Magic Leap profile.
---This function makes a blocking call to the cloud. You can alternatively use RequestAttributeValueAsync() to request the attribute values asynchronously.
---@param RequestedAttributeList TArray_EMagicLeapIdentityKey_
---@param RequestedAttributeValues TArray_FMagicLeapIdentityAttribute_ @[out] 
---@return EMagicLeapIdentityError
function UMagicLeapIdentity:RequestAttributeValue(RequestedAttributeList, RequestedAttributeValues) end

---Delegate for the result of modifying the attribute values of a user's Magic Leap profile.
---@param ResultCode EMagicLeapIdentityError
---@param AttributesUpdatedSuccessfully TArray_EMagicLeapIdentityKey_
function UMagicLeapIdentity:ModifyIdentityAttributeValueDelegate__DelegateSignature(ResultCode, AttributesUpdatedSuccessfully) end

---Asynchronous call to get the attributes available for the user's Magic Leap profile. Note that this does not request the values for these attribtues.
---@param ResultDelegate Delegate
function UMagicLeapIdentity:GetAllAvailableAttributesAsync(ResultDelegate) end

---Get the attributes available for the user's Magic Leap profile. Note that this does not request the values for these attribtues.
---This function makes a blocking call to the cloud. You can alternatively use GetAllAvailableAttributesAsync() to request the attributes asynchronously.
---@param AvailableAttributes TArray_EMagicLeapIdentityKey_ @[out] 
---@return EMagicLeapIdentityError
function UMagicLeapIdentity:GetAllAvailableAttributes(AvailableAttributes) end

---Delegate for the result of available attributes for the user's Magic Leap profile.
---@param ResultCode EMagicLeapIdentityError
---@param AvailableAttributes TArray_EMagicLeapIdentityKey_
function UMagicLeapIdentity:AvailableIdentityAttributesDelegate__DelegateSignature(ResultCode, AvailableAttributes) end

