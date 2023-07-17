---A movie scene section for all live link recorded data
---@class UMovieSceneLiveLinkSection : UMovieSceneSection
---@field public SubjectPreset FLiveLinkSubjectPreset
---@field public ChannelMask TArray<boolean> @Channels that we may not send to live link or they are sent but not priority (MattH to do).
---@field public SubSections TArray<UMovieSceneLiveLinkSubSection>
local UMovieSceneLiveLinkSection = {}

