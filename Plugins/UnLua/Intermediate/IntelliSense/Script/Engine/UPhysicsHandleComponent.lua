---Utility object for moving physics objects around.
---@class UPhysicsHandleComponent : UActorComponent
---@field public GrabbedComponent UPrimitiveComponent @Component we are currently holding
---@field public bSoftAngularConstraint boolean
---@field public bSoftLinearConstraint boolean
---@field public bInterpolateTarget boolean
---@field public LinearDamping number @Linear damping of the handle spring.
---@field public LinearStiffness number @Linear stiffness of the handle spring
---@field public AngularDamping number @Angular damping of the handle spring
---@field public AngularStiffness number @Angular stiffness of the handle spring
---@field public InterpolationSpeed number @How quickly we interpolate the physics target transform
local UPhysicsHandleComponent = {}

---Set the target rotation
---@param NewRotation FRotator
function UPhysicsHandleComponent:SetTargetRotation(NewRotation) end

---Set target location and rotation
---@param NewLocation FVector
---@param NewRotation FRotator
function UPhysicsHandleComponent:SetTargetLocationAndRotation(NewLocation, NewRotation) end

---Set the target location
---@param NewLocation FVector
function UPhysicsHandleComponent:SetTargetLocation(NewLocation) end

---Set linear stiffness
---@param NewLinearStiffness number
function UPhysicsHandleComponent:SetLinearStiffness(NewLinearStiffness) end

---Set linear damping
---@param NewLinearDamping number
function UPhysicsHandleComponent:SetLinearDamping(NewLinearDamping) end

---Set interpolation speed
---@param NewInterpolationSpeed number
function UPhysicsHandleComponent:SetInterpolationSpeed(NewInterpolationSpeed) end

---Set angular stiffness
---@param NewAngularStiffness number
function UPhysicsHandleComponent:SetAngularStiffness(NewAngularStiffness) end

---Set angular damping
---@param NewAngularDamping number
function UPhysicsHandleComponent:SetAngularDamping(NewAngularDamping) end

---Release the currently held component
function UPhysicsHandleComponent:ReleaseComponent() end

---Grab the specified component at a given location and rotation. Constrains rotation.
---@param Component UPrimitiveComponent
---@param InBoneName string
---@param Location FVector
---@param Rotation FRotator
function UPhysicsHandleComponent:GrabComponentAtLocationWithRotation(Component, InBoneName, Location, Rotation) end

---Grab the specified component at a given location. Does NOT constraint rotation which means the handle will pivot about GrabLocation.
---@param Component UPrimitiveComponent
---@param InBoneName string
---@param GrabLocation FVector
function UPhysicsHandleComponent:GrabComponentAtLocation(Component, InBoneName, GrabLocation) end

---@param Component UPrimitiveComponent
---@param InBoneName string
---@param GrabLocation FVector
---@param bConstrainRotation boolean
function UPhysicsHandleComponent:GrabComponent(Component, InBoneName, GrabLocation, bConstrainRotation) end

---Get the current location and rotation
---@param TargetLocation FVector @[out] 
---@param TargetRotation FRotator @[out] 
function UPhysicsHandleComponent:GetTargetLocationAndRotation(TargetLocation, TargetRotation) end

---Returns the currently grabbed component, or null if nothing is grabbed.
---@return UPrimitiveComponent
function UPhysicsHandleComponent:GetGrabbedComponent() end

