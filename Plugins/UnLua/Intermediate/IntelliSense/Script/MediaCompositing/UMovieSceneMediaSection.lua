---Implements a movie scene section for media playback.
---@class UMovieSceneMediaSection : UMovieSceneSection
---@field public MediaSource UMediaSource @The source to play with this video track.
---@field public bLooping boolean @Should the media player be set to loop? This can be helpful for media formats that can use this information (such as exr sequences) to pre-cache the starting data when nearing the end of playback. Does not cause the media to continue playing after the end of the section is reached.
---@field public StartFrameOffset FFrameNumber @Offset into the source media.
---@field public MediaTexture UMediaTexture @The media texture that receives the track's video output.
---@field public MediaSoundComponent UMediaSoundComponent @The media sound component that receives the track's audio output.
---@field public bUseExternalMediaPlayer boolean @If true, this track will control a previously created media player instead of automatically creating one.
---@field public ExternalMediaPlayer UMediaPlayer @The external media player this track should control.
---@field public ThumbnailReferenceOffset number @The reference frame offset for single thumbnail rendering
local UMovieSceneMediaSection = {}

