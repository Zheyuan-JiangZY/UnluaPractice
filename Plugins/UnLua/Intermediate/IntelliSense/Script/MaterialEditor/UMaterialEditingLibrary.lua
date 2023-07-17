---Blueprint library for creating/editing Materials
---@class UMaterialEditingLibrary : UBlueprintFunctionLibrary
local UMaterialEditingLibrary = {}

---Called after making modifications to a Material Instance to recompile shaders etc.
---@param Instance UMaterialInstanceConstant
function UMaterialEditingLibrary.UpdateMaterialInstance(Instance) end

---Update a Material Function after edits have been made.
---Will recompile any Materials that use the supplied Material Function.
---@param MaterialFunction UMaterialFunctionInterface
---@param PreviewMaterial UMaterial @[opt] 
function UMaterialEditingLibrary.UpdateMaterialFunction(MaterialFunction, PreviewMaterial) end

---Enable a particular usage for the supplied material (e.g. SkeletalMesh, ParticleSprite etc)
---@param Material UMaterial
---@param Usage integer
---@param bNeedsRecompile boolean @[out] 
---@return boolean
function UMaterialEditingLibrary.SetMaterialUsage(Material, Usage, bNeedsRecompile) end

---Set the vector parameter value for a Material Instance
---@param Instance UMaterialInstanceConstant
---@param ParameterName string
---@param Value FLinearColor
---@return boolean
function UMaterialEditingLibrary.SetMaterialInstanceVectorParameterValue(Instance, ParameterName, Value) end

---Set the texture parameter value for a Material Instance
---@param Instance UMaterialInstanceConstant
---@param ParameterName string
---@param Value UTexture
---@return boolean
function UMaterialEditingLibrary.SetMaterialInstanceTextureParameterValue(Instance, ParameterName, Value) end

---Set the scalar (float) parameter value for a Material Instance
---@param Instance UMaterialInstanceConstant
---@param ParameterName string
---@param Value number
---@return boolean
function UMaterialEditingLibrary.SetMaterialInstanceScalarParameterValue(Instance, ParameterName, Value) end

---Set the parent Material or Material Instance to use for this Material Instance
---@param Instance UMaterialInstanceConstant
---@param NewParent UMaterialInterface
function UMaterialEditingLibrary.SetMaterialInstanceParent(Instance, NewParent) end

---Trigger a recompile of a material. Must be performed after making changes to the graph to have changes reflected.
---@param Material UMaterial
function UMaterialEditingLibrary.RecompileMaterial(Material) end

---Layouts the expressions in a grid pattern
---@param MaterialFunction UMaterialFunction
function UMaterialEditingLibrary.LayoutMaterialFunctionExpressions(MaterialFunction) end

---Layouts the expressions in a grid pattern
---@param Material UMaterial
function UMaterialEditingLibrary.LayoutMaterialExpressions(Material) end

---Check if a particular usage is enabled for the supplied material (e.g. SkeletalMesh, ParticleSprite etc)
---@param Material UMaterial
---@param Usage integer
---@return boolean
function UMaterialEditingLibrary.HasMaterialUsage(Material, Usage) end

---Returns the path of the asset where the parameter originated, as well as true/false if it was found
---@param Material UMaterialInterface
---@param ParameterName string
---@param ParameterSource FSoftObjectPath @[out] 
---@return boolean
function UMaterialEditingLibrary.GetVectorParameterSource(Material, ParameterName, ParameterSource) end

---Gets all vector parameter names
---@param Material UMaterialInterface
---@param ParameterNames TArray_string_ @[out] 
function UMaterialEditingLibrary.GetVectorParameterNames(Material, ParameterNames) end

---Get the list of textures used by a material
---@param Material UMaterial
---@return TArray_UTexture_
function UMaterialEditingLibrary.GetUsedTextures(Material) end

---Returns the path of the asset where the parameter originated, as well as true/false if it was found
---@param Material UMaterialInterface
---@param ParameterName string
---@param ParameterSource FSoftObjectPath @[out] 
---@return boolean
function UMaterialEditingLibrary.GetTextureParameterSource(Material, ParameterName, ParameterSource) end

---Gets all texture parameter names
---@param Material UMaterialInterface
---@param ParameterNames TArray_string_ @[out] 
function UMaterialEditingLibrary.GetTextureParameterNames(Material, ParameterNames) end

---Returns statistics about the given material
---@param Material UMaterialInterface
---@return FMaterialStatistics
function UMaterialEditingLibrary.GetStatistics(Material) end

---Returns the path of the asset where the parameter originated, as well as true/false if it was found
---@param Material UMaterialInterface
---@param ParameterName string
---@param ParameterSource FSoftObjectPath @[out] 
---@return boolean
function UMaterialEditingLibrary.GetStaticSwitchParameterSource(Material, ParameterName, ParameterSource) end

---Gets all static switch parameter names
---@param Material UMaterialInterface
---@param ParameterNames TArray_string_ @[out] 
function UMaterialEditingLibrary.GetStaticSwitchParameterNames(Material, ParameterNames) end

---Returns the path of the asset where the parameter originated, as well as true/false if it was found
---@param Material UMaterialInterface
---@param ParameterName string
---@param ParameterSource FSoftObjectPath @[out] 
---@return boolean
function UMaterialEditingLibrary.GetScalarParameterSource(Material, ParameterName, ParameterSource) end

---Gets all scalar parameter names
---@param Material UMaterialInterface
---@param ParameterNames TArray_string_ @[out] 
function UMaterialEditingLibrary.GetScalarParameterNames(Material, ParameterNames) end

---Returns number of material expressions in the supplied material
---@param MaterialFunction UMaterialFunction
---@return integer
function UMaterialEditingLibrary.GetNumMaterialExpressionsInFunction(MaterialFunction) end

---Returns number of material expressions in the supplied material
---@param Material UMaterial
---@return integer
function UMaterialEditingLibrary.GetNumMaterialExpressions(Material) end

---Get the set of selected nodes from an active material editor
---@param Material UMaterial
---@return TSet_UObject_
function UMaterialEditingLibrary.GetMaterialSelectedNodes(Material) end

---Get the node providing the output for a given material property from an active material editor
---@param Material UMaterial
---@param Property integer
---@return UMaterialExpression
function UMaterialEditingLibrary.GetMaterialPropertyInputNode(Material, Property) end

---Get the current vector parameter value from a Material Instance
---@param Instance UMaterialInstanceConstant
---@param ParameterName string
---@return FLinearColor
function UMaterialEditingLibrary.GetMaterialInstanceVectorParameterValue(Instance, ParameterName) end

---Get the current texture parameter value from a Material Instance
---@param Instance UMaterialInstanceConstant
---@param ParameterName string
---@return UTexture
function UMaterialEditingLibrary.GetMaterialInstanceTextureParameterValue(Instance, ParameterName) end

---Get the current static switch parameter value from a Material Instance
---@param Instance UMaterialInstanceConstant
---@param ParameterName string
---@return boolean
function UMaterialEditingLibrary.GetMaterialInstanceStaticSwitchParameterValue(Instance, ParameterName) end

---Get the current scalar (float) parameter value from a Material Instance
---@param Instance UMaterialInstanceConstant
---@param ParameterName string
---@return number
function UMaterialEditingLibrary.GetMaterialInstanceScalarParameterValue(Instance, ParameterName) end

---Get the default vector parameter value from a Material
---@param Material UMaterial
---@param ParameterName string
---@return FLinearColor
function UMaterialEditingLibrary.GetMaterialDefaultVectorParameterValue(Material, ParameterName) end

---Get the default texture parameter value from a Material
---@param Material UMaterial
---@param ParameterName string
---@return UTexture
function UMaterialEditingLibrary.GetMaterialDefaultTextureParameterValue(Material, ParameterName) end

---Get the default static switch parameter value from a Material
---@param Material UMaterial
---@param ParameterName string
---@return boolean
function UMaterialEditingLibrary.GetMaterialDefaultStaticSwitchParameterValue(Material, ParameterName) end

---Get the default scalar (float) parameter value from a Material
---@param Material UMaterial
---@param ParameterName string
---@return number
function UMaterialEditingLibrary.GetMaterialDefaultScalarParameterValue(Material, ParameterName) end

---Get the set of nodes acting as inputs to a node from an active material editor
---@param Material UMaterial
---@param MaterialExpression UMaterialExpression
---@return TArray_UMaterialExpression_
function UMaterialEditingLibrary.GetInputsForMaterialExpression(Material, MaterialExpression) end

---Gets all direct child mat instances
---@param Parent UMaterialInterface
---@param ChildInstances TArray_FAssetData_ @[out] 
function UMaterialEditingLibrary.GetChildInstances(Parent, ChildInstances) end

---Delete a specific expression from a material function. Will disconnect from other expressions.
---@param MaterialFunction UMaterialFunction
---@param Expression UMaterialExpression
function UMaterialEditingLibrary.DeleteMaterialExpressionInFunction(MaterialFunction, Expression) end

---Delete a specific expression from a material. Will disconnect from other expressions.
---@param Material UMaterial
---@param Expression UMaterialExpression
function UMaterialEditingLibrary.DeleteMaterialExpression(Material, Expression) end

---Delete all material expressions in the supplied material function
---@param MaterialFunction UMaterialFunction
function UMaterialEditingLibrary.DeleteAllMaterialExpressionsInFunction(MaterialFunction) end

---Delete all material expressions in the supplied material
---@param Material UMaterial
function UMaterialEditingLibrary.DeleteAllMaterialExpressions(Material) end

---Create a new material expression node within the supplied material function
---@param MaterialFunction UMaterialFunction
---@param ExpressionClass TSubclassOf_UMaterialExpression_
---@param NodePosX integer @[opt] 
---@param NodePosY integer @[opt] 
---@return UMaterialExpression
function UMaterialEditingLibrary.CreateMaterialExpressionInFunction(MaterialFunction, ExpressionClass, NodePosX, NodePosY) end

---Create a new material expression node within the supplied material
---@param Material UMaterial
---@param ExpressionClass TSubclassOf_UMaterialExpression_
---@param NodePosX integer @[opt] 
---@param NodePosY integer @[opt] 
---@return UMaterialExpression
function UMaterialEditingLibrary.CreateMaterialExpression(Material, ExpressionClass, NodePosX, NodePosY) end

---Connect a material expression output to one of the material property inputs (e.g. diffuse color, opacity etc)
---@param FromExpression UMaterialExpression
---@param FromOutputName string
---@param Property integer
---@return boolean
function UMaterialEditingLibrary.ConnectMaterialProperty(FromExpression, FromOutputName, Property) end

---Create connection between two material expressions
---@param FromExpression UMaterialExpression
---@param FromOutputName string
---@param ToExpression UMaterialExpression
---@param ToInputName string
---@return boolean
function UMaterialEditingLibrary.ConnectMaterialExpressions(FromExpression, FromOutputName, ToExpression, ToInputName) end

---Clears all material parameters set by this Material Instance
---@param Instance UMaterialInstanceConstant
function UMaterialEditingLibrary.ClearAllMaterialInstanceParameters(Instance) end

