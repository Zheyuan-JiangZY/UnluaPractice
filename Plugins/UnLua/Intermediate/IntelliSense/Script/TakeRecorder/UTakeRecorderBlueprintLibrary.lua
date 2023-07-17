---@class UTakeRecorderBlueprintLibrary : UBlueprintFunctionLibrary
local UTakeRecorderBlueprintLibrary = {}

---Stop recording if there is a recorder currently active
function UTakeRecorderBlueprintLibrary.StopRecording() end

---Start a new recording using the specified parameters. Will fail if a recording is currently in progress
---@param LevelSequence ULevelSequence
---@param Sources UTakeRecorderSources
---@param MetaData UTakeMetaData
---@param Parameters FTakeRecorderParameters
---@return UTakeRecorder
function UTakeRecorderBlueprintLibrary.StartRecording(LevelSequence, Sources, MetaData, Parameters) end

---Called when take recording is stopped.
---@param OnTakeRecorderStopped Delegate
function UTakeRecorderBlueprintLibrary.SetOnTakeRecorderStopped(OnTakeRecorderStopped) end

---Called when take recording starts.
---@param OnTakeRecorderStarted Delegate
function UTakeRecorderBlueprintLibrary.SetOnTakeRecorderStarted(OnTakeRecorderStarted) end

---Called before initialization occurs (ie. when the recording button is pressed and before the countdown starts)
---@param OnTakeRecorderPreInitialize Delegate
function UTakeRecorderBlueprintLibrary.SetOnTakeRecorderPreInitialize(OnTakeRecorderPreInitialize) end

---Called when a Take Panel is constructed or destroyed.
---@param OnTakeRecorderPanelChanged Delegate
function UTakeRecorderBlueprintLibrary.SetOnTakeRecorderPanelChanged(OnTakeRecorderPanelChanged) end

---Called when a marked frame is added.
---@param OnTakeRecorderMarkedFrameAdded Delegate
function UTakeRecorderBlueprintLibrary.SetOnTakeRecorderMarkedFrameAdded(OnTakeRecorderMarkedFrameAdded) end

---Called when take recording finishes.
---@param OnTakeRecorderFinished Delegate
function UTakeRecorderBlueprintLibrary.SetOnTakeRecorderFinished(OnTakeRecorderFinished) end

---Called when take recording is cancelled.
---@param OnTakeRecorderCancelled Delegate
function UTakeRecorderBlueprintLibrary.SetOnTakeRecorderCancelled(OnTakeRecorderCancelled) end

---Get the currently open take recorder panel, if one is open, opening a new one if not
---@return UTakeRecorderPanel
function UTakeRecorderBlueprintLibrary.OpenTakeRecorderPanel() end

function UTakeRecorderBlueprintLibrary:OnTakeRecorderStopped__DelegateSignature() end

function UTakeRecorderBlueprintLibrary:OnTakeRecorderStarted__DelegateSignature() end

function UTakeRecorderBlueprintLibrary:OnTakeRecorderPreInitialize__DelegateSignature() end

function UTakeRecorderBlueprintLibrary:OnTakeRecorderPanelChanged__DelegateSignature() end

---@param MarkedFrame FMovieSceneMarkedFrame
function UTakeRecorderBlueprintLibrary:OnTakeRecorderMarkedFrameAdded__DelegateSignature(MarkedFrame) end

---@param SequenceAsset ULevelSequence
function UTakeRecorderBlueprintLibrary:OnTakeRecorderFinished__DelegateSignature(SequenceAsset) end

function UTakeRecorderBlueprintLibrary:OnTakeRecorderCancelled__DelegateSignature() end

---Is the Take Recorder enabled in the build
---@return boolean
function UTakeRecorderBlueprintLibrary.IsTakeRecorderEnabled() end

---Check whether a recording is currently active
---@return boolean
function UTakeRecorderBlueprintLibrary.IsRecording() end

---Get the currently open take recorder panel, if one is open
---@return UTakeRecorderPanel
function UTakeRecorderBlueprintLibrary.GetTakeRecorderPanel() end

---Get the default recorder parameters according to the project and user settings
---@return FTakeRecorderParameters
function UTakeRecorderBlueprintLibrary.GetDefaultParameters() end

---Retrieve the currently active recorder, or None if there none are active
---@return UTakeRecorder
function UTakeRecorderBlueprintLibrary.GetActiveRecorder() end

