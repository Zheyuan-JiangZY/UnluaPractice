---@class UActorFactory : UObject
---@field public DisplayName string @Name used as basis for 'New Actor' menu.
---@field public MenuPriority integer @Indicates how far up the menu item should be. The higher the number, the higher up the list.
---@field public NewActorClassName string @name of actor subclass this actorfactory creates - dynamically loaded.  Overrides NewActorClass.
---@field public NewActorClass TSubclassOf<AActor> @AActor  subclass this ActorFactory creates.
---@field public bShowInEditorQuickMenu boolean @Whether to appear in the editor add actor quick menu
---@field public bUseSurfaceOrientation boolean
---@field public SpawnPositionOffset FVector @Translation applied to the spawn position.
local UActorFactory = {}

