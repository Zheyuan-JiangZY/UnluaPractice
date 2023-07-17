---All the types of delegate callbacks that a CloudStorage subclass may receive from C++
---@class ECloudStorageDelegate
---@field public CSD_KeyValueReadComplete integer
---@field public CSD_KeyValueWriteComplete integer
---@field public CSD_ValueChanged integer
---@field public CSD_DocumentQueryComplete integer
---@field public CSD_DocumentReadComplete integer
---@field public CSD_DocumentWriteComplete integer
---@field public CSD_DocumentConflictDetected integer
---@field public CSD_MAX integer
local ECloudStorageDelegate = {}
