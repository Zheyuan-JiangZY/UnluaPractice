---A representation of a font in Slate.
---@class FSlateFontInfo
---@field public FontObject UObject @The font object (valid when used from UMG or a Slate widget style asset)
---@field public FontMaterial UObject @The material to use when rendering this font
---@field public OutlineSettings FFontOutlineSettings @Settings for applying an outline to a font
---@field public TypefaceFontName string @The name of the font to use from the default typeface (None will use the first entry)
---@field public Size integer @The font size is a measure in point values.  The conversion of points to Slate Units is done at 96 dpi.  So if you're using a tool like Photoshop to prototype layouts and UI mock ups, be sure to change the default dpi measurements from 72 dpi to 96 dpi.
---@field public LetterSpacing integer @The uniform spacing (or tracking) between all characters in the text.
local FSlateFontInfo = {}
