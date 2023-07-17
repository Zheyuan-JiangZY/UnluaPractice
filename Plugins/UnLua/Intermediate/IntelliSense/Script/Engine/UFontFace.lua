---A font face asset contains the raw payload data for a source TTF/OTF file as used by FreeType.
---During cook this asset type generates a ".ufont" file containing the raw payload data (unless loaded "Inline").
---@class UFontFace : UObject
---@field public SourceFilename string @The filename of the font face we were created from. This may not always exist on disk, as we may have previously loaded and cached the font data inside this asset.
---@field public Hinting EFontHinting @The hinting algorithm to use with the font face.
---@field public LoadingPolicy EFontLoadingPolicy @Enum controlling how this font face should be loaded at runtime. See the enum for more explanations of the options.
---@field public LayoutMethod EFontLayoutMethod @Which method should we use when laying out the font? Try changing this if you notice clipping or height issues with your font.
---@field public SubFaces TArray<string> @Transient cache of the sub-faces available within this face
local UFontFace = {}

