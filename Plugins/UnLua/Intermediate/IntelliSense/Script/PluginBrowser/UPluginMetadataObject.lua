---We use this object to display plugin properties using details view.
---@class UPluginMetadataObject : UObject
---@field public Version integer @Version number for the plugin.  The version number must increase with every version of the plugin, so that the system       can determine whether one version of a plugin is newer than another, or to enforce other requirements.  This version       number is not displayed in front-facing UI.  Use the VersionName for that.
---@field public VersionName string @Name of the version for this plugin.  This is the front-facing part of the version number.  It doesn't need to match       the version number numerically, but should be updated when the version number is increased accordingly.
---@field public FriendlyName string @Friendly name of the plugin
---@field public Description string @Description of the plugin
---@field public Category string @The category that this plugin belongs to
---@field public CreatedBy string @The company or individual who created this plugin.  This is an optional field that may be displayed in the user interface.
---@field public CreatedByURL string @Hyperlink URL string for the company or individual who created this plugin.  This is optional.
---@field public DocsURL string @Documentation URL string.
---@field public MarketplaceURL string @Marketplace URL string.
---@field public SupportURL string @Support URL/email for this plugin. Email addresses must be prefixed with 'mailto:'
---@field public bCanContainContent boolean @Can this plugin contain content?
---@field public bIsBetaVersion boolean @Marks the plugin as beta in the UI
---@field public Plugins TArray<FPluginReferenceMetadata> @Plugins used by this plugin
local UPluginMetadataObject = {}

