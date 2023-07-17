---A Geometry Cache is a piece/set of geometry that consists of individual Mesh/Transformation samples.
---In contrast with Static Meshes they can have their vertices animated in certain ways. *
---@class UGeometryCache : UObject
---@field public AssetImportData UAssetImportData @Importing data and options used for this Geometry cache object
---@field public ThumbnailInfo UThumbnailInfo @Information for thumbnail rendering
---@field public Materials TArray<UMaterialInterface>
---@field public Tracks TArray<UGeometryCacheTrack> @GeometryCache track defining the samples/geometry data for this GeomCache instance
---@field protected StartFrame integer
---@field protected EndFrame integer
---@field protected Hash integer
local UGeometryCache = {}

