---@class UPersonaOptions : UObject
---@field public bAutoAlignFloorToMesh boolean @Whether or not the floor should be aligned to the Skeletal Mesh's bounds by default for the Animation Editor(s)
---@field public bShowGrid boolean @Whether or not the grid should be visible by default for the Animation Editor(s)
---@field public bHighlightOrigin boolean @Whether or not the XYZ axis at the origin should be highlighted on the grid by default
---@field public bMuteAudio boolean @Whether or not audio should be muted by default for the Animation Editor(s)
---@field public bUseAudioAttenuation boolean
---@field public ShowMeshStats integer @Currently Stats can have None, Basic and Detailed. Please refer to EDisplayInfoMode.
---@field public DefaultLocalAxesSelection integer @Index used to determine which ViewMode should be used by default for the Animation Editor(s)
---@field public DefaultBoneDrawSelection integer @Index used to determine which Bone Draw Mode should be used by default for the Animation Editor(s)
---@field public SectionTimingNodeColor FLinearColor
---@field public NotifyTimingNodeColor FLinearColor
---@field public BranchingPointTimingNodeColor FLinearColor
---@field public bUseInlineSocketEditor boolean @Whether to use a socket editor that is created in-line inside the skeleton tree, or whether to use the separate details panel
---@field public bFlattenSkeletonHierarchyWhenFiltering boolean @Whether to keep the hierarchy or flatten it when searching for bones, sockets etc.
---@field public bHideParentsWhenFiltering boolean @Whether to hide parent items when filtering or to display them grayed out
---@field public bAllowPreviewMeshCollectionsToSelectFromDifferentSkeletons boolean
---@field public bAllowPreviewMeshCollectionsToUseCustomAnimBP boolean
---@field public bAllowMeshSectionSelection boolean @Whether or not Skeletal Mesh Section selection should be enabled by default for the Animation Editor(s)
---@field public NumFolderFiltersInAssetBrowser integer @The number of folder filters to allow at any one time in the animation tool's asset browser
---@field public AssetEditorOptions TArray<FAssetEditorOptions> @Options that should be unique per asset editor (like skeletal mesh or anim sequence editors)
---@field public CurveEditorSnapInterval number @Snap value used to determine scrub resolution of the curve timeline
---@field public TimelineScrubSnapValue integer @Snap value used to determine scrub resolution of the anim timeline
---@field public TimelineDisplayFormat EFrameNumberDisplayFormats @Display format for the anim timeline
---@field public bTimelineDisplayPercentage boolean @Whether to display percentage in the anim timeline
---@field public bTimelineDisplayFormatSecondary boolean @Whether to display secondary format (times/frames) in the anim timeline
---@field public bTimelineDisplayCurveKeys boolean @Whether to display keys in the timeline's curve tracks
---@field public TimelineEnabledSnaps TArray<string> @Whether to snap to various things
local UPersonaOptions = {}

