---@class BP_Pickup_C : AActor
---@field public Sphere USphereComponent
---@field public StaticMesh UStaticMeshComponent
---@field public DefaultSceneRoot USceneComponent
---@field public PickUp MulticastDelegate
local BP_Pickup_C = {}

---return a Lua file path which is relative to project's 'Content/Script', for example 'Weapon.BP_DefaultProjectile_C'
---@return string
function BP_Pickup_C:GetModuleName() end

function BP_Pickup_C:PickUp__DelegateSignature() end

