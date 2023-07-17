---@class UVisualLoggerKismetLibrary : UBlueprintFunctionLibrary
local UVisualLoggerKismetLibrary = {}

---Makes SourceOwner log to DestinationOwner's vislog
---@param SourceOwner UObject
---@param DestinationOwner UObject
function UVisualLoggerKismetLibrary.RedirectVislog(SourceOwner, DestinationOwner) end

---Logs simple text string with Visual Logger - recording for Visual Logs has to be enabled to record this data
---@param WorldContextObject UObject
---@param Text string
---@param LogCategory string @[opt] 
---@param bAddToMessageLog boolean @[opt] 
function UVisualLoggerKismetLibrary.LogText(WorldContextObject, Text, LogCategory, bAddToMessageLog) end

---@param WorldContextObject UObject
---@param SegmentStart FVector
---@param SegmentEnd FVector
---@param Text string
---@param ObjectColor FLinearColor @[opt] 
---@param Thickness number @[opt] 
---@param CategoryName string @[opt] 
---@param bAddToMessageLog boolean @[opt] 
function UVisualLoggerKismetLibrary.LogSegment(WorldContextObject, SegmentStart, SegmentEnd, Text, ObjectColor, Thickness, CategoryName, bAddToMessageLog) end

---Logs location as sphere with given radius - recording for Visual Logs has to be enabled to record this data
---@param WorldContextObject UObject
---@param Location FVector
---@param Text string
---@param ObjectColor FLinearColor @[opt] 
---@param Radius number @[opt] 
---@param LogCategory string @[opt] 
---@param bAddToMessageLog boolean @[opt] 
function UVisualLoggerKismetLibrary.LogLocation(WorldContextObject, Location, Text, ObjectColor, Radius, LogCategory, bAddToMessageLog) end

---Logs box shape - recording for Visual Logs has to be enabled to record this data
---@param WorldContextObject UObject
---@param BoxShape FBox
---@param Text string
---@param ObjectColor FLinearColor @[opt] 
---@param LogCategory string @[opt] 
---@param bAddToMessageLog boolean @[opt] 
function UVisualLoggerKismetLibrary.LogBox(WorldContextObject, BoxShape, Text, ObjectColor, LogCategory, bAddToMessageLog) end

---@param bEnabled boolean
function UVisualLoggerKismetLibrary.EnableRecording(bEnabled) end

