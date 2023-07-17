---@class UMagicLeapPrivilegesFunctionLibrary : UBlueprintFunctionLibrary
local UMagicLeapPrivilegesFunctionLibrary = {}

---Request the specified privilege asynchronously.
---This may possibly solicit consent from the end-user. Result will be delivered
---to the specified delegate.
---@param Privilege EMagicLeapPrivilege
---@param ResultDelegate Delegate
---@return boolean
function UMagicLeapPrivilegesFunctionLibrary.RequestPrivilegeAsync(Privilege, ResultDelegate) end

---Request the specified privilege.
---This may possibly solicit consent from the end-user; if so it will block.
---@param Privilege EMagicLeapPrivilege
---@return boolean
function UMagicLeapPrivilegesFunctionLibrary.RequestPrivilege(Privilege) end

---Check whether the application has the specified privilege.
---This does not solicit consent from the end-user and is non-blocking.
---@param Privilege EMagicLeapPrivilege
---@return boolean
function UMagicLeapPrivilegesFunctionLibrary.CheckPrivilege(Privilege) end

