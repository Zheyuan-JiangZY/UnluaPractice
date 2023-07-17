---@class BP_DecalTestPOM_C : AActor
---@field public UberGraphFrame FPointerToUberGraphFrame
---@field public Decal UDecalComponent
---@field public DefaultSceneRoot USceneComponent
---@field public PreviousRotation FRotator
---@field public Decal_MD UMaterialInstanceDynamic
---@field public DecalMaterialInstance UMaterialInstance
local BP_DecalTestPOM_C = {}

function BP_DecalTestPOM_C:AssignNewDecalMaterial() end

---@param Force boolean
function BP_DecalTestPOM_C:UpdateDynamicDecalMaterial(Force) end

---Construction script, the place to spawn components and do other setup.
function BP_DecalTestPOM_C:UserConstructionScript() end

---Event when play begins for this actor.
function BP_DecalTestPOM_C:ReceiveBeginPlay() end

