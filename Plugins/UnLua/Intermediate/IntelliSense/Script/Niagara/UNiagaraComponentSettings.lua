---@class UNiagaraComponentSettings : UObject
---@field public SuppressActivationList TSet<string>
---@field public ForceAutoPooolingList TSet<string>
---@field public SuppressEmitterList TSet<FNiagaraEmitterNameSettingsRef> @Config file to tweak individual emitters being disabled. Syntax is as follows for the config file: [/Script/Niagara.NiagaraComponentSettings] SuppressEmitterList=((SystemName="BasicSpriteSystem",EmitterName="BasicSprite001"))
local UNiagaraComponentSettings = {}

