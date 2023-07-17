---Base class to manage recording live link data structure properties
---If user specifics data need to be managed in a certain way, create your own sub section
---@class UMovieSceneLiveLinkSubSection : UObject
---@field public SubSectionData FLiveLinkSubSectionData @Data associated to properties managed by this sub section
---@field public SubjectRole TSubclassOf<ULiveLinkRole>
local UMovieSceneLiveLinkSubSection = {}

