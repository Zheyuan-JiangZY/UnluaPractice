---Media source for EXR image sequences.
---Image sequence media sources point to a directory that contains a series of
---image files in which each image represents a single frame of the sequence.
---BMP, EXR, PNG and JPG images are currently supported. EXR image sequences
---are optimized for performance. The first frame of an image sequence is used
---to determine the image dimensions (all formats) and frame rate (EXR only).
---The image sequence directory may contain sub-directories, which are called
---'proxies'. Proxies can be used to provide alternative media for playback
---during development and testing of a game. One common scenario is the use
---of low resolution versions of image sequence media on computers that are
---too slow or don't have enough storage to play the original high-res media.
---@class UImgMediaSource : UBaseMediaSource
---@field public IsPathRelativeToProjectRoot boolean @If true, then relative Sequence Paths are relative to the project root directory. If false, then relative to the Content directory.
---@field public FrameRateOverride FFrameRate @Overrides the default frame rate stored in the image files (0/0 = do not override).
---@field public ProxyOverride string @Name of the proxy directory to use.
---@field protected SequencePath FDirectoryPath @The directory that contains the image sequence files.
local UImgMediaSource = {}

---Set the path to the image sequence directory this source represents.
---@param Path string
function UImgMediaSource:SetSequencePath(Path) end

---Manually set when mip level 0 should appear.
---@param Distance number
function UImgMediaSource:SetMipLevelDistance(Distance) end

---This object is no longer using our img sequence.
---@param InActor AActor
function UImgMediaSource:RemoveTargetObject(InActor) end

---This camera is no longer looking at any img seqeunces.
---@param InActor AActor
function UImgMediaSource:RemoveGlobalCamera(InActor) end

---Get the path to the image sequence directory to be played.
---@return string
function UImgMediaSource:GetSequencePath() end

---Get the names of available proxy directories.
---@param OutProxies TArray_string_ @[out] 
function UImgMediaSource:GetProxies(OutProxies) end

---This object is using our img sequence.
---@param InActor AActor
---@param Width number @[opt] 
function UImgMediaSource:AddTargetObject(InActor, Width) end

---This camera could be looking at any img sequence.
---@param InActor AActor
function UImgMediaSource:AddGlobalCamera(InActor) end

