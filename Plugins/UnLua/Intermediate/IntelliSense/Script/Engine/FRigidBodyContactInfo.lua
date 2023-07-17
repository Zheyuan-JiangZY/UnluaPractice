---Information about one contact between a pair of rigid bodies.
---@class FRigidBodyContactInfo
---@field public ContactPosition FVector @Position of contact, where two shapes intersect
---@field public ContactNormal FVector @Normal of contact, points from second shape towards first shape
---@field public ContactPenetration number @How far the two shapes penetrated into each other
---@field public PhysMaterial UPhysicalMaterial @The physical material of the two shapes involved in a contact
local FRigidBodyContactInfo = {}
