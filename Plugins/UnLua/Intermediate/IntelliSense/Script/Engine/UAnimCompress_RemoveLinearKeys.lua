---@class UAnimCompress_RemoveLinearKeys : UAnimCompress
---@field public MaxPosDiff number @Maximum position difference to use when testing if an animation key may be removed. Lower values retain more keys, but yield less compression.
---@field public MaxAngleDiff number @Maximum angle difference to use when testing if an animation key may be removed. Lower values retain more keys, but yield less compression.
---@field public MaxScaleDiff number @Maximum Scale difference to use when testing if an animation key may be removed. Lower values retain more keys, but yield less compression.
---@field public MaxEffectorDiff number @As keys are tested for removal, we monitor the effects all the way down to the end effectors. If their position changes by more than this amount as a result of removing a key, the key will be retained. This value is used for all bones except the end-effectors parent.
---@field public MinEffectorDiff number @As keys are tested for removal, we monitor the effects all the way down to the end effectors. If their position changes by more than this amount as a result of removing a key, the key will be retained. This value is used for the end-effectors parent, allowing tighter restrictions near the end of a skeletal chain.
---@field public EffectorDiffSocket number @Error threshold for End Effectors with Sockets attached to them. Typically more important bone, where we want to be less aggressive with compression.
---@field public ParentKeyScale number @A scale value which increases the likelihood that a bone will retain a key if it's parent also had a key at the same time position. Higher values can remove shaking artifacts from the animation, at the cost of compression.
---@field public bRetarget boolean @true = As the animation is compressed, adjust animated nodes to compensate for compression error. false= Do not adjust animated nodes.
---@field public bActuallyFilterLinearKeys boolean @Controls whether the final filtering step will occur, or only the retargetting after bitwise compression. If both this and bRetarget are false, then the linear compressor will do no better than the underlying bitwise compressor, extremely slowly.
local UAnimCompress_RemoveLinearKeys = {}

