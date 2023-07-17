---A C++ and Blueprint accessible library of utility functions for accessing Niagara simulations
---All positions & orientations are returned in Unreal reference frame & units, assuming the Leap device is located at the origin.
---@class UNiagaraFunctionLibrary : UBlueprintFunctionLibrary
local UNiagaraFunctionLibrary = {}

---@param SystemTemplate UNiagaraSystem
---@param AttachToComponent USceneComponent
---@param AttachPointName string
---@param Location FVector
---@param Rotation FRotator
---@param LocationType integer
---@param bAutoDestroy boolean
---@param bAutoActivate boolean @[opt] 
---@param PoolingMethod ENCPoolMethod @[opt] 
---@param bPreCullCheck boolean @[opt] 
---@return UNiagaraComponent
function UNiagaraFunctionLibrary.SpawnSystemAttached(SystemTemplate, AttachToComponent, AttachPointName, Location, Rotation, LocationType, bAutoDestroy, bAutoActivate, PoolingMethod, bPreCullCheck) end

---Spawns a Niagara System at the specified world location/rotation
---@param WorldContextObject UObject
---@param SystemTemplate UNiagaraSystem
---@param Location FVector
---@param Rotation FRotator
---@param Scale FVector @[opt] 
---@param bAutoDestroy boolean @[opt] 
---@param bAutoActivate boolean @[opt] 
---@param PoolingMethod ENCPoolMethod @[opt] 
---@param bPreCullCheck boolean @[opt] 
---@return UNiagaraComponent
function UNiagaraFunctionLibrary.SpawnSystemAtLocation(WorldContextObject, SystemTemplate, Location, Rotation, Scale, bAutoDestroy, bAutoActivate, PoolingMethod, bPreCullCheck) end

---Overrides the Volume Texture for a Niagara Volume Texture Data Interface User Parameter.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param Texture UVolumeTexture
function UNiagaraFunctionLibrary.SetVolumeTextureObject(NiagaraSystem, OverrideName, Texture) end

---Overrides the Texture Object for a Niagara Texture Data Interface User Parameter.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param Texture UTexture
function UNiagaraFunctionLibrary.SetTextureObject(NiagaraSystem, OverrideName, Texture) end

---Overrides the 2D Array Texture for a Niagara 2D Array Texture Data Interface User Parameter.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param Texture UTexture2DArray
function UNiagaraFunctionLibrary.SetTexture2DArrayObject(NiagaraSystem, OverrideName, Texture) end

---Sets the SamplingRegion to use on the skeletal mesh data interface, this is destructive as it modifies the data interface.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param SamplingRegions TArray_string_
function UNiagaraFunctionLibrary.SetSkeletalMeshDataInterfaceSamplingRegions(NiagaraSystem, OverrideName, SamplingRegions) end

---Sets a Niagara StaticMesh parameter by name, overriding locally if necessary.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param StaticMeshComponent UStaticMeshComponent
function UNiagaraFunctionLibrary.OverrideSystemUserVariableStaticMeshComponent(NiagaraSystem, OverrideName, StaticMeshComponent) end

---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param StaticMesh UStaticMesh
function UNiagaraFunctionLibrary.OverrideSystemUserVariableStaticMesh(NiagaraSystem, OverrideName, StaticMesh) end

---Sets a Niagara StaticMesh parameter by name, overriding locally if necessary.
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName string
---@param SkeletalMeshComponent USkeletalMeshComponent
function UNiagaraFunctionLibrary.OverrideSystemUserVariableSkeletalMeshComponent(NiagaraSystem, OverrideName, SkeletalMeshComponent) end

---This is gonna be totally reworked
---       UFUNCTION(BlueprintCallable, Category = Niagara, meta = (Keywords = "niagara System", UnsafeDuringActorConstruction = "true"))
---       static void SetUpdateScriptConstant(UNiagaraComponent* Component, FName EmitterName, FName ConstantName, FVector Value);
---@param WorldContextObject UObject
---@param Collection UNiagaraParameterCollection
---@return UNiagaraParameterCollectionInstance
function UNiagaraFunctionLibrary.GetNiagaraParameterCollection(WorldContextObject, Collection) end

