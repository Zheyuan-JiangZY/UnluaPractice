---UGeometryCollectionDebugDrawComponent
---  Component adding debug drawing functionality to a GeometryCollectionActor.
---  This component is automatically added to every GeometryCollectionActor.
---@class UGeometryCollectionDebugDrawComponent : UActorComponent
---@field public GeometryCollectionDebugDrawActor AGeometryCollectionDebugDrawActor @Singleton actor, containing the debug draw properties. Automatically populated at play time unless explicitly set.
---@field public GeometryCollectionRenderLevelSetActor AGeometryCollectionRenderLevelSetActor @Level Set singleton actor, containing the Render properties. Automatically populated at play time unless explicitly set.
local UGeometryCollectionDebugDrawComponent = {}

