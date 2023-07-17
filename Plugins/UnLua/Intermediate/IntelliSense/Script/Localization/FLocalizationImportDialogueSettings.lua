---@class FLocalizationImportDialogueSettings
---@field public RawAudioPath FDirectoryPath @Path to the folder to import the audio from. This folder is expected to contain culture sub-folders, which in turn contain the raw WAV files to import.
---@field public ImportedDialogueFolder string @Folder in which to create the generated sound waves. This is relative to the root of the L10N culture folder (or the root content folder if importing native dialogue as source dialogue).
---@field public bImportNativeAsSource boolean @Should the dialogue for the native culture be imported as if it were source audio? If false, the native culture dialogue will be imported as localized data for the native culture.
local FLocalizationImportDialogueSettings = {}
