---@class BP_BossDied_C : AActor
---@field public Box UBoxComponent
---@field public DefaultSceneRoot USceneComponent
---@field public OpenDoor MulticastDelegate
---@field public CloseDoor MulticastDelegate
local BP_BossDied_C = {}

---return a Lua file path which is relative to project's 'Content/Script', for example 'Weapon.BP_DefaultProjectile_C'
---@return string
function BP_BossDied_C:GetModuleName() end

function BP_BossDied_C:CloseDoor__DelegateSignature() end

function BP_BossDied_C:OpenDoor__DelegateSignature() end

