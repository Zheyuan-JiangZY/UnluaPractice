---Fetch the latest frames from the LiveLink subject and create a Timecode from it.
---@class ULiveLinkTimecodeProvider : UTimecodeProvider
---@field private SubjectKey FLiveLinkSubjectKey @The specific subject that we listen to.
---@field private Evaluation ELiveLinkTimecodeProviderEvaluationType @How to evaluate the timecode.
---@field private bOverrideFrameRate boolean
---@field private OverrideFrameRate FFrameRate @Override the frame rate at which this timecode provider will create its timecode value. By default, we use the subject frame rate.
---@field private BufferSize integer @The number of frame to keep in memory. The provider will not be synchronized until the buffer is full at least once.
local ULiveLinkTimecodeProvider = {}

