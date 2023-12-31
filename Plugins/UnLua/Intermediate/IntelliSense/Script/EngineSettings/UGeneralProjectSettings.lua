---@class UGeneralProjectSettings : UObject
---@field public CompanyName string @The name of the company (author, provider) that created the project.
---@field public CompanyDistinguishedName string @The Distinguished Name of the company (author, provider) that created the project, which is used by publishing tools on some platforms.
---@field public CopyrightNotice string @The project's copyright and/or trademark notices.
---@field public Description string @The project's description text.
---@field public Homepage string @The project's homepage URL.
---@field public LicensingTerms string @The project's licensing terms.
---@field public PrivacyPolicy string @The project's privacy policy.
---@field public ProjectID FGuid @The project's unique identifier.
---@field public ProjectName string @The project's non-localized name.
---@field public ProjectVersion string @The project's version number.
---@field public SupportContact string @The project's support contact information.
---@field public ProjectDisplayedTitle string @The project's title as displayed on the window title bar (can include the tokens {GameName}, {PlatformArchitecture}, {BuildConfiguration} or {RHIName}, which will be replaced with the specified text)
---@field public ProjectDebugTitleInfo string @Additional data to be displayed on the window title bar in non-shipping configurations (can include the tokens {GameName}, {PlatformArchitecture}, {BuildConfiguration} or {RHIName}, which will be replaced with the specified text)
---@field public bShouldWindowPreserveAspectRatio boolean @Should the game's window preserve its aspect ratio when resized by user.
---@field public bUseBorderlessWindow boolean @Should the game use a borderless Slate window instead of a window with system title bar and border
---@field public bStartInVR boolean @Should the game attempt to start in VR, regardless of whether -vr was set on the commandline
---@field public bAllowWindowResize boolean @Should the user be allowed to resize the window used by the game, when not using full screen
---@field public bAllowClose boolean @Should a close button be shown for the game's window, when not using full screen
---@field public bAllowMaximize boolean @Should a maximize button be shown for the game's window, when not using full screen
---@field public bAllowMinimize boolean @Should a minimize button be shown for the game's window, when not using full screen
local UGeneralProjectSettings = {}

