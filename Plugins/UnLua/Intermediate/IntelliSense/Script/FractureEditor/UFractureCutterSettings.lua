---Settings specifically related to the one-time destructive fracturing of a mesh *
---@class UFractureCutterSettings : UFractureToolSettings
---@field public RandomSeed integer @Random number generator seed for repeatability
---@field public ChanceToFracture number @Chance to shatter each mesh.  Useful when shattering multiple selected meshes.
---@field public bGroupFracture boolean @Generate a fracture pattern across all selected meshes.
---@field public bDrawSites boolean @Generate a fracture pattern across all selected meshes.
---@field public bDrawDiagram boolean @Generate a fracture pattern across all selected meshes.
---@field public Grout number @Amount of space to leave between cut pieces
---@field public Amplitude number @Size of the noise displacement in centimeters
---@field public Frequency number @Period of the Perlin noise.  Smaller values will create noise faces that are smoother
---@field public OctaveNumber integer @Number of fractal layers of Perlin noise to apply.  Smaller values (1 or 2) will create noise that looks like gentle rolling hills, while larger values (> 4) will tend to look more like craggy mountains
---@field public SurfaceResolution number @Spacing between vertices on cut surfaces, where noise is added.  Larger spacing between vertices will create more efficient meshes with fewer triangles, but less resolution to see the shape of the added noise
local UFractureCutterSettings = {}

