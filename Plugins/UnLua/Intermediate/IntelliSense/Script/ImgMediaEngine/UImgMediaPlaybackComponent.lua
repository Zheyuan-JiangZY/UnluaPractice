---Component to help with ImgMedia playback.
---If desired, add this to an object that displays an ImgMedia sequence.
---Not necessary to do this, but if you do then you can get additional functionality
---such as selective mipmap loading.
---@class UImgMediaPlaybackComponent : UActorComponent
---@field public Width number @Width of the object. If < 0, then get the width automatically.
---@field public LODBias number @This will be added to the calculated mipmap level. E.g. if set to 2, and you would normally be at mipmap level 1, then you will actually be at level 3.
local UImgMediaPlaybackComponent = {}

