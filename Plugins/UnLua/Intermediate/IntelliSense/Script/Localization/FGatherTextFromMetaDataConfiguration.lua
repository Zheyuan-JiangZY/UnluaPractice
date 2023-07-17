---@class FGatherTextFromMetaDataConfiguration
---@field public IsEnabled boolean @If enabled, metadata will be gathered according to this configuration.
---@field public IncludePathWildcards TArray<FGatherTextIncludePath> @Metadata from source files whose paths match these wildcard patterns, specified relative to the project's root, may be processed for gathering.
---@field public ExcludePathWildcards TArray<FGatherTextExcludePath> @Metadata from source files whose paths match these wildcard patterns will be excluded from gathering.
---@field public KeySpecifications TArray<FMetaDataKeyGatherSpecification> @Specifications for how to gather text from specific metadata keys.
---@field public ShouldGatherFromEditorOnlyData boolean @If enabled, data that is specified as editor-only may be processed for gathering.
local FGatherTextFromMetaDataConfiguration = {}
