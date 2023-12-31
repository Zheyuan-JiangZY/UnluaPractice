---Polyglot data that may be registered to the text localization manager at runtime.
---@class FPolyglotTextData
---@field public Category ELocalizedTextSourceCategory @The category of this polyglot data.
---@field public NativeCulture string @The native culture of this polyglot data.
---@field public Namespace string @The namespace of the text created from this polyglot data.
---@field public Key string @The key of the text created from this polyglot data.
---@field public NativeString string @The native string for this polyglot data.
---@field public LocalizedStrings TMap<string, string> @Mapping between a culture code and its localized string.
---@field public bIsMinimalPatch boolean @True if this polyglot data is a minimal patch, and that missing translations should be ignored (falling back to any LocRes data) rather than falling back to the native string.
---@field public CachedText string @Transient cached text instance from registering this polyglot data with the text localization manager.
local FPolyglotTextData = {}
