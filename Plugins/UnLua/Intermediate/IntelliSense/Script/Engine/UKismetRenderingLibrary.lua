---@class UKismetRenderingLibrary : UBlueprintFunctionLibrary
local UKismetRenderingLibrary = {}

---Set the inset shadow casting state of the given component and all its child attachments.
---    Also choose if all attachments should be grouped for the inset shadow rendering. If enabled, one depth target will be shared for all attachments.
---@param PrimitiveComponent UPrimitiveComponent
---@param bCastInsetShadow boolean
---@param bLightAttachmentsAsGroup boolean
function UKismetRenderingLibrary.SetCastInsetShadowForAllAttachments(PrimitiveComponent, bCastInsetShadow, bLightAttachmentsAsGroup) end

---Creates a new Static Texture from a Render Target 2D. Render Target Must be power of two and use four channels.
---Only works in the editor
---@param RenderTarget UTextureRenderTarget2D
---@param Name string @[opt] 
---@param CompressionSettings integer @[opt] 
---@param MipSettings integer @[opt] 
---@return UTexture2D
function UKismetRenderingLibrary.RenderTargetCreateStaticTexture2DEditorOnly(RenderTarget, Name, CompressionSettings, MipSettings) end

---Manually releases GPU resources of a render target. This is useful for blueprint creating a lot of render target that would
---normally be released too late by the garbage collector that can be problematic on platforms that have tight GPU memory constrains.
---@param TextureRenderTarget UTextureRenderTarget2D
function UKismetRenderingLibrary.ReleaseRenderTarget2D(TextureRenderTarget) end

---Incredibly inefficient and slow operation! Read a value as sRGB color from a render target using UV [0,1]x[0,1] coordinates.
---LDR render targets are assumed to be in sRGB space. HDR ones are assumed to be in linear space.
---Result is 8-bit per channel [0,255] BGRA in sRGB space.
---@param WorldContextObject UObject
---@param TextureRenderTarget UTextureRenderTarget2D
---@param U number
---@param V number
---@return FColor
function UKismetRenderingLibrary.ReadRenderTargetUV(WorldContextObject, TextureRenderTarget, U, V) end

---Incredibly inefficient and slow operation! Read a value as-is color from a render target using UV [0,1]x[0,1] coordinates.
---@param WorldContextObject UObject
---@param TextureRenderTarget UTextureRenderTarget2D
---@param U number
---@param V number
---@return FLinearColor
function UKismetRenderingLibrary.ReadRenderTargetRawUV(WorldContextObject, TextureRenderTarget, U, V) end

---Incredibly inefficient and slow operation! Read a value as-is from a render target using integer pixel coordinates.
---@param WorldContextObject UObject
---@param TextureRenderTarget UTextureRenderTarget2D
---@param X integer
---@param Y integer
---@return FLinearColor
function UKismetRenderingLibrary.ReadRenderTargetRawPixel(WorldContextObject, TextureRenderTarget, X, Y) end

---Incredibly inefficient and slow operation! Read a value as sRGB color from a render target using integer pixel coordinates.
---LDR render targets are assumed to be in sRGB space. HDR ones are assumed to be in linear space.
---Result is 8-bit per channel [0,255] BGRA in sRGB space.
---@param WorldContextObject UObject
---@param TextureRenderTarget UTextureRenderTarget2D
---@param X integer
---@param Y integer
---@return FColor
function UKismetRenderingLibrary.ReadRenderTargetPixel(WorldContextObject, TextureRenderTarget, X, Y) end

---Create FSkelMeshSkinWeightInfo
---@param Bone0 integer
---@param Weight0 integer
---@param Bone1 integer
---@param Weight1 integer
---@param Bone2 integer
---@param Weight2 integer
---@param Bone3 integer
---@param Weight3 integer
---@return FSkelMeshSkinWeightInfo
function UKismetRenderingLibrary.MakeSkinWeightInfo(Bone0, Weight0, Bone1, Weight1, Bone2, Weight2, Bone3, Weight3) end

---Imports a texture file from disk and creates Texture2D from it.
---@param WorldContextObject UObject
---@param Filename string
---@return UTexture2D
function UKismetRenderingLibrary.ImportFileAsTexture2D(WorldContextObject, Filename) end

---Imports a texture from a buffer and creates Texture2D from it.
---@param WorldContextObject UObject
---@param Buffer TArray_integer_
---@return UTexture2D
function UKismetRenderingLibrary.ImportBufferAsTexture2D(WorldContextObject, Buffer) end

---Exports a Texture2D as a HDR image onto the disk.
---@param WorldContextObject UObject
---@param Texture UTexture2D
---@param FilePath string
---@param FileName string
function UKismetRenderingLibrary.ExportTexture2D(WorldContextObject, Texture, FilePath, FileName) end

---Exports a render target as a HDR or PNG image onto the disk (depending on the format of the render target)
---@param WorldContextObject UObject
---@param TextureRenderTarget UTextureRenderTarget2D
---@param FilePath string
---@param FileName string
function UKismetRenderingLibrary.ExportRenderTarget(WorldContextObject, TextureRenderTarget, FilePath, FileName) end

---Must be paired with a BeginDrawCanvasToRenderTarget to complete rendering to a render target.
---@param WorldContextObject UObject
---@param Context FDrawToRenderTargetContext
function UKismetRenderingLibrary.EndDrawCanvasToRenderTarget(WorldContextObject, Context) end

---Renders a quad with the material applied to the specified render target.
---This sets the render target even if it is already set, which is an expensive operation.
---Use BeginDrawCanvasToRenderTarget / EndDrawCanvasToRenderTarget instead if rendering multiple primitives to the same render target.
---@param WorldContextObject UObject
---@param TextureRenderTarget UTextureRenderTarget2D
---@param Material UMaterialInterface
function UKismetRenderingLibrary.DrawMaterialToRenderTarget(WorldContextObject, TextureRenderTarget, Material) end

---Creates a new volume render target and initializes it to the specified dimensions
---@param WorldContextObject UObject
---@param Width integer @[opt] 
---@param Height integer @[opt] 
---@param Depth integer @[opt] 
---@param Format integer @[opt] 
---@param ClearColor FLinearColor @[opt] 
---@param bAutoGenerateMipMaps boolean @[opt] 
---@return UTextureRenderTargetVolume
function UKismetRenderingLibrary.CreateRenderTargetVolume(WorldContextObject, Width, Height, Depth, Format, ClearColor, bAutoGenerateMipMaps) end

---Creates a new render target array and initializes it to the specified dimensions
---@param WorldContextObject UObject
---@param Width integer @[opt] 
---@param Height integer @[opt] 
---@param Slices integer @[opt] 
---@param Format integer @[opt] 
---@param ClearColor FLinearColor @[opt] 
---@param bAutoGenerateMipMaps boolean @[opt] 
---@return UTextureRenderTarget2DArray
function UKismetRenderingLibrary.CreateRenderTarget2DArray(WorldContextObject, Width, Height, Slices, Format, ClearColor, bAutoGenerateMipMaps) end

---Creates a new render target and initializes it to the specified dimensions
---@param WorldContextObject UObject
---@param Width integer @[opt] 
---@param Height integer @[opt] 
---@param Format integer @[opt] 
---@param ClearColor FLinearColor @[opt] 
---@param bAutoGenerateMipMaps boolean @[opt] 
---@return UTextureRenderTarget2D
function UKismetRenderingLibrary.CreateRenderTarget2D(WorldContextObject, Width, Height, Format, ClearColor, bAutoGenerateMipMaps) end

---Copies the contents of a render target to a UTexture2D
---Only works in the editor
---@param WorldContextObject UObject
---@param RenderTarget UTextureRenderTarget2D
---@param Texture UTexture2D
function UKismetRenderingLibrary.ConvertRenderTargetToTexture2DEditorOnly(WorldContextObject, RenderTarget, Texture) end

---Clears the specified render target with the given ClearColor.
---@param WorldContextObject UObject
---@param TextureRenderTarget UTextureRenderTarget2D
---@param ClearColor FLinearColor @[opt] 
function UKismetRenderingLibrary.ClearRenderTarget2D(WorldContextObject, TextureRenderTarget, ClearColor) end

---Break FSkelMeshSkinWeightInfo
---@param InWeight FSkelMeshSkinWeightInfo
---@param Bone0 integer @[out] 
---@param Weight0 integer @[out] 
---@param Bone1 integer @[out] 
---@param Weight1 integer @[out] 
---@param Bone2 integer @[out] 
---@param Weight2 integer @[out] 
---@param Bone3 integer @[out] 
---@param Weight3 integer @[out] 
function UKismetRenderingLibrary.BreakSkinWeightInfo(InWeight, Bone0, Weight0, Bone1, Weight1, Bone2, Weight2, Bone3, Weight3) end

---Returns a Canvas object that can be used to draw to the specified render target.
---Canvas has functions like DrawMaterial with size parameters that can be used to draw to a specific area of a render target.
---Be sure to call EndDrawCanvasToRenderTarget to complete the rendering!
---@param WorldContextObject UObject
---@param TextureRenderTarget UTextureRenderTarget2D
---@param Canvas UCanvas @[out] 
---@param Size FVector2D @[out] 
---@param Context FDrawToRenderTargetContext @[out] 
function UKismetRenderingLibrary.BeginDrawCanvasToRenderTarget(WorldContextObject, TextureRenderTarget, Canvas, Size, Context) end

