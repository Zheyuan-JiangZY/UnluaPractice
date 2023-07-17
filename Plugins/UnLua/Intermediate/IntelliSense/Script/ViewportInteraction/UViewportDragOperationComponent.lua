---Container component for UViewportDragOperation that can be used by objects in the world that are draggable and implement the ViewportInteractableInterface
---@class UViewportDragOperationComponent : UActorComponent
---@field private DragOperation UViewportDragOperation @The actual dragging implementation
---@field private DragOperationSubclass TSubclassOf<UViewportDragOperation> @The next class that will be used as drag operation
local UViewportDragOperationComponent = {}

