---Helper for reseting/reinitializing Niagara systems currently active when they are being edited.
---Can be used inside a scope with Systems being reinitialized on destruction or you can store the context and use CommitUpdate() to trigger reinitialization.
---For example, this can be split between PreEditChange and PostEditChange to ensure problematic data is not modified during execution of a system.
---This can be made a UPROPERTY() to ensure safey in cases where a GC could be possible between Add() and CommitUpdate().
---@class FNiagaraSystemUpdateContext
---@field private ComponentsToReset TArray<UNiagaraComponent>
---@field private ComponentsToReInit TArray<UNiagaraComponent>
---@field private ComponentsToNotifySimDestroy TArray<UNiagaraComponent>
---@field private SystemSimsToDestroy TArray<UNiagaraSystem>
local FNiagaraSystemUpdateContext = {}
