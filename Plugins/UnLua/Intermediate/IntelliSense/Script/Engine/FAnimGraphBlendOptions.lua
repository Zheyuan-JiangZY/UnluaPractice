---Blending options for animation graphs in Linked Animation Blueprints.
---@class FAnimGraphBlendOptions
---@field public BlendInTime number @Time to blend this graph in using Inertialization. Specify -1.0 to defer to the BlendOutTime of the previous graph. To blend this graph in you must place an Inertialization node after the Linked Anim Graph node or Linked Anim Layer node that uses this graph.
---@field public BlendOutTime number @Time to blend this graph out using Inertialization. Specify -1.0 to defer to the BlendInTime of the next graph. To blend this graph out you must place an Inertialization node after the Linked Anim Graph node or Linked Anim Layer node that uses this graph.
local FAnimGraphBlendOptions = {}
