---A simple arrow rendered using lines. Useful for indicating which way an object is facing.
---@class UArrowComponent : UPrimitiveComponent
---@field public ArrowColor FColor @Color to draw arrow
---@field public ArrowSize number @Relative size to scale drawn arrow by
---@field public ArrowLength number @Total length of drawn arrow including head
---@field public ScreenSize number @The size on screen to limit this arrow to (in screen space)
---@field public bIsScreenSizeScaled boolean @Set to limit the screen size of this arrow
---@field public bTreatAsASprite boolean @If true, don't show the arrow when EngineShowFlags.BillboardSprites is disabled.
---@field public SpriteInfo FSpriteCategoryInfo @Sprite category information regarding the arrow component, if being treated as a sprite.
---@field public bLightAttachment boolean @If true, this arrow component is attached to a light actor
---@field public bUseInEditorScaling boolean @Whether to use in-editor arrow scaling (i.e. to be affected by the global arrow scale)
local UArrowComponent = {}

---Updates the arrow's colour, and tells it to refresh
---@param NewColor FLinearColor
function UArrowComponent:SetArrowColor(NewColor) end

